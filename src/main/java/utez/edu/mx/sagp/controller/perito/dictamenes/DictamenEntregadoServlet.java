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

/** GET /perito/dictamen-entregado?id=5 da el comprobante de la entrega (ya bloqueada). */
@WebServlet("/perito/dictamen-entregado")
public class DictamenEntregadoServlet extends HttpServlet {
    private final DictamenService dictamenService = new DictamenService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int idPerito = SesionPerito.obtenerIdPerito(request);
        try {
            Dictamen dictamen = dictamenService.obtenerDictamen(idPerito, Integer.parseInt(request.getParameter("id")));
            request.setAttribute("dictamen", dictamen);
            request.setAttribute("caso", dictamenService.obtenerCaso(idPerito, dictamen.getIdSolicitud()));
            request.getRequestDispatcher("/WEB-INF/vistas/perito/dictamen-entregado.jsp").forward(request, response);
        } catch (IllegalArgumentException e) { // también atrapa NumberFormatException
            response.sendRedirect(request.getContextPath() + "/perito/asignaciones");
        }
    }
}
