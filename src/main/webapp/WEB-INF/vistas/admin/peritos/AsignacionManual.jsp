<%--
  Created by IntelliJ IDEA.
  User: Carlos
  Date: 05/11/2026
  Time: 08:08 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Asignacion Manual</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body class="bg-light" style="overflow-x: hidden;">

<div class="container-fluid p-0 d-flex">
    <!-- Izquierdo -->
    <aside class="menu d-flex flex-column border-end" style="width:250px; height: 100vh; position: sticky; top: 0;">

        <jsp:include page="/WEB-INF/vistas/sidebar.jsp">
            <jsp:param name="seccionActiva" value="solicitudes"/>
        </jsp:include>xº
    </aside>


    <main class="bg-white" style="flex: 1;">

        <div class="p-3 fondo-crema row" >
            <div class=" col-8">
                <p class="texto-gris mb-0">Gestion y asignación de peritos judiciales</p>
            </div>
            <div class=" col-4">
                <p class="texto-verde fw-bold mb-1 ">Administrador/Morelos</p>
            </div>
        </div>

        <div class="px-4 my-4">
            <h2 class="fw-bold texto mb-4">Asignacion manual confirmada</h2>
            <p class="texto-muted">SQL-2026-1049 Expediente EXP-482/2026</p>
        </div>

        <div class="px-4 mt-4">
            <div class="alert alerta-verde p-3 shadow-sm">
                <h5 class="fw-bold mb-1 ">Perito asignado: Roberto Salinas</h5>
                <p class="mb-0 texto-muted" style="font-size: 0.95rem;">Seleccion manual del administrador. No se aplica el orden de menor carga ni el desempate alfabetico</p>
            </div>
        </div>

        <div class="px-4 mt-4">
            <div class="card shadow-sm border-0 rounded-3 h-100 p-4 fondo-crema">
                <h6 class="texto mb-4">Registro de asignación</h6>
                <h5 class="texto-verde mb-4">Civil / Valuación · Juzgado Civil de Temixco</h5>
                <p class="texto-muted mb-2"> Inicio registrado automáticamente: 22 oct 2026 · 16:45h <br>Estado: En proceso <br> Carga del perito: 4 -> 5 </p>
            </div>
        </div>

        <div class="px-4 mt-4">
            <div class="btn btn-primario">Volver al modulo manual</div>
        </div>

    </main>
</div>
</body>
</html>
