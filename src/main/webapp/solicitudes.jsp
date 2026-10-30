<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="utez.edu.mx.sagp.model.Solicitud" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Solicitudes de audiencias</title>
    <!-- Bootstrap CSS y Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

    <style>
        body {
            background-color: #f4f6f8;
            font-size: 0.875rem;
        }
        .sidebar {
            width: 240px;
            min-height: 100vh;
            background-color: #ffffff;
            border-right: 1px solid #e9ecef;
        }
        .bg-custom-green {
            background-color: #0d6338 !important;
            color: #ffffff !important;
        }
        .badge-pending {
            background-color: #fef3c7;
            color: #d97706;
            font-weight: 500;
        }
    </style>
</head>
<body>

<div class="d-flex">
    <!-- Menú Lateral (Sidebar) -->
    <div class="sidebar p-3 d-flex flex-column justify-content-between">
        <div>
            <div class="fw-bold fs-6 text-uppercase mb-4 text-muted">Morelos</div>
            <ul class="nav nav-pills flex-column mb-auto">
                <li class="nav-item mb-1">
                    <a href="#" class="nav-link text-dark"><i class="bi bi-grid me-2"></i> Resumen</a>
                </li>
                <li class="nav-item mb-1">
                    <a href="#" class="nav-link active bg-custom-green"><i class="bi bi-file-earmark-text me-2"></i> Solicitudes</a>
                </li>
                <li class="nav-item mb-1">
                    <a href="#" class="nav-link text-dark"><i class="bi bi-people me-2"></i> Peritos</a>
                </li>
                <li class="nav-item mb-1">
                    <a href="#" class="nav-link text-dark"><i class="bi bi-speedometer2 me-2"></i> Carga de trabajo</a>
                </li>
                <li class="nav-item mb-1">
                    <a href="#" class="nav-link text-dark"><i class="bi bi-check2-square me-2"></i> Asignación manual</a>
                </li>
            </ul>
        </div>
        <div>
            <hr>
            <div class="d-flex align-items-center mb-3">
                <div class="bg-success text-white rounded-circle p-2 me-2">AM</div>
                <div>
                    <div class="fw-bold">Ana Martínez</div>
                    <small class="text-muted">Cobertura estatal</small>
                </div>
            </div>
            <button class="btn btn-outline-secondary btn-sm w-100">Cerrar sesión</button>
        </div>
    </div>

    <!-- Contenido Principal -->
    <div class="flex-grow-1 p-4">
        <small class="text-muted">ADMINISTRADOR / MORELOS</small>
        <h2 class="fw-bold mt-1 mb-1">Solicitudes de audiencias</h2>
        <p class="text-muted mb-3">Revisa cada solicitud antes de asignarla o cambiar su estado.</p>

        <!-- Filtros de Pestañas -->
        <div class="mb-4">
            <button class="btn btn-sm bg-custom-green me-2">Pendientes <span class="badge bg-white text-dark ms-1">3</span></button>
            <button class="btn btn-sm btn-light border text-muted">En proceso <span class="badge bg-secondary ms-1">24</span></button>
        </div>

        <!-- Tabla de Solicitudes -->
        <div class="card border-0 shadow-sm mb-4">
            <div class="card-body p-0">
                <table class="table table-hover align-middle mb-0">
                    <thead class="table-light">
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
                        %>
                        <tr>
                            <td class="ps-3 fw-medium"><%= sol.getNumeroSolicitud() %></td>
                            <td><%= sol.getJuzgadoOrigen() %></td>
                            <td><%= sol.getMateriaEspecialidad() %></td>
                            <td><%= sol.getFecha() %></td>
                            <td><span class="badge badge-pending px-3 py-2"><%= sol.getEstado() %></span></td>
                        </tr>
                        <%
                                }
                            } else {
                        %>
                        <tr>
                            <td colspan="5" class="text-center py-3 text-muted">No hay solicitudes disponibles.</td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Panel de Acciones -->
        <div class="card border-0 shadow-sm p-3">
            <h6 class="fw-bold mb-3">Acciones · SOL-2026-0149</h6>
            <div class="d-flex gap-2">
                <button class="btn btn-sm bg-custom-green">Aceptar / Asignar automáticamente</button>
                <button class="btn btn-sm btn-outline-secondary">Asignación manual</button>
                <button class="btn btn-sm btn-outline-danger">Rechazar / Cancelar</button>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>