<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Detalle del caso · Peritos Morelos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/detalle-caso.css" rel="stylesheet">
</head>
<body>
<div class="d-flex min-vh-100">

    <aside class="sidebar offcanvas-lg offcanvas-start d-flex flex-column flex-shrink-0" id="menu" tabindex="-1">
        <div class="brand p-3"><img src="${pageContext.request.contextPath}/img/logo-morelos.jpeg" alt="Gobierno del Estado de Morelos"></div>
        <p class="etiqueta-menu px-3 pt-4 mb-2">Portal del perito</p>
        <nav class="nav flex-column px-3 gap-2" aria-label="Navegación del perito">
            <a class="nav-link active" href="#" aria-current="page"><i class="bi bi-file-earmark-text"></i>Mis asignaciones</a>
            <a class="nav-link" href="#"><i class="bi bi-file-earmark-text"></i>Dictámenes</a>
            <a class="nav-link" href="#"><i class="bi bi-people"></i>Mi perfil</a>
        </nav>
        <div class="mt-auto p-3">
            <p class="cobertura-titulo">Cobertura estatal</p>
            <p class="cobertura-texto">Todos los municipios<br>de Morelos</p>
            <div class="d-flex align-items-center gap-2 mb-3">
                <span class="avatar d-flex align-items-center justify-content-center">LH</span>
                <span class="fw-semibold" style="font-size: .75rem;">Lucía Hernández</span>
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
            <h1 class="titulo-vista">Detalle del caso · SOL-2026-0148</h1>
            <p class="subtitulo-vista">Expediente EXP-391/2026 · Asignación de Lucía Hernández López</p>

            <div class="row g-4 mb-4">
                <div class="col-lg-6">
                    <div class="card h-100"><div class="card-body">
                        <h2 class="card-titulo">Información de la solicitud</h2>
                        <p class="dato-label">Juzgado</p><p class="dato-valor">Juzgado Familiar de Cuernavaca</p>
                        <p class="dato-label">Materia / Especialidad</p><p class="dato-valor">Familiar / Psicología</p>
                        <p class="dato-label">Fecha y hora de inicio</p><p class="dato-valor">22 oct 2026 · 09:42 h</p>
                        <p class="dato-label">Fecha y hora de término</p><p class="dato-valor mb-0">Pendiente de finalización</p>
                    </div></div>
                </div>
                <div class="col-lg-6">
                    <div class="card h-100"><div class="card-body">
                        <h2 class="card-titulo">Dictamen final</h2>
                        <div class="zona-pdf mb-3" id="zonaPdf">
                            <p class="zona-titulo">Arrastre el dictamen en PDF</p>
                            <p class="text-secondary">Puede contener imágenes y anexos embebidos.</p>
                            <input type="file" id="archivoPdf" accept="application/pdf" hidden>
                            <button class="btn btn-outline-sagp" type="button" id="btnSeleccionar">Seleccionar archivo PDF</button>
                            <p class="fw-semibold mt-2 mb-0" id="nombreArchivo"></p>
                        </div>
                        <div class="text-danger mb-2 d-none" id="errorPdf" role="alert"></div>
                        <button class="btn btn-sagp mb-3" type="button" id="btnTerminar" disabled>Marcar Peritaje como Terminado</button>
                        <p class="text-secondary mb-0" id="ayuda">Seleccione y cargue un PDF para habilitar este botón.</p>
                    </div></div>
                </div>
            </div>

            <div class="aviso-alerta mb-4" role="status">
                <p class="fw-semibold mb-1" style="font-size: .875rem;">Control de entrega</p>
                <p class="mb-0">Después de finalizar, solo el administrador podrá autorizar una corrección o modificar la entrega.</p>
            </div>

            <button class="btn btn-outline-sagp" type="button">Volver a mis casos</button>
        </main>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/detalle-caso.js"></script>
</body>
</html>