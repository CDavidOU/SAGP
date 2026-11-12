<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Perfil del perito | SAGP</title>

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/estilos.css">
</head>

<body class="bg-light" style="overflow-x: hidden;">
<div class="container-fluid p-0 d-flex">

    <jsp:include page="/WEB-INF/vistas/sidebar.jsp">
        <jsp:param name="seccionActiva" value="peritos"/>
    </jsp:include>

    <main class="bg-white" style="flex: 1;">
        <div class="p-3 fondo-crema row">
            <div class="col-8">
                <p class="texto mb-0">Gestión y asignación de peritos judiciales</p>
            </div>
            <div class="col-4">
                <p class="texto-verde fw-bold mb-1">Administrador/Morelos</p>
            </div>
        </div>

        <div class="px-4 my-4">
            <div class="texto-verde fw-semibold mb-3">
                ADMINISTRADOR / MORELOS
            </div>

            <h1 class="texto-verde mb-2">Lucía Hernández López</h1>

            <p class="texto mb-4">
                PER-001 · Datos personales, especialidades y seguimiento de casos.
            </p>

            <section class="bg-white border rounded-4 p-4 mb-4">
                <h2 class="h4 texto-verde mb-4">Datos del perito</h2>

                <form>
                    <div class="row g-3">
                        <div class="col-12 col-lg-6">
                            <label class="form-label" for="nombre">Nombre</label>
                            <input class="form-control"
                                   id="nombre"
                                   name="nombre"
                                   type="text"
                                   value="Lucía">
                        </div>

                        <div class="col-12 col-lg-6">
                            <label class="form-label" for="apellidos">Apellidos</label>
                            <input class="form-control"
                                   id="apellidos"
                                   name="apellidos"
                                   type="text"
                                   value="Hernández López">
                        </div>

                        <div class="col-12 col-lg-6">
                            <label class="form-label" for="correo">Correo electrónico</label>
                            <input class="form-control"
                                   id="correo"
                                   name="correo"
                                   type="email"
                                   value="lucia.hernandez@poderjudicial.gob.mx">
                        </div>

                        <div class="col-12 col-lg-6">
                            <label class="form-label" for="telefonoEdad">
                                Teléfono / Edad
                            </label>
                            <input class="form-control"
                                   id="telefonoEdad"
                                   name="telefonoEdad"
                                   type="text"
                                   value="777 234 5678 · 36 años">
                        </div>
                    </div>

                    <div class="row g-3 align-items-center mt-2">
                        <div class="col-12 col-lg-4">
                            <label class="alerta-verde d-flex align-items-center gap-3 p-3 mb-0">
                                <input class="form-check-input m-0"
                                       type="checkbox"
                                       name="especialidades"
                                       value="familiar-psicologia"
                                       checked>
                                <span>Familiar / Psicología</span>
                            </label>
                        </div>

                        <div class="col-12 col-lg-4">
                            <label class="alerta-verde d-flex align-items-center gap-3 p-3 mb-0">
                                <input class="form-check-input m-0"
                                       type="checkbox"
                                       name="especialidades"
                                       value="civil-psicologia"
                                       checked>
                                <span>Civil / Psicología</span>
                            </label>
                        </div>

                        <div class="col-12 col-lg-4">
                            <button class="btn btn-primario w-100 py-2" type="button">
                                Guardar cambios
                            </button>
                        </div>
                    </div>
                </form>
            </section>

            <section class="bg-white border rounded-3 p-4 mb-4"
                     aria-label="Estado del perito">
                <div class="row align-items-center g-3">
                    <div class="col-12 col-lg-3">
                        <div class="form-check form-switch mb-0">
                            <input class="form-check-input"
                                   type="checkbox"
                                   role="switch"
                                   id="estadoPerito"
                                   checked>
                            <label class="form-check-label texto-verde fw-semibold"
                                   for="estadoPerito">
                                Activo
                            </label>
                        </div>
                    </div>

                    <div class="col-12 col-lg-9">
                        <p class="texto mb-0">
                            Al desactivar, la fecha de inicio de inactividad
                            se registra automáticamente.
                        </p>
                    </div>
                </div>
            </section>

            <section aria-labelledby="titulo-casos">
                <h2 class="h4 texto-verde mb-4" id="titulo-casos">
                    Casos / Peritajes históricos y activos
                </h2>

                <div class="table-responsive bg-white border rounded-3">
                    <table class="table table-bordered align-middle mb-0">
                        <thead class="table-light">
                        <tr>
                            <th scope="col">SOLICITUD / EXPEDIENTE</th>
                            <th scope="col">JUZGADO</th>
                            <th scope="col">ESTADO</th>
                            <th scope="col">INICIO / TÉRMINO</th>
                        </tr>
                        </thead>

                        <tbody>
                        <tr>
                            <td>SOL-2026-0148 · EXP-391/2026</td>
                            <td>Familiar · Cuernavaca</td>
                            <td>
                                <span class="badge-proceso d-inline-block rounded">
                                    En proceso
                                </span>
                            </td>
                            <td>22 oct 2026 / Pendiente</td>
                        </tr>

                        <tr>
                            <td>SOL-2026-0131 · EXP-320/2026</td>
                            <td>Familiar · Jiutepec</td>
                            <td>
                                <span class="badge bg-light text-secondary border
                                             d-inline-block rounded px-3 py-2">
                                    Terminado
                                </span>
                            </td>
                            <td>16 oct 2026 / 20 oct 2026</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </section>
        </div>
    </main>
</div>
</body>
</html>