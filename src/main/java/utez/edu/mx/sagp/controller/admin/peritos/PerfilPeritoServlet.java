
package utez.edu.mx.sagp.controller.admin.peritos;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import utez.edu.mx.sagp.model.peritos.Perito;
import utez.edu.mx.sagp.model.peritos.EspecialidadPerito;
import utez.edu.mx.sagp.service.peritos.PeritoService;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@WebServlet("/admin/peritos/perfil")
public class PerfilPeritoServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private final PeritoService peritoService = new PeritoService();

    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws ServletException, IOException {

        cargarPerfil(request, response);
    }

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("id");
        String accion = request.getParameter("accion");

        if (id == null || id.trim().isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/admin/peritos");
            return;
        }

        try {

            Optional<Perito> resultado = peritoService.obtenerPorId(id);

            if (resultado.isEmpty()) {
                response.sendError(HttpServletResponse.SC_NOT_FOUND,
                        "No se encontró el perito.");
                return;
            }

            Perito perito = resultado.get();

            // Cambiar disponibilidad
            if ("estado".equals(accion)) {

                String[] estados = request.getParameterValues("disponible");
                boolean disponible = false;

                if (estados != null) {
                    for (String estado : estados) {
                        if ("true".equals(estado)) {
                            disponible = true;
                        }
                    }
                }

                peritoService.cambiarDisponibilidad(id, disponible);

            } else {

                // Actualizar información personal
                String nombre = request.getParameter("nombre");
                String apellidos = request.getParameter("apellidos");
                String correo = request.getParameter("correo");
                String telefono = request.getParameter("telefono");

                if (nombre == null || nombre.trim().isEmpty()
                        || apellidos == null || apellidos.trim().isEmpty()) {
                    throw new IllegalArgumentException(
                            "El nombre y los apellidos son obligatorios.");
                }

                if (correo == null || correo.trim().isEmpty()) {
                    throw new IllegalArgumentException(
                            "El correo electrónico es obligatorio.");
                }

                // Recibir especialidades
                String[] materias = request.getParameterValues("materias");
                String[] especialidades =
                        request.getParameterValues("especialidades");

                if (materias == null || especialidades == null
                        || materias.length == 0
                        || materias.length != especialidades.length) {
                    throw new IllegalArgumentException(
                            "Agrega al menos una combinación de materia y especialidad.");
                }

                List<EspecialidadPerito> listaEspecialidades =
                        new ArrayList<>();

                for (int i = 0; i < materias.length; i++) {

                    if (materias[i] == null || materias[i].trim().isEmpty()
                            || especialidades[i] == null
                            || especialidades[i].trim().isEmpty()) {
                        throw new IllegalArgumentException(
                                "Todas las combinaciones deben estar completas.");
                    }

                    listaEspecialidades.add(
                            new EspecialidadPerito(
                                    materias[i].trim(),
                                    especialidades[i].trim()
                            )
                    );
                }

                perito.setNombreCompleto(
                        nombre.trim() + " " + apellidos.trim()
                );

                perito.setCorreo(correo.trim());
                perito.setTelefono(
                        telefono != null ? telefono.trim() : ""
                );

                perito.setEspecialidades(listaEspecialidades);

                boolean actualizado = peritoService.actualizar(perito);

                if (!actualizado) {
                    throw new IllegalArgumentException(
                            "No fue posible actualizar el perito. "
                                    + "Verifica que el correo no esté duplicado.");
                }
            }

            response.sendRedirect(
                    request.getContextPath()
                            + "/admin/peritos/perfil?id=" + id
                            + "&actualizado=true"
            );

        } catch (IllegalArgumentException e) {

            request.setAttribute("error", e.getMessage());
            cargarPerfil(request, response);
        }
    }

    private void cargarPerfil(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws ServletException, IOException {

        String id = request.getParameter("id");

        if (id == null || id.trim().isEmpty()) {
            response.sendRedirect(
                    request.getContextPath() + "/admin/peritos"
            );
            return;
        }

        Optional<Perito> resultado = peritoService.obtenerPorId(id);

        if (resultado.isEmpty()) {
            response.sendError(
                    HttpServletResponse.SC_NOT_FOUND,
                    "No se encontró el perito solicitado."
            );
            return;
        }

        request.setAttribute("perito", resultado.get());

        request.getRequestDispatcher(
                "/WEB-INF/vistas/admin/peritos/perfil.jsp"
        ).forward(request, response);
    }
}
