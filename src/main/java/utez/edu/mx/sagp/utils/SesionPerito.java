package utez.edu.mx.sagp.utils;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

/**
 * Obtiene el id del perito que inició sesión.
 * TEMPORAL: mientras el login no guarde "idPerito" en la sesión, se usa el perito 1.
 * Cuando el login esté listo, solo se quita el valor por defecto.
 */
public final class SesionPerito {
    public static final String ATRIBUTO = "idPerito";
    private static final int PERITO_DE_PRUEBA = 1;

    private SesionPerito() {

    }
    public static int obtenerIdPerito(HttpServletRequest request) {
        HttpSession sesion = request.getSession(false);
        if (sesion != null && sesion.getAttribute(ATRIBUTO) instanceof Integer id) {
            return id;
        }
        return PERITO_DE_PRUEBA;
    }
}

