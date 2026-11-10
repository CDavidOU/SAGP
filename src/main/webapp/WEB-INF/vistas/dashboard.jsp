<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Panel de Administración</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body class="bg-light" style="overflow-x: hidden;">

<div class="container-fluid p-0 d-flex">
    <!-- Izquierdo -->
    <jsp:include page="sidebar.jsp">
        <jsp:param name="seccionActiva" value="resumen" />
    </jsp:include>

    <!-- Derecha -->
    <main class="fondo-crema" style="flex: 1;">

        <div class="p-3 bg-white row" >
            <div class=" col-8">
                <p class="texto-gris mb-0">Gestion y asignación de peritos judiciales</p>
            </div>
            <div class=" col-4">
                <p class="texto-verde fw-bold mb-1 ">Administrador/Morelos</p>
            </div>
        </div>

        <!-- Titulos  -->
        <div class="px-4 my-4">
            <h2 class="fw-bold texto-gris">Panel de administración</h2>
            <p class="texto-dorado">Seguimiento de peritajes judiciales - 29 de octubre de 2026</p>
        </div>

        <!--Caja de agrupación de tarjetas -->
        <div class="px-4 mb-4">
            <div class="row g-3">
                <div class="col-md-3">
                    <div class="card shadow border-0 rounded-3 h-100 bg-white">
                        <div class="card-body">
                            <p class="texto mb-2">Asignaciones en proceso</p>
                            <h1 class="texto-verde fw-bold" style="font-size: 3rem;">24</h1>
                            <small class="text-muted">Consultar peritajes activos</small>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card shadow border-0 rounded-3 h-100 bg-white">
                        <div class="card-body">
                            <p class="texto mb-2">Peritos registrados</p>
                            <h1 class="texto-verde fw-bold" style="font-size: 3rem;">20</h1>
                            <small class="text-muted">18 activos º 2 inactivos</small>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card shadow border-0 rounded-3 h-100 bg-white">
                        <div class="card-body">
                            <p class="texto mb-2">Solicitudes Pendientes</p>
                            <h1 class="texto-verde fw-bold" style="font-size: 3rem;">3</h1>
                            <small class="text-muted">Revisar la cola de solicitudes</small>
                        </div>
                    </div>
                </div>

            <div class="px-3 mt-4">
                <div class="alert alerta-verde p-3 shadow">
                    <h5 class="fw-bold mb-1">3 solicitudes pendientes de atención</h5>
                    <p class="mb-0 text-muted" style="font-size: 0.95rem;">Asigna automáticamente por menor carga y nombre A-Z, o selecciona un perito de forma manual.</p>
                </div>
            </div>

            <div class="px-3 mt-4">
                <div class="border rounded bg-white overflow-hidden shadow-sm">
                    <table class="table mb-0 align-middle">
                        <thead class="table-light">
                        <tr>
                            <th scope="col" class="text-muted" style="font-size: 0.85rem; letter-spacing: 0.5px;">SOLICITUD</th>
                            <th scope="col" class="text-muted" style="font-size: 0.85rem; letter-spacing: 0.5px;">JUZGADO</th>
                            <th scope="col" class="text-muted" style="font-size: 0.85rem; letter-spacing: 0.5px;">CLASIFICACIÓN</th>
                            <th scope="col" class="text-muted" style="font-size: 0.85rem; letter-spacing: 0.5px;">ESTADO</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="texto-gris">SOL-2026-0149</td>
                            <td class="texto-gris">Civil · Temixco</td>
                            <td class="texto-gris">Civil / Valuación</td>
                            <td>
                                <span class="badge badge-pendiente">Pendiente</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="texto-gris">SOL-2026-0148</td>
                            <td class="texto-gris">Familiar · Cuernavaca</td>
                            <td class="texto-gris">Familiar / Psicología</td>
                            <td>
                                <span class="badge badge-proceso">En proceso</span>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="py-4">
                    <button class="btn btn-primario m-2">Atender solicitudes</button>
                    <button class="btn btn-secundario m-2">Asignacion manual</button>
                </div>

                </div>
            </div>
        </div>
    </main>
</div>
</body>
</html>