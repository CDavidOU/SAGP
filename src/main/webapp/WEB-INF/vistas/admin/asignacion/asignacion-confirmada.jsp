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
    <title>Asignación confirmada</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body class="bg-light" style="overflow-x: hidden;">

<div class="container-fluid p-0 d-flex">
    <jsp:include page="/WEB-INF/vistas/sidebar.jsp">
        <jsp:param name="seccionActiva" value="solicitudes" />
    </jsp:include>

    <main class="fondo-crema" style="flex: 1;">

        <div class="p-3 bg-white row">
            <div class="col-8">
                <p class="mb-0">Gestión y asignación de peritos judiciales</p>
            </div>
            <div class="col-4">
                <p class="texto-verde fw-bold mb-1">Administrador/Morelos</p>
            </div>
        </div>

        <div class="px-4 my-4">
            <p class="texto-verde fw-bold text-uppercase mb-1" style="font-size: 0.75rem;">Solicitudes / <span id="idSolicitud">SOL-2026-0149</span></p>
            <h2 class="fw-bold">Asignación confirmada</h2>
            <p class="texto-dorado">Confirmación de la operación</p>
        </div>

        <div class="px-4 pb-4">
            <div class="card shadow border-0 rounded-3 bg-white">
                <div class="card-body">
                    <span class="badge badge-proceso rounded-pill mb-3">Operación completada</span>
                    <h5 class="fw-bold mb-2" id="cNombre">Brian Emiliano · Civil / Valuación</h5>
                    <p class="mb-1" id="cInicio">Inicio: 22 oct 2026 · 16:20 h</p>
                    <p class="mb-3" id="cEstado">Estado: En proceso · Carga actual: 3</p>
                    <a class="btn btn-primario" href="${pageContext.request.contextPath}/admin/asignacion/automatica">Volver a solicitudes</a>
                </div>
            </div>
        </div>
    </main>
</div>

<script src="${pageContext.request.contextPath}/assets/js/asignacion-confirmada.js"></script>
</body>
</html>
