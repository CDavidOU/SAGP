
package utez.edu.mx.sagp.controller.admin.peritos;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import utez.edu.mx.sagp.model.peritos.EspecialidadPerito;
import utez.edu.mx.sagp.model.peritos.Perito;
import utez.edu.mx.sagp.service.peritos.PeritoService;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/admin/peritos/registrar")
public class RegistroPeritoServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private final PeritoService peritoService = new PeritoService();

    // Mostrar formulario
    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws ServletException, IOException {

        request.getRequestDispatcher(
                "/WEB-INF/vistas/admin/peritos/registrar.jsp"
        ).forward(request, response);
    }

    // Registrar perito
    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        try {

            // Recibir datos personales
            String nombre = request.getParameter("nombre");
            String correo = request.getParameter("correo");
            String telefono = request.getParameter("telefono");
            String estado = request.getParameter("estado");

            // Recibir materias y especialidades
            String[] materias = request.getParameterValues("materias");
            String[] especialidades = request.getParameterValues("especialidades");

            if (materias == null || especialidades == null
                    || materias.length != especialidades.length) {

                throw new IllegalArgumentException(
                        "Debes agregar al menos una especialidad válida."
                );
            }

            // Crear lista de especialidades
            List<EspecialidadPerito> listaEspecialidades =
                    new ArrayList<>();

            for (int i = 0; i < materias.length; i++) {

                listaEspecialidades.add(
                        new EspecialidadPerito(
                                materias[i],
                                especialidades[i]
                        )
                );
            }

            // Crear nuevo perito
            Perito perito = new Perito();

            perito.setNombreCompleto(nombre);
            perito.setCorreo(correo);
            perito.setTelefono(telefono);
            perito.setEspecialidades(listaEspecialidades);

            // Configurar disponibilidad
            boolean disponible = !"Inactivo".equalsIgnoreCase(estado);

            perito.setDisponible(disponible);

            // Guardar mediante el Service
            boolean registrado = peritoService.registrar(perito);

            if (!registrado) {
                throw new IllegalArgumentException(
                        "No fue posible registrar el perito."
                );
            }

            // Regresar a gestión
            response.sendRedirect(
                    request.getContextPath()
                            + "/admin/peritos?registro=exitoso"
            );

        } catch (IllegalArgumentException e) {

            request.setAttribute("error", e.getMessage());

            request.getRequestDispatcher(
                    "/WEB-INF/vistas/admin/peritos/registrar.jsp"
            ).forward(request, response);

        }
    }
}
