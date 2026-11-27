package utez.edu.mx.sagp.controller.perito.dictamenes;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import utez.edu.mx.sagp.model.Dictamen;
import utez.edu.mx.sagp.service.perito.dictamenes.DictamenService;
import utez.edu.mx.sagp.utils.SesionPerito;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

/**
 * GET /perito/dictamen/archivo?id=5 envía el PDF al navegador.
 * Los PDF se guardan FUERA de webapp, así que nadie puede abrirlos por URL directa:
 * siempre pasan por aquí, donde se revisa que el dictamen sea del perito.
 */
@WebServlet("/perito/dictamen/archivo")
public class ArchivoDictamenServlet extends HttpServlet {
    private final DictamenService dictamenService = new DictamenService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int idPerito = SesionPerito.obtenerIdPerito(request);
        Path archivo;
        Dictamen dictamen;
        try {
            dictamen = dictamenService.obtenerDictamen(idPerito, Integer.parseInt(request.getParameter("id")));
            archivo = dictamenService.obtenerArchivo(dictamen);
        } catch (IllegalArgumentException e) {
            archivo = null;
            dictamen = null;
        }
        if (archivo == null) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Archivo no disponible");
            return;
        }
        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "inline; filename=\"" + dictamen.getNombreArchivo() + "\"");
        response.setContentLengthLong(Files.size(archivo));
        Files.copy(archivo, response.getOutputStream());
    }
}