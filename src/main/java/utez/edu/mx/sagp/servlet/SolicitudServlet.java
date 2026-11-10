package utez.edu.mx.sagp.servlet;

import utez.edu.mx.sagp.model.Solicitud;
import utez.edu.mx.sagp.service.SolicitudService;

// Se cambian las importaciones de javax.* a jakarta.*
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/solicitudes")
public class SolicitudServlet extends HttpServlet {
    private SolicitudService service = new SolicitudService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Obtiene datos del Service
        List<Solicitud> solicitudes = service.obtenerSolicitudes();

        // 2. Adjunta los datos a la petición
        request.setAttribute("listaSolicitudes", solicitudes);

        // 3. Redirige a la vista JSP
        request.getRequestDispatcher("/solicitudes.jsp").forward(request, response);
    }
}