<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mis asignaciones | SAGP</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/estilos.css"
          rel="stylesheet">
</head>

<body class="bg-light" style="overflow-x: hidden;">
<div class="container-fluid p-0 d-flex">

    <!-- Izquierdo -->
    <aside class="menu d-flex flex-column border-end" style="width:250px; height: 100vh; position: sticky; top: 0;">
        <jsp:include page="/WEB-INF/vistas/sidebarPerito.jsp">
            <jsp:param name="seccionActiva" value="asignaciones" />
        </jsp:include>
    </aside>

    <main class="fondo-crema flex-grow-1">
        <div class="p-3 bg-white row">
            <div class="col-8">
                <p class="texto mb-0">
                    Gestión y asignación de peritos judiciales
                </p>
            </div>
            <div class="col-4">
                <p class="texto-verde fw-bold mb-1">
                    Perito/Morelos
                </p>
            </div>
        </div>

        <div class="px-4 my-4">
            <div class="texto-verde fw-semibold small mb-3">
                PORTAL DEL PERITO
            </div>

            <h1 class="texto-verde fw-bold mb-2">Buen día, Lucía</h1>

            <p class="texto mb-4">
                Aquí puedes consultar tus asignaciones y entregar los dictámenes finales.
            </p>

            <section class="row g-3 mb-4" aria-label="Resumen de asignaciones">
                <article class="col-12 col-md-4">
                    <div class="card bg-white border-0 rounded-3 shadow-sm h-100">
                        <div class="card-body p-4">
                            <div class="texto-muted mb-2">Peritajes en proceso</div>
                            <div class="texto-verde fw-bold display-5">2</div>
                        </div>
                    </div>
                </article>

                <article class="col-12 col-md-4">
                    <div class="card bg-white border-0 rounded-3 shadow-sm h-100">
                        <div class="card-body p-4">
                            <div class="texto-muted mb-2">Dictámenes entregados</div>
                            <div class="texto-verde fw-bold display-5">12</div>
                        </div>
                    </div>
                </article>

                <article class="col-12 col-md-4">
                    <div class="card bg-white border-0 rounded-3 shadow-sm h-100">
                        <div class="card-body p-4">
                            <div class="texto-muted mb-2">Tu cobertura</div>
                            <div class="texto-verde fw-bold fs-3">Todo Morelos</div>
                        </div>
                    </div>
                </article>
            </section>

            <section class="bg-white border rounded-3 shadow-sm mb-4"
                     aria-label="Mis asignaciones">
                <div class="table-responsive">
                    <table class="table align-middle mb-0 texto">
                        <thead class="table-light texto-muted">
                        <tr>
                            <th scope="col">FOLIO / EXPEDIENTE</th>
                            <th scope="col">JUZGADO</th>
                            <th scope="col">ESPECIALIDAD</th>
                            <th scope="col">INICIO</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <span class="texto-verde fw-semibold d-block">SOL-2026-0148</span>
                                <span class="texto-muted small">EXP-391/2026</span>
                            </td>
                            <td>Familiar · Cuernavaca</td>
                            <td>Psicología</td>
                            <td>22 oct 2026<br>09:42 h</td>
                        </tr>
                        <tr>
                            <td>
                                <span class="texto-verde fw-semibold d-block">SOL-2026-0142</span>
                                <span class="texto-muted small">EXP-364/2026</span>
                            </td>
                            <td>Familiar · Emiliano Zapata</td>
                            <td>Psicología</td>
                            <td>20 oct 2026<br>11:15 h</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </section>

            <div class="mt-4 mb-4">
                <a class="btn btn-primario" href="${pageContext.request.contextPath}/perito/detalle-caso">
                    Abrir SOL-2026-0148
                </a>
            </div>

            <section class="alerta-verde border rounded-3 p-3"
                     aria-label="Información sobre entregas">
                <strong class="d-block mb-1">Cada entrega cierra un peritaje</strong>
                <span>
                    Carga el dictamen final en PDF. La fecha y hora de término se
                    registran al completar la entrega.
                </span>
            </section>
        </div>
    </main>
</div>
</body>
</html>