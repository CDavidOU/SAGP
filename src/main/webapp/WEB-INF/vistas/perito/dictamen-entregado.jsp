<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Peritaje terminado · Peritos Morelos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/dictamen-entregado.css" rel="stylesheet">
</head>
<body>
<div class="d-flex min-vh-100">

    <aside class="sidebar offcanvas-lg offcanvas-start d-flex flex-column flex-shrink-0" id="menu" tabindex="-1">
        <div class="brand p-3"><img src="${pageContext.request.contextPath}/img/logo-morelos.jpeg" alt="Gobierno del Estado de Morelos"></div>
        <p class="etiqueta-menu px-3 pt-4 mb-2">Portal del perito</p>
        <nav class="nav flex-column px-3 gap-2" aria-label="Navegación del perito">
            <a class="nav-link" href="#"><i class="bi bi-file-earmark-text"></i>Mis asignaciones</a>
            <a class="nav-link active" href="#" aria-current="page"><i class="bi bi-file-earmark-text"></i>Dictámenes</a>
            <a class="nav-link" href="#"><i class="bi bi-people"></i>Mi perfil</a>
        </nav>
        <div class="mt-auto p-3">
            <p class="cobertura-titulo">Cobertura estatal</p>
            <p class="cobertura-texto">Todos los municipios<br>de Morelos</p>
            <div class="d-flex align-items-center gap-2 mb-3">
                <span class="avatar d-flex align-items-center justify-content-center">JG</span>
                <span class="fw-semibold" style="font-size: .75rem;">Juan Gabriel</span>
            </div>
            <button class="btn btn-outline-sagp" type="button">Cerrar sesión</button>
        </div>
    </aside>

    <div class="flex-grow-1 d-flex flex-column">

        <header class="barra-superior">
            <button class="btn btn-outline-sagp d-lg-none" type="button" data-bs-toggle="offcanvas" data-bs-target="#menu" aria-controls="menu">Menú</button>
            <span class="text-secondary">Gestión y asignación de peritos judiciales</span>
            <span class="ms-auto texto-sagp" style="font-size: .75rem;">MORELOS &nbsp;/&nbsp; Perito</span>
        </header>

        <main class="contenido">
            <p class="crumb">Perito / Morelos</p>
            <h1 class="titulo-vista">Peritaje terminado</h1>
            <p class="subtitulo-vista">SOL-2026-0148 · Dictamen final recibido.</p>

            <div class="alert aviso mb-4" role="status">
                <strong>Entrega bloqueada para edición</strong><br>
                Para corregir, solicite autorización al administrador.
            </div>

            <div class="card mb-4"><div class="card-body">
                <span class="chip badge rounded-pill mb-3">Entregado</span>
                <h2 class="card-titulo" id="nombreDictamen">Dictamen_SOL-2026-0148.pdf</h2>
                <p class="dato-label">Inicio</p><p class="dato-valor">22 oct 2026 · 09:42 h</p>
                <p class="dato-label">Término</p><p class="dato-valor" id="terminoDictamen">29 oct 2026 · 20:25:18 h</p>
                <p class="text-secondary">Registrado al marcar el peritaje como terminado.</p>
                <div class="d-flex flex-wrap gap-2">
                    <button class="btn btn-outline-sagp" type="button" id="btnVerDictamen">Ver dictamen</button>
                    <span title="Solo el administrador puede habilitar una corrección de la entrega">
                        <button class="btn btn-sagp" type="button" disabled>Reemplazar PDF</button>
                    </span>
                </div>
                <div class="alert aviso mt-3 mb-0 d-none" id="avisoVer" role="status"></div>
                <p class="text-secondary mt-3 mb-0">Solo el administrador puede habilitar una corrección de la entrega.</p>
            </div></div>

            <button class="btn btn-outline-sagp" type="button">Volver a mis casos</button>
        </main>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/dictamen-entregado.js"></script>
</body>
</html>