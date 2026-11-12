<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Registrar perito | SAGP</title>

    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet">

    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
            rel="stylesheet">

    <link
            href="${pageContext.request.contextPath}/assets/css/estilos.css"
            rel="stylesheet">
</head>

<body class="fondo-crema">
<div class="d-flex min-vh-100">

    <jsp:include page="/WEB-INF/vistas/sidebar.jsp">
        <jsp:param name="seccionActiva" value="peritos"/>
    </jsp:include>

    <div class="flex-grow-1 min-vh-100">

        <header class="bg-white border-bottom px-4 py-3 d-flex
                       justify-content-between align-items-center">
            <span class="texto">
                Gestión y asignación de peritos judiciales
            </span>

            <span class="texto-verde fw-semibold text-nowrap">
                Administrador&nbsp; / &nbsp;Morelos
            </span>
        </header>

        <main class="container-fluid px-4 px-lg-5 py-4 py-lg-5">

            <div class="texto-verde small fw-semibold mb-3">
                PERITOS / NUEVO REGISTRO
            </div>

            <h1 class="texto-verde mb-2">Registrar perito</h1>

            <p class="texto mb-4">
                Los campos marcados con * son obligatorios.
            </p>

            <form>
                <section class="bg-white border rounded-4 p-4 p-lg-5 mb-4">
                    <h2 class="h4 texto-verde mb-4">
                        Información del perito
                    </h2>

                    <div class="row g-4">
                        <div class="col-12 col-lg-6">
                            <label class="form-label" for="nombre">
                                Nombre completo *
                            </label>
                            <input
                                    class="form-control"
                                    id="nombre"
                                    name="nombre"
                                    type="text"
                                    placeholder="Nombre y apellidos"
                                    required>
                        </div>

                        <div class="col-12 col-lg-6">
                            <label class="form-label" for="correo">
                                Correo electrónico *
                            </label>
                            <input
                                    class="form-control"
                                    id="correo"
                                    name="correo"
                                    type="email"
                                    placeholder="nombre@ejemplo.mx"
                                    required>
                        </div>

                        <div class="col-12 col-lg-6">
                            <label class="form-label" for="telefono">
                                Teléfono
                            </label>
                            <input
                                    class="form-control"
                                    id="telefono"
                                    name="telefono"
                                    type="tel"
                                    placeholder="777 000 0000">
                        </div>

                        <div class="col-12 col-lg-6">
                            <label class="form-label" for="estado">
                                Estado
                            </label>
                            <select class="form-select" id="estado" name="estado">
                                <option selected>Activo</option>
                                <option>Inactivo</option>
                            </select>
                        </div>
                    </div>
                </section>

                <section class="bg-white border rounded-4 p-4 p-lg-5 mb-4">
                    <h2 class="h4 texto-verde mb-3">
                        Materias y especialidades
                    </h2>

                    <p class="texto mb-4">
                        Agrega cada combinación que el perito puede atender.
                    </p>

                    <div class="row g-4">
                        <div class="col-12 col-lg-6">
                            <label class="form-label" for="materia">
                                Materia *
                            </label>
                            <select class="form-select" id="materia" name="materia">
                                <option selected>Familiar</option>
                                <option>Civil</option>
                                <option>Penal</option>
                                <option>Laboral</option>
                            </select>
                        </div>

                        <div class="col-12 col-lg-6">
                            <label class="form-label" for="especialidad">
                                Especialidad *
                            </label>
                            <select
                                    class="form-select"
                                    id="especialidad"
                                    name="especialidad">
                                <option selected>Psicología</option>
                                <option>Grafoscopía</option>
                                <option>Valuación</option>
                                <option>Criminalística</option>
                            </select>
                        </div>
                    </div>

                    <div class="mt-4" aria-label="Combinaciones agregadas">
                        <span class="alerta-verde d-inline-block px-3 py-2 me-2 mb-2">
                            Familiar / Psicología
                        </span>
                        <span class="alerta-verde d-inline-block px-3 py-2 me-2 mb-2">
                            Civil / Psicología
                        </span>
                    </div>

                    <button class="btn btn-secundario mt-2" type="button">
                        <i class="bi bi-plus-lg me-2" aria-hidden="true"></i>
                        Agregar combinación
                    </button>
                </section>

                <div class="d-flex flex-wrap gap-3">
                    <button class="btn btn-primario px-4 py-2" type="button">
                        Guardar perito
                    </button>

                    <a
                            class="btn btn-secundario px-4 py-2"
                            href="${pageContext.request.contextPath}/admin/peritos">
                        Cancelar
                    </a>
                </div>

                <p class="texto mt-4 mb-0">
                    Cobertura automática: todos los municipios de Morelos.
                </p>
            </form>

        </main>
    </div>
</div>
</body>
</html>