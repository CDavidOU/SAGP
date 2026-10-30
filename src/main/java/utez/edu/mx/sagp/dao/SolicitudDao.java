package utez.edu.mx.sagp.dao;

import utez.edu.mx.sagp.model.Solicitud;
import java.util.ArrayList;
import java.util.List;

public class SolicitudDao {

    // Consulta a la base de datos (datos de prueba alineados con tu interfaz)
    public List<Solicitud> findAll() {
        List<Solicitud> lista = new ArrayList<>();
        lista.add(new Solicitud("SOL-2026-0149", "Civil - Temixco", "Civil / Valuación", "29 oct 2026", "Pendiente"));
        lista.add(new Solicitud("SOL-2026-0150", "Familiar - E. Zapata", "Familiar / Trabajo social", "29 oct 2026", "Pendiente"));
        lista.add(new Solicitud("SOL-2026-0151", "Penal - Cuernavaca", "Penal / Criminalística", "28 oct 2026", "Pendiente"));
        return lista;
    }
}