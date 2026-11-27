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
 * GET  /perfil muestra los datos del perito.
 * POST /perfil guarda correo y teléfono.
 */
@WebServlet(name = "perfil", value = "/perfil")
public class PerfilServlet extends HttpServlet {
    private final PerfilService perfilService = new PerfilService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("perfil", perfilService.obtenerPerfil(SesionPerito.obtenerIdPerito(req)));
        req.getRequestDispatcher("/WEB-INF/vistas/perito/mi-perfil.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        int idPerito = SesionPerito.obtenerIdPerito(req);
        String correo = req.getParameter("correo");
        String telefono = req.getParameter("telefono");
        try {
            perfilService.actualizarContacto(idPerito, correo, telefono);
            resp.sendRedirect(req.getContextPath() + "/actualizadoCorrectamente");
        } catch (IllegalArgumentException e) {

            // Se regresa al formulario con el mensaje y con lo que el usuario escribio
            req.setAttribute("error", e.getMessage());
            req.setAttribute("correoEscrito", correo);
            req.setAttribute("telefonoEscrito", telefono);
            doGet(req, resp);
        }
    }
}
