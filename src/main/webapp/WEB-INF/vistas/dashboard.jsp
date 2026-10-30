<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Panel de Administración</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light" style="overflow-x: hidden;">

    <div class="container-fluid p-0 d-flex">
        <!-- Izquierdo -->
        <aside class="bg-white d-flex flex-column border-end" style="width:250px; height: 100vh; position: sticky; top: 0;">

            <div class="m-2 text-center">
                <img src="${pageContext.request.contextPath}/img/logoMorelos.png" alt="Gobierno de Morelos" style="max-width: 25%; height: auto;">
            </div>

            <p class="text-muted fw-bold px-3 mb-3" style="font-size: 0.75rem; letter-spacing: 0.5px;">ADMINISTRACIÓN</p>

            <ul class="nav flex-column gap-2 mb-auto">

                <li class="nav-item">
                    <a href="#" class="nav-link d-flex align-items-center rounded" style="background-color: #EAF3EF; color: #006837; font-weight: bold; ">
                        <i class="bi bi-grid-fill me-3 fs-5"></i> Resumen
                    </a>
                </li>

                <li class="nav-item">
                    <a href="#" class="nav-link d-flex align-items-center text-muted">
                        <i class="bi bi-people me-3 fs-5"></i> Peritos
                    </a>
                </li>

                <li class="nav-item">
                    <a href="#" class="nav-link d-flex align-items-center text-muted">
                        <i class="bi bi-scales me-3 fs-5"></i> Carga de trabajo
                    </a>
                </li>

                <li class="nav-item">
                    <a href="#" class="nav-link d-flex align-items-center text-muted">
                        <i class="bi bi-file-earmark-text me-3 fs-5"></i> Asignación manual
                    </a>
                </li>

                <li class="nav-item">
                    <a href="#" class="nav-link d-flex align-items-center text-muted">
                        <i class="bi bi-file-earmark-text me-3 fs-5"></i> Branding / Tema
                    </a>
                </li>

            </ul>

            <div class="mt-auto pt-3">
                <p style="color: #006837; font-size: 0.85rem;" class="mx-3 mb-1">Cobertura estatal</p>
                <p class="text-muted mx-3 mb-4" style="font-size: 0.75rem; line-height: 1.2;">Todos los municipios<br>de Morelos</p>

                <div class="d-flex align-items-center m-3">
                    <div class="rounded-circle d-flex justify-content-center align-items-center" style="width: 35px; height: 35px; background-color: #EAF3EF; color: #006837; font-size: 0.8rem; font-weight: bold;">
                        AM
                    </div>
                    <span class="ms-2 text-dark" style="font-size: 0.85rem; font-weight: 500;">Ana Martínez</span>
                </div>
                <a href="#" class="btn btn-outline-secondary w-100" style="border-radius: 8px; font-size: 0.9rem;">Cerrar sesión</a>
            </div>

        </aside>

        <!-- Derecha -->
        <main style="flex: 1; background-color: #F5F5F5;">

            <div class="p-3" style="background-color: white" >
                <p style="color: gray;">Gestion y asignación de peritos judiciales</p>
            </div>

            <!-- Titulos  -->
            <div class="px-4 mb-4 mt-4">
                <p style="color: #006837; font-weight: bold;">Administrador/Morelos</p>
                <h2 class="fw-bold">Panel de administración</h2>
                <p class="text-muted">Seguimiento de peritajes judiciales - 29 de octubre de 2026</p>
            </div>

            <!--Caja de agrupación de tarjetas -->
            <div class="px-4 mb-4">
                <div class="row g-3">

                    <!-- Tarjeta 1: Asignaciones -->
                    <div class="col-md-3">
                        <div class="card shadow-sm border-0 rounded-3 h-100">
                            <div class="card-body">
                                <p class="text-muted mb-2">Asignaciones en proceso</p>
                                <h1 style="color: #006837; font-weight: bold; font-size: 3rem;">24</h1>
                                <small class="text-muted">Consultar peritajes activos</small>
                            </div>
                        </div>
                    </div>

                    <!-- Tarjeta 2: Peritos registrados -->
                    <div class="col-md-3">
                        <div class="card shadow-sm border-0 rounded-3 h-100">
                            <div class="card-body">
                                <p class="text-muted mb-2">Peritos registrados</p>
                                <h1 style="color: #006837; font-weight: bold; font-size: 3rem;">20</h1>
                                <small class="text-muted">18 activos º 2 inactivos</small>
                            </div>
                        </div>
                    </div>

                    <!-- Tarjeta 3: Solicitudes -->
                    <div class="col-md-3">
                        <div class="card shadow-sm border-0 rounded-3 h-100">
                            <div class="card-body">
                                <p class="text-muted mb-2">Solicitudes Pendientes</p>
                                <h1 style="color: #006837; font-weight: bold; font-size: 3rem;">3</h1>
                                <small class="text-muted">Revisar la cola de solicitudes</small>
                            </div>
                        </div>
                    </div>

                    <!-- Tarjeta 4: Tema  -->
                    <div  class="col-md-3">
                        <div class="card shadow-sm border-0 rounded-3 h-100">
                            <div class="card-body">
                                <p class="text-muted mb-2">Configuración de Tema de Gobierno</p>
                                <h2 style="color: #006837; font-weight: bold; font-size: 2.5rem; margin-top: 10px;">Tema</h2>
                                <small class="text-muted">Colores y logotipo institucional</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="px-4">
                    <!-- Alerta de solicitudes pendientes -->
                    <div class="alert mt-4 p-3" style="background-color: #EAF3EF; color: #006837; border: none; border-radius: 8px;">
                        <h5 class="fw-bold mb-1">3 solicitudes pendientes de atención</h5>
                        <p class="mb-0" style="font-size: 0.95rem;">Asigna automáticamente por menor carga y nombre A-Z, o selecciona un perito de forma manual.</p>
                    </div>
                </div>

                <div class="px-4">
                    <div class="border rounded bg-white overflow-hidden">
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
                                <td>SOL-2026-0149</td>
                                <td>Civil · Temixco</td>
                                <td>Civil / Valuación</td>
                                <td>
                                    <span class="badge" style="background-color: #FDF3E1; color: #9A6C2E; padding: 8px 12px; font-weight: normal;">Pendiente</span>
                                </td>
                            </tr>
                            <tr>
                                <td>SOL-2026-0148</td>
                                <td>Familiar · Cuernavaca</td>
                                <td>Familiar / Psicología</td>
                                <td>
                                    <span class="badge" style="background-color: #E8F5EE; color: #1E6649; padding: 8px 12px; font-weight: normal;">En proceso</span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                <div class="py-4">
                    <button class="btn m-2" style="background-color: #006837; color: white; border-color: darkslategrey;">Atender solicitudes</button>
                    <button class="btn m-2" style="background-color: white; color: black; border-color: black ">Asignacion manual</button>
                </div>

                </div>
            </div>

        </main>
    </div>

</body>
</html>
