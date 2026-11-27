package utez.edu.mx.sagp.controller.perito.dictamenes;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import utez.edu.mx.sagp.model.Dictamen;
import utez.edu.mx.sagp.service.perito.dictamenes.DictamenService;
import utez.edu.mx.sagp.utils.SesionPerito;

import java.io.IOException;

/**
 * GET /vista-dictamen?id=5 -> muestra ese dictamen.
 * GET /vista-dictamen (opción "Dictámenes" del menú) muestra el más reciente.
 */
@WebServlet(name = "VistaDictamen", urlPatterns = {"/vista-dictamen"})
public class VistaDictamen extends HttpServlet {
    private final DictamenService dictamenService = new DictamenService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int idPerito = SesionPerito.obtenerIdPerito(request);
        Dictamen dictamen;
        try {
            String id = request.getParameter("id");
            dictamen = (id == null || id.isBlank())
                    ? dictamenService.obtenerUltimoDictamen(idPerito)
                    : dictamenService.obtenerDictamen(idPerito, Integer.parseInt(id));
        } catch (IllegalArgumentException e) {
            dictamen = null;
        }

        if (dictamen != null) {
            request.setAttribute("dictamen", dictamen);
            request.setAttribute("caso", dictamenService.obtenerCaso(idPerito, dictamen.getIdSolicitud()));
            request.setAttribute("archivoDisponible", dictamenService.obtenerArchivo(dictamen) != null);
        }
        request.getRequestDispatcher("/WEB-INF/vistas/perito/Dictamen/VistaDictamen.jsp").forward(request, response);
    }
}