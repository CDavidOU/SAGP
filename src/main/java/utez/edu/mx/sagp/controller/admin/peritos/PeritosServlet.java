package utez.edu.mx.sagp.controller.admin.peritos;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import utez.edu.mx.sagp.model.peritos.Perito;
import utez.edu.mx.sagp.service.peritos.PeritoService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "PeritosServlet", urlPatterns = {"/admin/peritos"})
public class PeritosServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private final PeritoService peritoService = new PeritoService();

    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws ServletException, IOException {

        String busqueda = request.getParameter("buscar");

        List<Perito> peritos;

        if (busqueda != null && !busqueda.trim().isEmpty()) {
            peritos = peritoService.buscarPorNombre(busqueda);
        } else {
            peritos = peritoService.obtenerTodos();
        }

        request.setAttribute("peritos", peritos);
        request.setAttribute("busqueda", busqueda);

        request.getRequestDispatcher(
                "/WEB-INF/vistas/admin/peritos/gestion.jsp"
        ).forward(request, response);
    }
}
