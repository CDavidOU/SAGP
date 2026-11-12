<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="utez.edu.mx.sagp.model.Solicitud" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Solicitudes de audiencias - Administrador</title>
    <!-- Bootstrap CSS y Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <!-- Hoja de estilos oficial del proyecto -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>

<div class="d-flex">
    <!-- AQUÍ SE INSERTA LA BARRA LATERAL REUTILIZABLE (Ajusta la ruta si es necesario) -->
    <jsp:include page="/WEB-INF/vistas/sidebar.jsp">
        <jsp:param name="seccionActiva" value="solicitudes" />
    </jsp:include>

    <!-- Contenido Principal -->
    <div class="flex-grow-1 fondo-crema d-flex flex-column">
        <!-- Barra superior institucional -->
        <div class="p-3 bg-white border-bottom d-flex justify-content-between header-top">
            <span class="texto-muted">Gestión y asignación de peritos judiciales</span>
            <div><span class="texto-verde fw-bold">MORELOS</span> <span class="texto-muted">/ Administrador</span></div>
        </div>

        <div class="p-5 flex-grow-1">
            <small class="texto-verde fw-bold" style="font-size: 0.75rem;">ADMINISTRACIÓN / SOLICITUDES DE AUDIENCIAS</small>
            <h2 class="fw-bold text-dark mt-2 mb-1">Solicitudes de audiencias</h2>
            <p class="texto-muted mb-4">Revisa cada solicitud antes de asignarla o cambiar su estado.</p>

            <!-- Filtros de Pestañas -->
            <div class="mb-4 d-flex gap-2">
                <button class="btn btn-primario px-3 py-2 rounded-2">
                    Pendientes <span class="badge bg-white texto-verde ms-1">3</span>
                </button>
                <button class="btn btn-secundario px-3 py-2 rounded-2">
                    En proceso <span class="badge bg-secondary text-white ms-1">24</span>
                </button>
            </div>

            <!-- Tabla de Solicitudes -->
            <div class="card-custom mb-4 overflow-hidden">
                <table class="table table-custom table-hover align-middle mb-0">
                    <thead>
                        <tr>
                            <th class="ps-3">NÚMERO DE SOLICITUD</th>
                            <th>JUZGADO DE ORIGEN</th>
                            <th>MATERIA / ESPECIALIDAD</th>
                            <th>FECHA</th>
                            <th>ESTADO</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            List<Solicitud> solicitudes = (List<Solicitud>) request.getAttribute("listaSolicitudes");
                            if (solicitudes != null && !solicitudes.isEmpty()) {
                                for (Solicitud sol : solicitudes) {
                                    // Determinamos la clase del badge según el estado
                                    String estado = sol.getEstado() != null ? sol.getEstado() : "";
                                    String claseBadge = estado.equalsIgnoreCase("En proceso") ? "badge-proceso" : "badge-pendiente";
                        %>
                        <tr>
                            <td class="ps-3 texto-verde fw-bold"><%= sol.getNumeroSolicitud() %></td>
                            <td><%= sol.getJuzgadoOrigen() %></td>
                            <td><%= sol.getMateriaEspecialidad() %></td>
                            <td class="texto-muted"><%= sol.getFecha() %></td>
                            <td><span class="badge <%= claseBadge %>"><%= estado %></span></td>
                        </tr>
                        <%
                                }
                            } else {
                        %>
                        <tr>
                            <td colspan="5" class="text-center py-4 texto-muted">No hay solicitudes disponibles.</td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>

            <!-- Panel de Acciones -->
            <div class="card-custom p-4">
                <h6 class="fw-bold text-dark mb-3">Acciones · SOL-2026-0149</h6>
                <div class="d-flex gap-2 flex-wrap">
                    <button class="btn btn-primario px-4 py-2 rounded-2">Aceptar / Asignar automáticamente</button>
                    <a href="${pageContext.request.contextPath}/seleccionar-perito" class="btn btn-secundario px-4 py-2 rounded-2">Asignación manual</a>
                    <button class="btn btn-outline-danger px-4 py-2 rounded-2">Rechazar / Cancelar</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>