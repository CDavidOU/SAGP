<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carga de Documentos | SAGP</title>
    <!-- Bootstrap CSS y Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

    <!-- Enlace al archivo CSS externo -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/styles.css">
</head>
<body>

<div class="d-flex">
    <!-- Sidebar / Menú Lateral -->
    <div class="sidebar p-3 d-flex flex-column justify-content-between">
        <div>
            <!-- Logo Institucional -->
            <div class="d-flex align-items-center mb-4 ps-2">
                <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="Gobierno del Estado de Morelos" class="logo-morelos img-fluid">
            </div>

            <div class="px-2 mb-3">
                <small class="texto-muted fw-bold text-uppercase" style="font-size: 0.7rem;">PORTAL DEL PERITO</small>
            </div>

            <!-- Navegación -->
            <ul class="nav flex-column mb-auto">
                <li class="nav-item mb-2">
                    <a href="#" class="nav-link menu-activo py-2 px-3 d-flex align-items-center">
                        <i class="bi bi-file-earmark-text me-2"></i> Mis asignaciones
                    </a>
                </li>
                <li class="nav-item mb-1">
                    <a href="#" class="nav-link texto py-2 px-3 d-flex align-items-center">
                        <i class="bi bi-file-text me-2"></i> Dictámenes
                    </a>
                </li>
                <li class="nav-item mb-1">
                    <a href="#" class="nav-link texto py-2 px-3 d-flex align-items-center">
                        <i class="bi bi-person me-2"></i> Mi perfil
                    </a>
                </li>
            </ul>
        </div>

        <!-- Parte Inferior del Sidebar -->
        <div class="px-2">
            <div class="mb-3">
                <div class="texto-verde fw-bold style-normal" style="font-size: 0.8rem;">Cobertura estatal</div>
                <small class="texto-muted d-block" style="font-size: 0.75rem;">Todos los municipios de Morelos</small>
            </div>

            <div class="d-flex align-items-center mb-3">
                <div class="circulo-iniciales me-2">LH</div>
                <div>
                    <div class="fw-bold texto-verde" style="font-size: 0.85rem;">Lucía Hernández</div>
                </div>
            </div>

            <button class="btn btn-secundario btn-sm w-100 rounded-2 py-2">Cerrar sesión</button>
        </div>
    </div>

    <!-- Contenido Principal -->
    <div class="flex-grow-1 fondo-crema d-flex flex-column">
        <!-- Barra Superior / Breadcrumb -->
        <div class="p-3 bg-white border-bottom d-flex justify-content-between align-items-center header-top">
            <span class="texto-muted">Gestión y asignación de peritos judiciales</span>
            <div>
                <span class="texto-verde fw-bold">MORELOS</span>
                <span class="texto-muted">/ Perito</span>
            </div>
        </div>

        <!-- Área de Trabajo Principal -->
        <div class="p-5 flex-grow-1">
            <div class="mb-4">
                <small class="texto-verde fw-bold" style="font-size: 0.75rem;">SOL-2026-0148 / ENTREGA</small>
                <h2 class="fw-bold text-dark mt-2 mb-1">Selecciona un archivo PDF</h2>
                <p class="texto-muted">El documento no se ha cargado.</p>
            </div>

            <!-- Banner de Error / Alerta -->
            <div class="alerta-error p-3 mb-4">
                <div class="fw-bold mb-1">Formato no permitido</div>
                <div style="font-size: 0.85rem;">Dictamen.docx no es un archivo PDF. Exporta tu documento a PDF e inténtalo nuevamente.</div>
            </div>

            <!-- Botones de Acción -->
            <div class="d-flex flex-column align-items-start gap-2">
                <button class="btn btn-primario px-4 py-2 rounded-2">Elegir otro archivo</button>
                <button class="btn btn-secundario px-4 py-2 rounded-2">Volver a la asignación</button>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>