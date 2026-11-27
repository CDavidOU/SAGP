package utez.edu.mx.sagp.controller.perito.misasignaciones;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import utez.edu.mx.sagp.service.perito.miperfil.PerfilService;
import utez.edu.mx.sagp.service.perito.misasignaciones.MisAsignacionesService;
import utez.edu.mx.sagp.utils.SesionPerito;

import java.io.IOException;

@WebServlet("/perito/asignaciones")
public class MisAsignacionesServlet extends HttpServlet {
    private final MisAsignacionesService asignacionesService = new MisAsignacionesService();
    private final PerfilService perfilService = new PerfilService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int idPerito = SesionPerito.obtenerIdPerito(request);

        request.setAttribute("perfil", perfilService.obtenerPerfil(idPerito));
        request.setAttribute("asignaciones", asignacionesService.listarEnProceso(idPerito));
        request.setAttribute("enProceso", asignacionesService.contarEnProceso(idPerito));
        request.setAttribute("entregados", asignacionesService.contarDictamenesEntregados(idPerito));

        request.getRequestDispatcher("/WEB-INF/vistas/perito/mis-asignaciones.jsp").forward(request, response);
    }
}

