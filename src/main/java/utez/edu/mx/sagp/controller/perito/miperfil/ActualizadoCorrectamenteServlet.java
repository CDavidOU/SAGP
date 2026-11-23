package utez.edu.mx.sagp.controller.perito.miperfil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet (name = "actualizadoCorrectamente", value = "/actualizadoCorrectamente")
public class ActualizadoCorrectamenteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/vistas/perito/ActualizadosCorrectamente.jsp").forward(req,resp);
    }
}
