package utez.edu.mx.sagp.controller.admin.asignacionmanual;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SeleccionarPerito", urlPatterns = {"/Seleccionar-Perito"})
public class SeleccionarPerito extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/vistas/admin/asignacion/SeleccionarPerito.jsp").forward(request, response);
    }
}