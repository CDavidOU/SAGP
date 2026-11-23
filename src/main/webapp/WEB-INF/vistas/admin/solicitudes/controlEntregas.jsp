<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Detalle del peritaje | SAGP</title>

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/estilos.css">
</head>

<body class="bg-light" style="overflow-x: hidden;">
<div class="container-fluid p-0 d-flex">

    <!--Izquierdo-->
    <aside class="menu d-flex flex-column border-end" style="width:250px; height: 100vh; position: sticky; top: 0;">
        <jsp:include page="/WEB-INF/vistas/sidebar.jsp">
            <jsp:param name="seccionActiva" value="solicitudes"/>
        </jsp:include>
    </aside>

    <!--Derecha-->
    <main class="fondo-crema" style="flex: 1">
        <div class="p-3 bg-white row">
            <div class="col-8">
                <p class="texto mb-0">
                    Gestión y asignación de peritos judiciales
                </p>
            </div>
            <div class="col-4">
                <p class="texto-verde fw-bold mb-1">
                    Administrador/Morelos
                </p>
            </div>
        </div>

        <div class="px-4 mt-4">
            <h3 class="texto">Control de entregas</h3>
            <p class="texto-dorado">Acceso exclusivo del administrador: SQL-2026-0148</p>
        </div>

        <div class="px-4 mt-4">
            <div class="shadow border rounded bg-white overflow-hiden p-4">
                <h4 class="texto"> Entrega Finalizada</h4>
                <h2 class="texto-verde">Lucía Hernández López · Familiar / Psicología</h2>
                <small class="texto-muted">
                    Dictamen_SOL-2026-0148.pdf <br>
                    Fecha y hora de término: 29 oct 2026 · 20:25:18 h
                </small>
                <label class="form-label texto">Motivo de desbloqueo</label>
                <input type="text" class="form-control" placeholder="Describa la corrección requerida...">
            </div>
        </div>

        <div class="px-4 mt-4">
            <div class="alerta-dorada p-2">
                <h3 class="texto-dorado">Conservar trazabilidad</h3>
                <p class="texto-dorado">Las autorizaciones y las versiones del PDF queda en el historial de la <entrega></entrega></p>
            </div>
        </div>

        <div class="px-4 my-4">
            <div class="d-flex flex-wrap gap-3">
                <a href="#" class="btn btn-primario px-4">Autorizar corrección</a>
                <a href="${pageContext.request.contextPath}/solicitudProceso" class="btn btn-secundario px-4">Volver a las solicitudes</a>
            </div>
        </div>

    </main>


</div>
</body>
</html>
