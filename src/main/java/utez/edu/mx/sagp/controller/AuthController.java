package utez.edu.mx.sagp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(urlPatterns = {
        "/login",
        "/recuperar",
        "/correo-enviado",
        "/restablecer",
        "/bloqueado"
})
public class AuthController extends HttpServlet {

    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws ServletException, IOException {

        String ruta = request.getServletPath();
        String vista;

        if ("/recuperar".equals(ruta)) {
            vista = "/WEB-INF/vistas/auth/recuperar.jsp";
        } else if ("/correo-enviado".equals(ruta)) {
            vista = "/WEB-INF/vistas/auth/correo-enviado.jsp";
        } else if ("/restablecer".equals(ruta)) {
            vista = "/WEB-INF/vistas/auth/restablecer.jsp";
        } else if ("/bloqueado".equals(ruta)) {
            vista = "/WEB-INF/vistas/auth/bloqueado.jsp";
        } else {
            vista = "/WEB-INF/vistas/auth/login.jsp";
        }

        request.getRequestDispatcher(vista).forward(request, response);
    }
}