package utez.edu.mx.sagp.controller.perito.dictamenes;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "VistaDictamen", urlPatterns = {"/vista-dictamen"})
public class VistaDictamen extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/vistas/perito/Dictamen/VistaDictamen.jsp").forward(request, response);
    }
}