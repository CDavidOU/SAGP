package utez.edu.mx.sagp.dao.perito.dictamenes;

import utez.edu.mx.sagp.dao.perito.DatosPrueba;
import utez.edu.mx.sagp.model.Dictamen;

import java.util.ArrayList;
import java.util.List;

/**
 * Acceso a datos de la tabla Dictamenes.
 */
public class DictamenDao {

    /** SELECT * FROM dictamenes WHERE id_dictamen = ? */
    public Dictamen findById(int idDictamen) {
        synchronized (DatosPrueba.DICTAMENES) {
            for (Dictamen d : DatosPrueba.DICTAMENES) {
                if (d.getIdDictamen() == idDictamen) return d;
            }
        }
        return null;
    }

    /** SELECT * FROM dictamenes WHERE id_solicitud = ? AND id_perito = ? */
    public Dictamen findBySolicitudYPerito(int idSolicitud, int idPerito) {
        synchronized (DatosPrueba.DICTAMENES) {
            for (Dictamen d : DatosPrueba.DICTAMENES) {
                if (d.getIdSolicitud() == idSolicitud && d.getIdPerito() == idPerito) return d;
            }
        }
        return null;
    }

    /** SELECT * FROM dictamenes WHERE id_perito = ? ORDER BY fecha_entrega DESC */
    public List<Dictamen> findByPerito(int idPerito) {
        List<Dictamen> resultado = new ArrayList<>();
        synchronized (DatosPrueba.DICTAMENES) {
            for (Dictamen d : DatosPrueba.DICTAMENES) {
                if (d.getIdPerito() == idPerito) resultado.add(d);
            }
        }
        resultado.sort((x, y) -> y.getFechaEntrega().compareTo(x.getFechaEntrega()));
        return resultado;
    }

    /** SELECT COUNT(*) FROM dictamenes WHERE id_perito = ? */
    public int countByPerito(int idPerito) {
        return findByPerito(idPerito).size();
    }

    /**
     * INSERT INTO dictamenes (id_solicitud, id_perito, ruta_archivo_pdf, observaciones_perito,
     *                         estado_revision, fecha_entrega) VALUES (?, ?, ?, ?, ?, ?)
     * Devuelve el id generado (con MySQL: Statement.RETURN_GENERATED_KEYS).
     */
    public int save(Dictamen dictamen) {
        synchronized (DatosPrueba.DICTAMENES) {
            dictamen.setIdDictamen(DatosPrueba.siguienteIdDictamen++);
            DatosPrueba.DICTAMENES.add(dictamen);
            return dictamen.getIdDictamen();
        }
    }
}