<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vista del dictamen | SAGP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>

<div class="d-flex">
    <!-- Sidebar Portal del Perito -->
    <aside class="d-flex flex-column border-end" style="width: 250px; min-width: 250px; height: 100vh; position: sticky; top: 0; background-color: #4A5D45;">
        <div class="m-2 text-center">
            <img src="${pageContext.request.contextPath}/img/Logo.png" alt="Gobierno de Morelos" style="max-width: 100%; height: auto;">
        </div>

        <p class="texto-dorado fw-bold px-3 mb-3" style="font-size: 0.75rem; letter-spacing: 0.5px;">PORTAL DEL PERITO</p>

        <ul class="nav flex-column gap-2 mb-auto px-2">
            <li class="nav-item">
                <a href="${pageContext.request.contextPath}/mis-asignaciones" class="nav-link d-flex align-items-center enlace-menu">
                    <i class="bi bi-file-earmark-text me-3 fs-5"></i> Mis asignaciones
                </a>
            </li>
            <li class="nav-item">
                <a href="${pageContext.request.contextPath}/dictamen" class="nav-link d-flex align-items-center menu-activo rounded">
                    <i class="bi bi-file-text me-3 fs-5"></i> Dictámenes
                </a>
            </li>
            <li class="nav-item">
                <a href="${pageContext.request.contextPath}/mi-perfil" class="nav-link d-flex align-items-center enlace-menu">
                    <i class="bi bi-people me-3 fs-5"></i> Mi perfil
                </a>
            </li>
        </ul>

        <div class="mt-auto pt-3">
            <p class="texto-dorado mx-3 mb-1" style="font-size: 0.85rem; font-weight: bold;">Cobertura estatal</p>
            <p class="texto-crema mx-3 mb-4" style="font-size: 0.75rem; line-height: 1.2; opacity: 0.8;">Todos los municipios<br>de Morelos</p>

            <div class="d-flex align-items-center m-3">
                <div class="rounded-circle d-flex justify-content-center align-items-center circulo-iniciales">LH</div>
                <span class="ms-2 texto-crema" style="font-size: 0.85rem; font-weight: 500;">Lucía Hernández</span>
            </div>

            <a href="${pageContext.request.contextPath}/logout" class="btn btn-secundario w-100 mx-3 mb-3" style="width: 90% !important; border-radius: 8px; font-size: 0.9rem;">Cerrar sesión</a>
        </div>
    </aside>

    <!-- Contenido -->
    <div class="flex-grow-1 fondo-crema d-flex flex-column">
        <div class="p-3 bg-white border-bottom d-flex justify-content-between header-top">
            <span class="texto-muted">Gestión y asignación de peritos judiciales</span>
            <div><span class="texto-verde fw-bold">MORELOS</span> <span class="texto-muted">/ Perito</span></div>
        </div>

        <div class="p-5 flex-grow-1">
            <small class="texto-verde fw-bold" style="font-size: 0.75rem;">DICTÁMENES / DOCUMENTO</small>
            <h2 class="fw-bold text-dark mt-2 mb-1">Dictamen_SOL-2026-0148.pdf</h2>
            <p class="texto-muted mb-4">PDF · 1 página · Vista de demostración</p>

            <!-- Previsualizador de Documento -->
            <div class="card-custom bg-white border rounded-3 p-4 mb-4">
                <h6 class="fw-bold text-dark mb-3">DICTAMEN PERICIAL · PSICOLOGÍA</h6>
                <p class="mb-1"><strong>Expediente:</strong> EXP-391/2026</p>
                <p class="mb-1"><strong>Juzgado:</strong> Juzgado Familiar de Cuernavaca</p>
                <p class="mb-4"><strong>Perito:</strong> Lucía Hernández</p>

                <h4 class="texto-verde fw-bold mb-2">Documento ilustrativo del prototipo</h4>
                <p class="texto-muted mb-0" style="font-size: 0.85rem;">La versión implementada mostrará aquí el archivo PDF entregado por el perito.</p>
            </div>

            <div class="d-flex gap-2">
                <a href="javascript:history.back()" class="btn btn-secundario px-4 py-2 rounded-2">Volver al dictamen</a>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>