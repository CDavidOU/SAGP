 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Tema</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/estilos.css">
</head>
<body class="bg-light" style="overflow-x: hidden">

<div class="container-fluid p-0 d-flex">
    <!-- Izquierdo -->
    <aside class="menu d-flex flex-column border-end"  style="width:250px; height: 100vh; position: sticky; top: 0;">
        <jsp:include page="/WEB-INF/vistas/sidebar.jsp">
            <jsp:param name="seccionActiva" value="solicitudes"/>
        </jsp:include>
    </aside>

    <main class="fondo-crema" style="flex: 1;">
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
            <h3 class="texto">Solicitudes en proceso</h3>
            <p class="texto-dorado">Peritajes activos y dictámenes que requieren seguimiento.</p>
        </div>

        <div class="px-4 my-4">
            <div class="d-flex flex-wrap gap-2">
                <a href="${pageContext.request.contextPath}/solicitudes" class="btn btn-secundario px-3">Pendientes · 3</a>
                <a href="${pageContext.request.contextPath}/solicitudProceso" class="btn btn-primario px-3">En proceso · 24</a>
            </div>
        </div>

        <div class="px-4 mt-4">
            <div class="border rounded bg-white overflow-hidden shadow">
                <table class="table mb-0 align-middle">
                    <thead class="table-light">
                    <tr>
                        <th scope="col" class="text-muted" style="font-size: 0.85rem; letter-spacing: 0.5px;">SOLICITUD</th>
                        <th scope="col" class="text-muted" style="font-size: 0.85rem; letter-spacing: 0.5px;">CLASIFICACIÓN</th>
                        <th scope="col" class="text-muted" style="font-size: 0.85rem; letter-spacing: 0.5px;">PERITO</th>
                        <th scope="col" class="text-muted" style="font-size: 0.85rem; letter-spacing: 0.5px;">FECHA DE INICIO</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="texto-gris">
                            <a href="${pageContext.request.contextPath}/controlEntregas">SOL-2026-0148</a><br>
                            Familiar · Cuernavaca
                        </td>
                        <td class="texto-gris">Familiar / Psicologico</td>
                        <td class="texto-gris">Lucia Hernández López</td>
                        <td class="texto-gris">
                            22 oct 2026 · 09:42 h
                        </td>
                    </tr>
                    <tr>
                        <td class="texto-gris">
                            SOL-2026-0147 <br>
                            Civil · Cuautla
                        </td>
                        <td class="texto-gris">Civil / Grafoscopía</td>
                        <td class="texto-gris">Carlos Méndez Ruiz</td>
                        <td class="texto-gris">
                            21 oct 2026 · 11:10 h
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="px-4 my-4">
            <div class="d-flex flex-wrap gap-3">
                <a href="${pageContext.request.contextPath}/seleccionar-perito" class="btn btn-primario px-4">Reasignar SOL-2026-0148</a>
                <a href="#" class="btn btn-secundario px-4">Gestionar entrega finalizada</a>
            </div>
        </div>

    </main>
</div>

</body>
</html>
