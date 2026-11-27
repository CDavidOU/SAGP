package utez.edu.mx.sagp.service.perito.dictamenes;

import utez.edu.mx.sagp.dao.perito.dictamenes.DictamenDao;
import utez.edu.mx.sagp.dao.perito.miperfil.PerfilDao;
import utez.edu.mx.sagp.dao.perito.misasignaciones.MisAsignacionesDao;
import utez.edu.mx.sagp.model.Dictamen;
import utez.edu.mx.sagp.model.perito.AsignacionPerito;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

/**
 * Reglas de negocio de la ejecución del peritaje y entrega del dictamen.
 */
public class DictamenService {

    /** Valores de estadoRevision / estado de solicitud. SUPUESTO: acordar los textos con el equipo. */
    public static final String ESTADO_REVISION_ENTREGADO = "Entregado";
    public static final String ESTADO_SOLICITUD_ENTREGADA = "DICTAMEN_ENTREGADO";

    /** Tamaño máximo del PDF. SUPUESTO: 20 MB */
    public static final long TAMANO_MAXIMO = 20L * 1024 * 1024;
    private static final int MAX_OBSERVACIONES = 500;

    /** Carpeta donde se guardan los PDF: <carpeta de usuario>/sagp-archivos/dictamenes*/
    private static final Path CARPETA_DICTAMENES =
            Paths.get(System.getProperty("user.home"), "sagp-archivos", "dictamenes");

    private final DictamenDao dictamenDao = new DictamenDao();
    private final MisAsignacionesDao asignacionesDao = new MisAsignacionesDao();
    private final PerfilDao perfilDao = new PerfilDao();

    /** Devuelve el caso solo si está asignado a ESTE perito (un perito no ve casos ajenos). */
    public AsignacionPerito obtenerCaso(int idPerito, int idSolicitud) {
        if (idPerito <= 0 || idSolicitud <= 0) {
            throw new IllegalArgumentException("Solicitud no válida.");
        }
        AsignacionPerito caso = asignacionesDao.findByPeritoYSolicitud(idPerito, idSolicitud);
        if (caso == null) {
            throw new IllegalArgumentException("La solicitud no existe o no está asignada a usted.");
        }
        return caso;
    }

    public Dictamen buscarDictamenDelCaso(int idPerito, int idSolicitud) {
        return dictamenDao.findBySolicitudYPerito(idSolicitud, idPerito);
    }

    /**
     * Registra la entrega: valida el PDF, lo guarda en disco, inserta el dictamen,
     * cambia el estado de la solicitud y libera una unidad de carga activa del perito.
     * La fecha de término (fechaEntrega) la pone el SISTEMA, no el usuario.
     */
    public Dictamen entregarDictamen(int idPerito, int idSolicitud, String nombreOriginal,
                                     long tamano, InputStream contenido, String observaciones)
            throws IOException {

        AsignacionPerito caso = obtenerCaso(idPerito, idSolicitud);

        // Regla: cada entrega cierra un peritaje, no se puede entregar dos veces.
        if (buscarDictamenDelCaso(idPerito, idSolicitud) != null) {
            throw new IllegalArgumentException(
                    "Este peritaje ya fue entregado. Solo el administrador puede autorizar una corrección.");
        }

        // Validaciones del archivo
        if (contenido == null || tamano <= 0) {
            throw new IllegalArgumentException("Seleccione el dictamen en PDF.");
        }
        if (tamano > TAMANO_MAXIMO) {
            throw new IllegalArgumentException("El PDF supera el tamaño máximo de 20 MB.");
        }
        if (nombreOriginal == null || !nombreOriginal.toLowerCase().endsWith(".pdf")) {
            throw new IllegalArgumentException("Solo se permiten archivos PDF.");
        }
        BufferedInputStream entrada = new BufferedInputStream(contenido);
        if (!empiezaComoPdf(entrada)) {
            throw new IllegalArgumentException("El archivo no es un PDF válido.");
        }

        String obs = observaciones == null ? "" : observaciones.trim();
        if (obs.length() > MAX_OBSERVACIONES) {
            throw new IllegalArgumentException("Las observaciones no pueden pasar de " + MAX_OBSERVACIONES + " caracteres.");
        }

        // Guardar el archivo con un nombre controlado por el sistema (no el del usuario)
        LocalDateTime ahora = LocalDateTime.now().withNano(0);
        String nombreArchivo = "Dictamen_" + caso.getFolio() + "_"
                + ahora.format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss")) + ".pdf";
        Files.createDirectories(CARPETA_DICTAMENES);
        Files.copy(entrada, CARPETA_DICTAMENES.resolve(nombreArchivo), StandardCopyOption.REPLACE_EXISTING);

        Dictamen dictamen = new Dictamen(0, idSolicitud, idPerito, nombreArchivo,
                obs.isEmpty() ? null : obs, ESTADO_REVISION_ENTREGADO, null, ahora, null);
        dictamenDao.save(dictamen);

        // Con MySQL estas tres operaciones deben ir en una transacción (commit/rollback).
        asignacionesDao.updateEstadoSolicitud(idSolicitud, ESTADO_SOLICITUD_ENTREGADA);
        perfilDao.decrementarCargaActiva(idPerito);

        return dictamen;
    }

    /** Un perito solo puede ver sus dictámenes. */
    public Dictamen obtenerDictamen(int idPerito, int idDictamen) {
        Dictamen d = dictamenDao.findById(idDictamen);
        if (d == null || d.getIdPerito() != idPerito) {
            throw new IllegalArgumentException("El dictamen no existe o no le pertenece.");
        }
        return d;
    }

    /** El más reciente, para la opción "Dictámenes" del menú, puede ser null. */
    public Dictamen obtenerUltimoDictamen(int idPerito) {
        List<Dictamen> lista = dictamenDao.findByPerito(idPerito);
        return lista.isEmpty() ? null : lista.get(0);
    }

    /** Ruta física del PDF, o null si el archivo no está en disco */
    public Path obtenerArchivo(Dictamen dictamen) {
        Path ruta = CARPETA_DICTAMENES.resolve(dictamen.getRutaArchivoPdf()).normalize();
        if (!ruta.startsWith(CARPETA_DICTAMENES) || !Files.exists(ruta)) return null;
        return ruta;
    }

    /** Todo PDF real empieza con los bytes "%PDF-". */
    private boolean empiezaComoPdf(BufferedInputStream entrada) throws IOException {
        entrada.mark(5);
        byte[] firma = entrada.readNBytes(5);
        entrada.reset();
        return "%PDF-".equals(new String(firma, StandardCharsets.US_ASCII));
    }
}