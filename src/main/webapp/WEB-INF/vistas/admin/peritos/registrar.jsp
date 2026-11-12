<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registrar perito | SAGP</title>

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
            <div class="texto-verde fw-semibold mb-3">PERITOS / NUEVO REGISTRO</div>
            <h1 class="fw-bold texto mb-2">Registrar perito</h1>
            <p class="texto-muted">Los campos marcados con * son obligatorios.</p>
        </div>

        <form class="px-4 pb-4">
            <section class="card border-0 rounded-3 shadow-sm p-4 mb-4 fondo-crema">
                <h2 class="h4 texto-verde mb-4">Información del perito</h2>

                <div class="row g-3">
                    <div class="col-12 col-lg-6">
                        <label class="form-label" for="nombre">Nombre completo *</label>
                        <input class="form-control" id="nombre" name="nombre"
                               type="text" placeholder="Nombre y apellidos" required>
                    </div>

                    <div class="col-12 col-lg-6">
                        <label class="form-label" for="correo">Correo electrónico *</label>
                        <input class="form-control" id="correo" name="correo"
                               type="email" placeholder="nombre@ejemplo.mx" required>
                    </div>

                    <div class="col-12 col-lg-6">
                        <label class="form-label" for="telefono">Teléfono</label>
                        <input class="form-control" id="telefono" name="telefono"
                               type="tel" placeholder="777 000 0000">
                    </div>

                    <div class="col-12 col-lg-6">
                        <label class="form-label" for="estado">Estado</label>
                        <select class="form-select" id="estado" name="estado">
                            <option selected>Activo</option>
                            <option>Inactivo</option>
                        </select>
                    </div>
                </div>
            </section>

            <section class="card border-0 rounded-3 shadow-sm p-4 mb-4 fondo-crema">
                <h2 class="h4 texto-verde mb-2">Materias y especialidades</h2>
                <p class="texto-muted mb-4">
                    Agrega cada combinación que el perito puede atender.
                </p>

                <div class="row g-3">
                    <div class="col-12 col-lg-6">
                        <label class="form-label" for="materia">Materia *</label>
                        <select class="form-select" id="materia" name="materia">
                            <option selected>Familiar</option>
                            <option>Civil</option>
                            <option>Penal</option>
                            <option>Laboral</option>
                        </select>
                    </div>

                    <div class="col-12 col-lg-6">
                        <label class="form-label" for="especialidad">Especialidad *</label>
                        <select class="form-select" id="especialidad" name="especialidad">
                            <option selected>Psicología</option>
                            <option>Grafoscopía</option>
                            <option>Valuación</option>
                            <option>Criminalística</option>
                        </select>
                    </div>
                </div>

                <div class="d-flex flex-wrap gap-2 my-4" aria-label="Combinaciones agregadas">
                    <span class="badge badge-proceso rounded-pill">
                        Familiar / Psicología
                    </span>
                    <span class="badge badge-proceso rounded-pill">
                        Civil / Psicología
                    </span>
                </div>

                <div>
                    <button class="btn btn-secundario" type="button">
                        <i class="bi bi-plus-lg me-2" aria-hidden="true"></i>
                        Agregar combinación
                    </button>
                </div>
            </section>

            <div class="d-flex flex-wrap gap-3">
                <button class="btn btn-primario px-4" type="button">
                    Guardar perito
                </button>

                <a class="btn btn-secundario px-4"
                   href="${pageContext.request.contextPath}/admin/peritos">
                    Cancelar
                </a>
            </div>

            <p class="texto-muted small mt-4">
                Cobertura automática: todos los municipios de Morelos.
            </p>
        </form>
    </main>
</div>
</body>
</html>