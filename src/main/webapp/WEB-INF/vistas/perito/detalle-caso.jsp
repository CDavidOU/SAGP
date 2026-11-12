<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Detalle del caso</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/detalle-caso.css">
</head>
<body class="bg-light" style="overflow-x: hidden;">

<div class="container-fluid p-0 d-flex">
    <jsp:include page="/WEB-INF/vistas/sidebarPerito.jsp">
        <jsp:param name="seccionActiva" value="asignaciones" />
    </jsp:include>

    <main class="fondo-crema" style="flex: 1;">

        <div class="p-3 bg-white row">
            <div class="col-8">
                <p class="mb-0">Gestión y asignación de peritos judiciales</p>
            </div>
            <div class="col-4">
                <p class="texto-verde fw-bold mb-1">Perito/Morelos</p>
            </div>
        </div>

        <div class="px-4 my-4">
            <p class="texto-verde fw-bold text-uppercase mb-1" style="font-size: 0.75rem;">Perito / Morelos</p>
            <h2 class="fw-bold">Detalle del caso · SOL-2026-0148</h2>
            <p class="texto-dorado">Expediente EXP-391/2026 · Asignación de Lucía Hernández López</p>
        </div>

        <div class="px-4 mb-4">
            <div class="row g-3">
                <div class="col-lg-6">
                    <div class="card shadow border-0 rounded-3 h-100 bg-white">
                        <div class="card-body">
                            <h5 class="fw-bold mb-3">Información de la solicitud</h5>
                            <p class="texto small mb-0">Juzgado</p>
                            <p class="fw-semibold">Juzgado Familiar de Cuernavaca</p>
                            <p class="texto small mb-0">Materia / Especialidad</p>
                            <p class="fw-semibold">Familiar / Psicología</p>
                            <p class="texto small mb-0">Fecha y hora de inicio</p>
                            <p class="fw-semibold">22 oct 2026 · 09:42 h</p>
                            <p class="texto small mb-0">Fecha y hora de término</p>
                            <p class="fw-semibold mb-0">Pendiente de finalización</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="card shadow border-0 rounded-3 h-100 bg-white">
                        <div class="card-body">
                            <h5 class="fw-bold mb-3">Dictamen final</h5>
                            <div class="zona-pdf mb-3" id="zonaPdf">
                                <p class="fw-bold fs-5 mb-2">Arrastre el dictamen en PDF</p>
                                <p class="texto">Puede contener imágenes y anexos embebidos.</p>
                                <input type="file" id="archivoPdf" accept="application/pdf" hidden>
                                <button class="btn btn-secundario" type="button" id="btnSeleccionar">Seleccionar archivo PDF</button>
                                <p class="fw-semibold mt-2 mb-0" id="nombreArchivo"></p>
                            </div>
                            <div class="text-danger mb-2 d-none" id="errorPdf" role="alert"></div>
                            <button class="btn btn-primario mb-3" type="button" id="btnTerminar" disabled>Marcar Peritaje como Terminado</button>
                            <p class="texto mb-0" id="ayuda">Seleccione y cargue un PDF para habilitar este botón.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="px-4 mb-4">
            <div class="alerta-dorada p-3" role="status">
                <p class="fw-bold mb-1">Control de entrega</p>
                <p class="mb-0">Después de finalizar, solo el administrador podrá autorizar una corrección o modificar la entrega.</p>
            </div>
        </div>

        <div class="px-4 pb-4">
            <button class="btn btn-secundario" type="button">Volver a mis casos</button>
        </div>
    </main>
</div>

<script src="${pageContext.request.contextPath}/assets/js/detalle-caso.js"></script>
</body>
</html>