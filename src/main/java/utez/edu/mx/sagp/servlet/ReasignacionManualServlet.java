package utez.edu.mx.sagp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ReasignacionManualServlet", urlPatterns = {"/reasignacion-manual"})
public class ReasignacionManualServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/vistas/reasignacion_manual.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String solicitudId = request.getParameter("solicitudId");
        String perito = request.getParameter("perito");
        String motivo = request.getParameter("motivo");

        if (perito == null || perito.isBlank() || motivo == null || motivo.isBlank()) {
            request.setAttribute("error", "Debes seleccionar un perito e indicar el motivo de reasignación.");
            request.getRequestDispatcher("/WEB-INF/vistas/reasignacion_manual.jsp").forward(request, response);
            return;
        }

        // Aquí irá el registro en base de datos conservando el historial
        response.sendRedirect(request.getContextPath() + "/solicitudes");
    }
}