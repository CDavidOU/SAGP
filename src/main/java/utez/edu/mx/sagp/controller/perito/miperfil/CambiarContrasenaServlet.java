package utez.edu.mx.sagp.controller.perito.miperfil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import utez.edu.mx.sagp.service.perito.miperfil.PerfilService;
import utez.edu.mx.sagp.utils.SesionPerito;

import java.io.IOException;

/**
 * GET  /cambiarcontrasena formulario.
 * POST /cambiarcontrasena valida y cambia la contraseña.
 */
@WebServlet(name = "cambiarContrasena", value = "/cambiarcontrasena")
public class CambiarContrasenaServlet extends HttpServlet {
    private final PerfilService perfilService = new PerfilService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/vistas/perito/CambiarContrasena.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        try {
            perfilService.cambiarContrasena(SesionPerito.obtenerIdPerito(req),
                    req.getParameter("actual"), req.getParameter("nueva"), req.getParameter("confirmaNueva"));
            resp.sendRedirect(req.getContextPath() + "/contrasenaActualizada");
        } catch (IllegalArgumentException e) {
            req.setAttribute("error", e.getMessage()); // las contraseñas NO se regresan al formulario
            doGet(req, resp);
        }
    }
}
