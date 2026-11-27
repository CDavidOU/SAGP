package utez.edu.mx.sagp.controller.perito.dictamenes;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import utez.edu.mx.sagp.model.Dictamen;
import utez.edu.mx.sagp.model.perito.AsignacionPerito;
import utez.edu.mx.sagp.service.perito.dictamenes.DictamenService;
import utez.edu.mx.sagp.service.perito.miperfil.PerfilService;
import utez.edu.mx.sagp.utils.SesionPerito;

import java.io.IOException;
import java.io.InputStream;

/**
 * GET  /perito/detalle-caso?id=148 aqui el muestra el caso y el formulario para subir el PDF.
 * POST /perito/detalle-caso aqui el recibe el PDF y registra la entrega.
 */
@WebServlet("/perito/detalle-caso")
@MultipartConfig(maxFileSize = 20L * 1024 * 1024, maxRequestSize = 21L * 1024 * 1024)
public class DetalleCasoServlet extends HttpServlet {
    private final DictamenService dictamenService = new DictamenService();
    private final PerfilService perfilService = new PerfilService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int idPerito = SesionPerito.obtenerIdPerito(request);
        int idSolicitud = leerId(request.getParameter("id"));
        try {
            AsignacionPerito caso = dictamenService.obtenerCaso(idPerito, idSolicitud);

            // Si ya lo entregó, no tiene caso mostrar el formulario: va directo al comprobante.
            Dictamen yaEntregado = dictamenService.buscarDictamenDelCaso(idPerito, idSolicitud);
            if (yaEntregado != null) {
                response.sendRedirect(request.getContextPath() + "/perito/dictamen-entregado?id=" + yaEntregado.getIdDictamen());
                return;
            }
            mostrar(request, response, idPerito, caso);
        } catch (IllegalArgumentException e) {
            response.sendRedirect(request.getContextPath() + "/perito/asignaciones");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        int idPerito = SesionPerito.obtenerIdPerito(request);
        int idSolicitud = leerId(request.getParameter("idSolicitud"));

        AsignacionPerito caso;
        try {
            caso = dictamenService.obtenerCaso(idPerito, idSolicitud);
        } catch (IllegalArgumentException e) {
            response.sendRedirect(request.getContextPath() + "/perito/asignaciones");
            return;
        }

        Part archivo = request.getPart("archivoPdf");
        try (InputStream contenido = archivo == null ? null : archivo.getInputStream()) {
            Dictamen dictamen = dictamenService.entregarDictamen(
                    idPerito, idSolicitud,
                    archivo == null ? null : archivo.getSubmittedFileName(),
                    archivo == null ? 0 : archivo.getSize(),
                    contenido,
                    request.getParameter("observaciones"));
            // Patrón Post/Redirect/Get: evita que al recargar se vuelva a enviar el archivo.
            response.sendRedirect(request.getContextPath() + "/perito/dictamen-entregado?id=" + dictamen.getIdDictamen());
        } catch (IllegalArgumentException e) {
            request.setAttribute("error", e.getMessage());
            request.setAttribute("observaciones", request.getParameter("observaciones"));
            mostrar(request, response, idPerito, caso);
        }
    }

    private void mostrar(HttpServletRequest request, HttpServletResponse response,
                         int idPerito, AsignacionPerito caso) throws ServletException, IOException {
        request.setAttribute("caso", caso);
        request.setAttribute("perfil", perfilService.obtenerPerfil(idPerito));
        request.getRequestDispatcher("/WEB-INF/vistas/perito/detalle-caso.jsp").forward(request, response);
    }

    private int leerId(String valor) {
        try {
            return Integer.parseInt(valor);
        } catch (NumberFormatException e) {
            return -1;
        }
    }
}
