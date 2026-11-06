<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vista de Dictamen | SAGP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/styles.css">
</head>
<body>

<div class="d-flex">
    <!-- Sidebar -->
    <div class="sidebar p-3 d-flex flex-column justify-content-between">
        <div>
            <div class="d-flex align-items-center mb-4 ps-2">
                <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="Gobierno del Estado de Morelos" class="logo-morelos img-fluid">
            </div>
            <div class="px-2 mb-3">
                <small class="texto-muted fw-bold text-uppercase" style="font-size: 0.7rem;">PORTAL DEL PERITO</small>
            </div>
            <ul class="nav flex-column mb-auto">
                <li class="nav-item mb-1"><a href="#" class="nav-link texto py-2 px-3"><i class="bi bi-file-earmark-text me-2"></i> Mis asignaciones</a></li>
                <li class="nav-item mb-1"><a href="#" class="nav-link menu-activo py-2 px-3"><i class="bi bi-file-text me-2"></i> Dictámenes</a></li>
                <li class="nav-item mb-1"><a href="#" class="nav-link texto py-2 px-3"><i class="bi bi-person me-2"></i> Mi perfil</a></li>
            </ul>
        </div>

        <div class="px-2">
            <div class="mb-3">
                <div class="texto-verde fw-bold" style="font-size: 0.8rem;">Cobertura estatal</div>
                <small class="texto-muted d-block" style="font-size: 0.75rem;">Todos los municipios de Morelos</small>
            </div>
            <div class="d-flex align-items-center mb-3">
                <div class="circulo-iniciales me-2">LH</div>
                <div class="fw-bold texto-verde" style="font-size: 0.85rem;">Lucía Hernández</div>
            </div>
            <button class="btn btn-secundario btn-sm w-100 rounded-2 py-2">Cerrar sesión</button>
        </div>
    </div>

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
            <div class="card-custom p-4 mb-4">
                <h5 class="fw-bold text-dark mb-3">DICTAMEN PERICIAL · PSICOLOGÍA</h5>
                <p class="mb-1"><strong>Expediente:</strong> EXP-391/2026</p>
                <p class="mb-1"><strong>Juzgado:</strong> Juzgado Familiar de Cuernavaca</p>
                <p class="mb-4"><strong>Perito:</strong> Lucía Hernández</p>

                <h5 class="texto-verde fw-bold mb-2">Documento ilustrativo del prototipo</h5>
                <p class="texto-muted">La versión implementada mostrará aquí el archivo PDF entregado por el perito.</p>
            </div>

            <button class="btn btn-secundario px-4 py-2 rounded-2">Volver al dictamen</button>
        </div>
    </div>
</div>

</body>
</html>