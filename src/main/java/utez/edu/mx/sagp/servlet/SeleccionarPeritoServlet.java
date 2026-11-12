package utez.edu.mx.sagp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

// Esta anotación define la URL con la que entrarás desde el navegador
@WebServlet("/seleccionar-perito")
public class SeleccionarPeritoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Redirige a tu archivo JSP.
        // IMPORTANTE: Asegúrate de que la ruta y el nombre del .jsp coincidan con donde lo guardaste.
        // Si lo guardaste en webapp directo (igual que solicitudes.jsp), pon "/nombreDeTuArchivo.jsp"
        // Si lo guardaste dentro de WEB-INF/vistas/, pon "/WEB-INF/vistas/nombreDeTuArchivo.jsp"
        request.getRequestDispatcher("/WEB-INF/vistas/seleccionar_perito.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Aquí recibirás los datos cuando presionen el botón "Confirmar asignación manual"
        String peritoSeleccionado = request.getParameter("perito");

        // TODO: Llamar a tu Service para guardar la asignación en la BD

        // Al terminar, redirige de vuelta a solicitudes
        response.sendRedirect(request.getContextPath() + "/solicitudes");
    }
}