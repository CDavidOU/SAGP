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

    <!--Izquierdo-->
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

        <div class="px-4 my-4">
            <h3 class="texto">Solicitud Cancelada</h3>
            <p class="texto-dorado">SOL-2026-0149 · Juzgado Civil de Temixco</p>
        </div>

        <div class="px-4 my-4">
            <div class="alerta-dorada alert">
                <h4 class="texto-dorado">Estado actualizado: Cancelado</h4>
                <p class="texto-dorado">La solicitud no participaran en la seleccion automatica ni manual</p>
            </div>
        </div>

        <div class="px-4 my-4">
            <a class="btn btn-primario" href="${pageContext.request.contextPath}/solicitudProceso">Volver a solicitudes</a>
        </div>

    </main>

</div>
</body>
</html>
