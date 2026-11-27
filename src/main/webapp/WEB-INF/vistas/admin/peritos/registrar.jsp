
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registrar perito | SAGP</title>

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/estilos.css">
</head>

<body class="bg-light" style="overflow-x: hidden;">
<div class="container-fluid p-0 d-flex">

    <!-- Menú lateral -->
    <aside class="menu d-flex flex-column border-end"
           style="width:250px; height: 100vh; position: sticky; top: 0;">

        <jsp:include page="/WEB-INF/vistas/sidebar.jsp">
            <jsp:param name="seccionActiva" value="peritos"/>
        </jsp:include>

    </aside>

    <!-- Contenido principal -->
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

            <div class="texto-verde fw-semibold mb-3">
                PERITOS / NUEVO REGISTRO
            </div>

            <h1 class="fw-bold texto mb-2">
                Registrar perito
            </h1>

            <p class="texto-muted mb-0">
                Los campos marcados con * son obligatorios.
            </p>

        </div>

        <!-- FORMULARIO -->
        <form class="px-4 pb-4"
              id="formRegistrarPerito"
              action="${pageContext.request.contextPath}/admin/peritos/registrar"
              method="POST">

            <!-- Información del perito -->
            <section class="card bg-white border-0 rounded-3 shadow-sm p-4 mb-4">

                <h2 class="h4 texto-verde mb-4">
                    Información del perito
                </h2>

                <div class="row g-3">

                    <div class="col-12 col-lg-6">
                        <label class="form-label" for="nombre">
                            Nombre completo *
                        </label>

                        <input class="form-control"
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

                        <input class="form-control"
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

                        <input class="form-control"
                               id="telefono"
                               name="telefono"
                               type="tel"
                               placeholder="777 000 0000">
                    </div>

                    <div class="col-12 col-lg-6">
                        <label class="form-label" for="estado">
                            Estado
                        </label>

                        <select class="form-select"
                                id="estado"
                                name="estado">

                            <option value="Activo" selected>Activo</option>
                            <option value="Inactivo">Inactivo</option>

                        </select>
                    </div>

                </div>
            </section>

            <!-- Materias y especialidades -->
            <section class="card bg-white border-0 rounded-3 shadow-sm p-4 mb-4">

                <h2 class="h4 texto-verde mb-2">
                    Materias y especialidades
                </h2>

                <p class="texto-muted mb-4">
                    Agrega cada combinación que el perito puede atender.
                </p>

                <div class="row g-3">

                    <div class="col-12 col-lg-6">
                        <label class="form-label" for="materia">
                            Materia *
                        </label>

                        <select class="form-select"
                                id="materia"
                                required>

                            <option value="Familiar" selected>Familiar</option>
                            <option value="Civil">Civil</option>
                            <option value="Penal">Penal</option>
                            <option value="Laboral">Laboral</option>

                        </select>
                    </div>

                    <div class="col-12 col-lg-6">
                        <label class="form-label" for="especialidad">
                            Especialidad *
                        </label>

                        <select class="form-select"
                                id="especialidad"
                                required>

                            <option value="Psicología" selected>Psicología</option>
                            <option value="Grafoscopía">Grafoscopía</option>
                            <option value="Valuación">Valuación</option>
                            <option value="Criminalística">Criminalística</option>

                        </select>
                    </div>

                </div>

                <!-- Combinaciones agregadas -->
                <div class="d-flex flex-wrap gap-2 my-4"
                     id="listaEspecialidades"
                     aria-label="Combinaciones agregadas">
                </div>

                <div>
                    <button class="btn btn-secundario"
                            type="button"
                            id="btnAgregarEspecialidad">

                        <i class="bi bi-plus-lg me-2"
                           aria-hidden="true"></i>

                        Agregar combinación
                    </button>
                </div>

            </section>

            <!-- Botones -->
            <div class="d-flex flex-wrap gap-3">

                <button class="btn btn-primario" type="submit">
                    Guardar perito
                </button>

                <a class="btn btn-secundario"
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

<!-- FUNCIONALIDAD DE ESPECIALIDADES -->
<script>

    const materia = document.getElementById("materia");
    const especialidad = document.getElementById("especialidad");
    const lista = document.getElementById("listaEspecialidades");
    const formulario = document.getElementById("formRegistrarPerito");

    const combinaciones = [];

    // Agregar una combinación
    document.getElementById("btnAgregarEspecialidad")
        .addEventListener("click", function () {

            const nueva = {
                materia: materia.value,
                especialidad: especialidad.value
            };

            const existe = combinaciones.some(item =>
                item.materia === nueva.materia &&
                item.especialidad === nueva.especialidad
            );

            if (existe) {
                alert("Esta combinación ya fue agregada.");
                return;
            }

            combinaciones.push(nueva);

            mostrarCombinaciones();
        });


    // Mostrar las combinaciones agregadas
    function mostrarCombinaciones() {

        lista.innerHTML = "";

        combinaciones.forEach((item, index) => {

            const badge = document.createElement("span");

            badge.className = "badge badge-proceso rounded-pill";

            badge.appendChild(
                document.createTextNode(
                    item.materia + " / " + item.especialidad + " "
                )
            );

            const eliminar = document.createElement("button");

            eliminar.type = "button";
            eliminar.className = "btn-close ms-2";
            eliminar.setAttribute(
                "aria-label",
                "Eliminar combinación"
            );

            eliminar.addEventListener("click", function () {

                combinaciones.splice(index, 1);

                mostrarCombinaciones();

            });

            badge.appendChild(eliminar);

            lista.appendChild(badge);

        });
    }


    // Enviar las combinaciones junto con el formulario
    formulario.addEventListener("submit", function (event) {

        if (combinaciones.length === 0) {

            event.preventDefault();

            alert("Agrega al menos una materia y especialidad.");

            return;
        }

        document.querySelectorAll(".campo-especialidad")
            .forEach(campo => campo.remove());

        combinaciones.forEach(item => {

            const materiaInput = document.createElement("input");

            materiaInput.type = "hidden";
            materiaInput.name = "materias";
            materiaInput.value = item.materia;
            materiaInput.className = "campo-especialidad";


            const especialidadInput = document.createElement("input");

            especialidadInput.type = "hidden";
            especialidadInput.name = "especialidades";
            especialidadInput.value = item.especialidad;
            especialidadInput.className = "campo-especialidad";


            formulario.appendChild(materiaInput);
            formulario.appendChild(especialidadInput);

        });

    });

</script>

</body>
</html>
