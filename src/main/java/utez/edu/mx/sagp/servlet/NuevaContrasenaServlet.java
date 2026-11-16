package utez.edu.mx.sagp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "NuevaContrasenaServlet", urlPatterns = {"/nueva-contraseña"})
public class NuevaContrasenaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/vistas/nueva_contraseña.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String nuevaContrasena = request.getParameter("nuevaContraseña");
        String confirmarContrasena = request.getParameter("confirmarContraseña");

        if (nuevaContrasena == null || nuevaContrasena.isBlank() || !nuevaContrasena.equals(confirmarContrasena)) {
            request.setAttribute("error", "Las contraseñas no coinciden o están vacías.");
            request.getRequestDispatcher("/WEB-INF/vistas/nueva_contrasena.jsp").forward(request, response);
            return;
        }

        // Aquí irá la actualización en la base de datos cuando conecten el DAO
        response.sendRedirect(request.getContextPath() + "/login");
    }
}