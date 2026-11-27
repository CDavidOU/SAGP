package utez.edu.mx.sagp.dao.perito.misasignaciones;

import utez.edu.mx.sagp.dao.perito.DatosPrueba;
import utez.edu.mx.sagp.model.perito.AsignacionPerito;

import java.util.ArrayList;
import java.util.List;

/**
 * Acceso a datos de las asignaciones del perito.
 */
public class MisAsignacionesDao {

    /*
     * SQL futuro:
     * SELECT a.id_asignacion, a.id_perito, a.fecha_asignacion, a.activa,
     *        s.id_solicitud, s.folio, s.numero_expediente, s.juzgado_origen, s.descripcion_caso,
     *        s.fecha_limite, s.estado, ma.nombre AS materia, e.nombre AS especialidad, mu.nombre AS municipio
     * FROM asignaciones a
     * JOIN solicitudes s   ON s.id_solicitud = a.id_solicitud
     * JOIN especialidades e ON e.id_especialidad = s.id_especialidad
     * JOIN materias ma     ON ma.id_materia = e.id_materia
     * JOIN municipios mu   ON mu.id_municipio = s.id_municipio
     * WHERE a.id_perito = ? AND a.activa = TRUE
     * ORDER BY a.fecha_asignacion DESC;
     */

    public List<AsignacionPerito> findByPerito(int idPerito) {
        List<AsignacionPerito> resultado = new ArrayList<>();
        for (AsignacionPerito a : DatosPrueba.ASIGNACIONES) {
            if (a.getIdPerito() == idPerito && a.isActiva()) {
                resultado.add(a);
            }
        }
        resultado.sort((x, y) -> y.getFechaAsignacion().compareTo(x.getFechaAsignacion()));
        return resultado;
    }

    /** Misma consulta, pero agregando: AND s.id_solicitud = ? */
    public AsignacionPerito findByPeritoYSolicitud(int idPerito, int idSolicitud) {
        for (AsignacionPerito a : DatosPrueba.ASIGNACIONES) {
            if (a.getIdPerito() == idPerito && a.getIdSolicitud() == idSolicitud && a.isActiva()) {
                return a;
            }
        }
        return null;
    }

    /** UPDATE solicitudes SET estado = ? WHERE id_solicitud = ? */
    public boolean updateEstadoSolicitud(int idSolicitud, String estado) {
        boolean cambio = false;
        for (AsignacionPerito a : DatosPrueba.ASIGNACIONES) {
            if (a.getIdSolicitud() == idSolicitud) {
                a.setEstado(estado);
                cambio = true;
            }
        }
        return cambio;
    }
}