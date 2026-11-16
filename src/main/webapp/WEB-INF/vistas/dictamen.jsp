<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vista del dictamen | SAGP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <!-- Ruta estandarizada fuera de WEB-INF -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>

<div class="d-flex min-vh-100">
    <!-- Sidebar Portal del Perito -->
    <aside class="sidebar p-3 d-flex flex-column justify-content-between bg-white border-end" style="width: 260px; min-height: 100vh;">
        <div>
            <div class="d-flex align-items-center mb-4 ps-2 pt-2">
                <img src="${pageContext.request.contextPath}/img/logo.png" alt="Gobierno del Estado de Morelos" class="logo-morelos img-fluid" style="max-height: 48px;">
            </div>
            <div class="px-2 mb-3">
                <small class="texto-muted fw-bold text-uppercase" style="font-size: 0.7rem; letter-spacing: 0.05em;">PORTAL DEL PERITO</small>
            </div>
            <ul class="nav flex-column mb-auto">
                <li class="nav-item mb-1">
                    <a href="${pageContext.request.contextPath}/mis-asignaciones" class="nav-link texto py-2 px-3 rounded-2">
                        <i class="bi bi-file-earmark-text me-2"></i> Mis asignaciones
                    </a>
                </li>
                <li class="nav-item mb-1">
                    <a href="${pageContext.request.contextPath}/dictamen" class="nav-link menu-activo py-2 px-3 rounded-2 fw-semibold">
                        <i class="bi bi-file-text me-2"></i> Dictámenes
                    </a>
                </li>
                <li class="nav-item mb-1">
                    <a href="${pageContext.request.contextPath}/mi-perfil" class="nav-link texto py-2 px-3 rounded-2">
                        <i class="bi bi-people me-2"></i> Mi perfil
                    </a>
                </li>
            </ul>
        </div>

        <div class="px-2 pb-2">
            <div class="mb-3">
                <div class="texto-verde fw-bold" style="font-size: 0.8rem;">Cobertura estatal</div>
                <small class="texto-muted d-block" style="font-size: 0.75rem;">Todos los municipios de Morelos</small>
            </div>
            <div class="d-flex align-items-center mb-3">
                <div class="circulo-iniciales me-2 d-flex align-items-center justify-content-center fw-bold" style="width: 34px; height: 34px; border-radius: 50%; background-color: #e6f2ec; color: #1b653c; font-size: 0.8rem;">
                    LH
                </div>
                <div class="fw-bold text-dark" style="font-size: 0.85rem;">Lucía Hernández</div>
            </div>
            <a href="${pageContext.request.contextPath}/logout" class="btn btn-secundario btn-sm w-100 rounded-2 py-2">Cerrar sesión</a>
        </div>
    </aside>

    <!-- Contenido Principal -->
    <div class="flex-grow-1 fondo-crema d-flex flex-column">
        <!-- Header Superior -->
        <header class="px-4 py-3 bg-white border-bottom d-flex justify-content-between align-items-center header-top">
            <span class="texto-muted" style="font-size: 0.85rem;">Gestión y asignación de peritos judiciales</span>
            <div style="font-size: 0.85rem;">
                <span class="texto-verde fw-bold">MORELOS</span> <span class="texto-muted">/ Perito</span>
            </div>
        </header>

        <!-- Área de Trabajo -->
        <main class="p-4 p-md-5 flex-grow-1">
            <small class="texto-verde fw-bold text-uppercase" style="font-size: 0.72rem; letter-spacing: 0.04em;">DICTÁMENES / DOCUMENTO</small>
            <h2 class="fw-bold text-dark mt-2 mb-1" style="font-size: 1.75rem;">Dictamen_SOL-2026-0148.pdf</h2>
            <p class="texto-muted mb-4" style="font-size: 0.85rem;">PDF · 1 página · Vista de demostración</p>

            <!-- Previsualizador de Documento -->
            <div class="card-custom bg-white border rounded-3 p-4 p-md-5 mb-4 shadow-sm" style="max-width: 960px;">
                <h6 class="fw-bold text-dark text-uppercase mb-3" style="letter-spacing: 0.02em;">DICTAMEN PERICIAL · PSICOLOGÍA</h6>
                <div class="mb-4" style="font-size: 0.9rem; line-height: 1.6;">
                    <p class="mb-0 text-secondary"><strong class="text-dark fw-normal">Expediente:</strong> EXP-391/2026</p>
                    <p class="mb-0 text-secondary"><strong class="text-dark fw-normal">Juzgado:</strong> Juzgado Familiar de Cuernavaca</p>
                    <p class="mb-0 text-secondary"><strong class="text-dark fw-normal">Perito:</strong> Lucía Hernández</p>
                </div>

                <h4 class="texto-verde fw-bold mb-2" style="font-size: 1.25rem;">Documento ilustrativo del prototipo</h4>
                <p class="texto-muted mb-0" style="font-size: 0.9rem;">La versión implementada mostrará aquí el archivo PDF entregado por el perito.</p>
            </div>

            <a href="javascript:history.back()" class="btn btn-secundario bg-white border px-4 py-2 rounded-2" style="font-size: 0.85rem;">
                Volver al dictamen
            </a>
        </main>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>