package utez.edu.mx.sagp.service;

import utez.edu.mx.sagp.dao.SolicitudDao;
import utez.edu.mx.sagp.model.Solicitud;
import java.util.List;

public class SolicitudService {
    private SolicitudDao dao = new SolicitudDao();

    public List<Solicitud> obtenerSolicitudes() {
        return dao.findAll();
    }
}