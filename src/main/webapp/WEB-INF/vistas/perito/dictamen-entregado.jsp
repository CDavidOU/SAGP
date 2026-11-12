<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Peritaje terminado</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/dictamen-entregado.css">
</head>
<body class="bg-light" style="overflow-x: hidden;">

<div class="container-fluid p-0 d-flex">
    <jsp:include page="/WEB-INF/vistas/sidebarPerito.jsp">
        <jsp:param name="seccionActiva" value="dictamenes" />
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
            <h2 class="fw-bold">Peritaje terminado</h2>
            <p class="texto-dorado">SOL-2026-0148 · Dictamen final recibido.</p>
        </div>

        <div class="px-4 mb-4">
            <div class="alert alerta-verde p-3" role="status">
                <h5 class="fw-bold mb-1">Entrega bloqueada para edición</h5>
                <p class="mb-0">Para corregir, solicite autorización al administrador.</p>
            </div>
        </div>

        <div class="px-4 mb-4">
            <div class="card shadow border-0 rounded-3 bg-white">
                <div class="card-body">
                    <span class="badge badge-proceso rounded-pill mb-3">Entregado</span>
                    <h5 class="fw-bold mb-3" id="nombreDictamen">Dictamen_SOL-2026-0148.pdf</h5>
                    <p class="texto small mb-0">Inicio</p>
                    <p class="fw-semibold">22 oct 2026 · 09:42 h</p>
                    <p class="texto small mb-0">Término</p>
                    <p class="fw-semibold" id="terminoDictamen">29 oct 2026 · 20:25:18 h</p>
                    <p class="texto">Registrado al marcar el peritaje como terminado.</p>
                    <div class="d-flex flex-wrap gap-2">
                        <button class="btn btn-secundario" type="button" id="btnVerDictamen">Ver dictamen</button>
                        <span title="Solo el administrador puede habilitar una corrección de la entrega">
                            <button class="btn btn-primario" type="button" disabled>Reemplazar PDF</button>
                        </span>
                    </div>
                    <div class="alert alerta-verde mt-3 mb-0 d-none" id="avisoVer" role="status"></div>
                    <p class="texto mt-3 mb-0">Solo el administrador puede habilitar una corrección de la entrega.</p>
                </div>
            </div>
        </div>

        <div class="px-4 pb-4">
            <button class="btn btn-secundario" type="button">Volver a mis casos</button>
        </div>
    </main>
</div>

<script src="${pageContext.request.contextPath}/assets/js/dictamen-entregado.js"></script>
</body>
</html>