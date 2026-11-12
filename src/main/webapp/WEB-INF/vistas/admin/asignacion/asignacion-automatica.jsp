<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Asignación automática</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/asignacion-automatica.css">
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
            <p class="texto-verde fw-bold text-uppercase mb-1" style="font-size: 0.75rem;">Solicitudes / <span id="idSolicitud"></span></p>
            <h2 class="fw-bold" id="titulo">Asignación automática</h2>
            <p class="texto-dorado" id="subtitulo">Primero menor carga; en caso de empate, orden alfabético por nombre y apellidos.</p>
        </div>

        <div class="px-4 pb-4">

            <!-- propuesta -->
            <section id="vistaPropuesta">
                <div class="row g-3 mb-3">
                    <div class="col-lg-7">
                        <div class="card shadow border-0 rounded-3 h-100 bg-white">
                            <div class="card-body">
                                <h5 class="fw-bold mb-3">Datos de la solicitud</h5>
                                <p class="texto small mb-0">Juzgado y municipio</p><p class="fw-semibold" id="dJuzgado"></p>
                                <p class="texto small mb-0">Materia y especialidad</p><p class="fw-semibold" id="dMateria"></p>
                                <p class="texto small mb-0">Expediente</p><p class="fw-semibold" id="dExpediente"></p>
                                <p class="texto small mb-0">Cobertura: todos los peritos atienden todos los municipios de Morelos.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="card shadow border-0 rounded-3 h-100 bg-white">
                            <div class="card-body">
                                <h5 class="fw-bold mb-3">Perito seleccionado</h5>
                                <span class="badge badge-proceso rounded-pill mb-2" id="chip"></span>
                                <p class="h3 fw-bold" id="pNombre"></p>
                                <p class="texto" id="pMateria"></p>
                                <p class="texto small mb-0">Peritajes en proceso</p>
                                <p class="fw-semibold mb-2" id="pCarga"></p>
                                <p class="small mb-0 texto-verde" id="pMotivo"></p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="border rounded bg-white overflow-hidden shadow-sm mb-3">
                    <div class="table-responsive">
                        <table class="table mb-0 align-middle">
                            <caption class="visually-hidden">Peritos compatibles con la solicitud</caption>
                            <thead class="table-light">
                            <tr>
                                <th scope="col" class="text-muted" style="font-size: 0.85rem; letter-spacing: 0.5px;">PERITO COMPATIBLE</th>
                                <th scope="col" class="text-muted" style="font-size: 0.85rem; letter-spacing: 0.5px;">ESTADO</th>
                                <th scope="col" class="text-muted" style="font-size: 0.85rem; letter-spacing: 0.5px;">EN PROCESO</th>
                                <th scope="col" class="text-muted" style="font-size: 0.85rem; letter-spacing: 0.5px;">RESULTADO</th>
                            </tr>
                            </thead>
                            <tbody id="tabla"></tbody>
                        </table>
                    </div>
                </div>

                <div class="alert alerta-verde p-3 shadow" role="status" id="aviso"></div>

                <div class="d-flex flex-wrap gap-2">
                    <button class="btn btn-primario" type="button" id="btnConfirmar">Confirmar asignación</button>
                    <button class="btn btn-secundario" type="button">Volver a solicitudes</button>
                    <button class="btn btn-secundario" type="button" id="btnSinCandidatos">Ver caso sin candidatos</button>
                </div>
            </section>

            <!-- asignación confirmada -->
            <section id="vistaConfirmada" class="d-none">
                <div class="card shadow border-0 rounded-3 bg-white">
                    <div class="card-body">
                        <span class="badge badge-proceso rounded-pill mb-2">Operación completada</span>
                        <h5 class="fw-bold mb-1" id="cNombre"></h5>
                        <p class="mb-1" id="cInicio"></p>
                        <p class="mb-3" id="cEstado"></p>
                        <button class="btn btn-primario" type="button" id="btnReiniciar">Volver a solicitudes</button>
                    </div>
                </div>
            </section>

            <!-- sin candidatos -->
            <section id="vistaSinCandidatos" class="d-none">
                <div class="card shadow border-0 rounded-3 bg-white">
                    <div class="card-body">
                        <span class="badge badge-pendiente rounded-pill mb-2">Sin perito disponible</span>
                        <h5 class="fw-bold mb-1">No hay peritos disponibles</h5>
                        <p class="mb-3">No se encontró un perito activo con la materia y especialidad requeridas. La solicitud permanece por asignar.</p>
                        <button class="btn btn-primario" type="button" id="btnReiniciar2">Volver a solicitudes</button>
                    </div>
                </div>
            </section>

        </div>
    </main>
</div>

<script src="${pageContext.request.contextPath}/assets/js/asignacion-automatica.js"></script>
</body>
</html>