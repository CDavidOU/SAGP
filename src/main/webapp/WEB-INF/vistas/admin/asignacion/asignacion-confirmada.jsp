<%--
  Created by IntelliJ IDEA.
  User: BrianGalvez
  Date: 05/11/2026
  Time: 11:46 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Asignación confirmada · Peritos Morelos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/asignacion-confirmada.css" rel="stylesheet">
</head>
<body>
<div class="d-flex min-vh-100">

    <aside class="sidebar offcanvas-lg offcanvas-start d-flex flex-column flex-shrink-0" id="menu" tabindex="-1">
        <div class="brand p-3"><img src="${pageContext.request.contextPath}/img/logo-morelos.jpeg" alt="Gobierno del Estado de Morelos"></div>
        <p class="etiqueta-menu px-3 pt-4 mb-2">Administración</p>
        <nav class="nav flex-column px-3 gap-2" aria-label="Navegación del coordinador">
            <a class="nav-link" href="#"><i class="bi bi-grid-fill"></i>Resumen</a>
            <a class="nav-link active" href="#" aria-current="page"><i class="bi bi-file-earmark-text"></i>Solicitudes</a>
            <a class="nav-link" href="#"><i class="bi bi-people"></i>Peritos</a>
            <a class="nav-link" href="#"><i class="bi bi-bar-chart"></i>Carga de trabajo</a>
            <a class="nav-link" href="#"><i class="bi bi-person-plus"></i>Asignación manual</a>
            <a class="nav-link" href="#"><i class="bi bi-palette"></i>Branding / Tema</a>
        </nav>
        <div class="mt-auto p-3">
            <p class="cobertura-titulo">Cobertura estatal</p>
            <p class="cobertura-texto">Todos los municipios<br>de Morelos</p>
            <div class="d-flex align-items-center gap-2 mb-3">
                <span class="avatar d-flex align-items-center justify-content-center">OC</span>
                <span style="font-size: .75rem;"><span class="fw-semibold">Oliver Cruz</span><br><span class="text-secondary">Coordinadora de peritos</span></span>
            </div>
            <button class="btn btn-outline-sagp" type="button">Cerrar sesión</button>
        </div>
    </aside>

    <div class="flex-grow-1 d-flex flex-column">

        <header class="barra-superior">
            <button class="btn btn-outline-sagp d-lg-none" type="button" data-bs-toggle="offcanvas" data-bs-target="#menu" aria-controls="menu">Menú</button>
            <span class="text-secondary">Gestión y asignación de peritos judiciales</span>
            <span class="ms-auto texto-sagp" style="font-size: .75rem;">MORELOS &nbsp;/&nbsp; Administración</span>
        </header>

        <main class="contenido">
            <p class="crumb">Solicitudes / <span id="idSolicitud">SOL-2026-0149</span></p>
            <h1 class="titulo-vista">Asignación confirmada</h1>
            <p class="subtitulo-vista">Confirmación de la operación</p>

            <div class="card"><div class="card-body">
                <span class="chip badge rounded-pill mb-3">Operación completada</span>
                <h2 class="card-titulo mb-2" id="cNombre">Rodrigo López · Civil / Valuación</h2>
                <p class="mb-1" id="cInicio">Inicio: 22 oct 2026 · 16:20 h</p>
                <p class="mb-3" id="cEstado">Estado: En proceso · Carga actual: 3</p>
                <a class="btn btn-sagp" href="${pageContext.request.contextPath}/admin/asignacion/automatica">Volver a solicitudes</a>
            </div></div>
        </main>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/asignacion-confirmada.js"></script>
</body>
</html>
