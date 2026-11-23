package utez.edu.mx.sagp.controller.admin.tema;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet (name="identidadActualizada", value = "/indentidadActualizada")
public class IdentidadActualizadaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher(
                "/WEB-INF/vistas/admin/Tema/IdentidadActualizada.jsp"
        ).forward(req, resp);
    }
}
