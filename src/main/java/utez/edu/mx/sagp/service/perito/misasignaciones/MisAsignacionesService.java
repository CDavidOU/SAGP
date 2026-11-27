package utez.edu.mx.sagp.service.perito.misasignaciones;

import utez.edu.mx.sagp.dao.perito.dictamenes.DictamenDao;
import utez.edu.mx.sagp.dao.perito.misasignaciones.MisAsignacionesDao;
import utez.edu.mx.sagp.model.perito.AsignacionPerito;

import java.util.ArrayList;
import java.util.List;

/**
 * un peritaje está "en proceso" mientras su asignación esté activa
 * y todavía no tenga dictamen entregado.
 */
public class MisAsignacionesService {
    private final MisAsignacionesDao asignacionesDao = new MisAsignacionesDao();
    private final DictamenDao dictamenDao = new DictamenDao();

    public List<AsignacionPerito> listarEnProceso(int idPerito) {
        validarId(idPerito);
        List<AsignacionPerito> enProceso = new ArrayList<>();
        for (AsignacionPerito a : asignacionesDao.findByPerito(idPerito)) {
            if (dictamenDao.findBySolicitudYPerito(a.getIdSolicitud(), idPerito) == null) {
                enProceso.add(a);
            }
        }
        return enProceso;
    }

    public int contarEnProceso(int idPerito) {
        return listarEnProceso(idPerito).size();
    }

    public int contarDictamenesEntregados(int idPerito) {
        validarId(idPerito);
        return dictamenDao.countByPerito(idPerito);
    }

    private void validarId(int id) {
        if (id <= 0) throw new IllegalArgumentException("Identificador de perito no válido.");
    }
}