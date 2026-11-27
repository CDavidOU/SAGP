<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>

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

    <aside class="menu d-flex flex-column border-end"
           style="width:250px; height:100vh; position:sticky; top:0;">

        <jsp:include page="/WEB-INF/vistas/sidebar.jsp">
            <jsp:param name="seccionActiva" value="peritos"/>
        </jsp:include>

    </aside>

    <main class="fondo-crema" style="flex:1;">

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
                ADMINISTRADOR / MORELOS
            </div>

            <h1 class="texto-verde mb-2">
                <c:out value="${perito.nombreCompleto}"/>
            </h1>

            <p class="texto mb-4">
                <c:out value="${perito.idPerito}"/>
                · Datos personales, especialidades y seguimiento de casos.
            </p>

            <c:if test="${not empty error}">
                <div class="alert alerta-verde mb-4" role="alert">
                    <c:out value="${error}"/>
                </div>
            </c:if>

            <c:if test="${param.actualizado eq 'true'}">
                <div class="alert alerta-verde mb-4" role="alert">
                    Los datos del perito se actualizaron correctamente.
                </div>
            </c:if>

            <section class="bg-white border rounded-4 p-4 mb-4">

                <h2 class="h4 texto-verde mb-4">Datos del perito</h2>

                <form action="${pageContext.request.contextPath}/admin/peritos/perfil"
                      method="POST">

                    <input type="hidden" name="id"
                           value="<c:out value='${perito.idPerito}'/>">

                    <input type="hidden" name="accion" value="actualizar">

                    <div class="row g-3">

                        <div class="col-12 col-lg-6">
                            <label class="form-label" for="nombre">Nombre</label>
                            <input class="form-control"
                                   id="nombre"
                                   name="nombre"
                                   type="text"
                                   value="<c:out value='${fn:substringBefore(perito.nombreCompleto, " ")}'/>"
                                   required>
                        </div>

                        <div class="col-12 col-lg-6">
                            <label class="form-label" for="apellidos">Apellidos</label>
                            <input class="form-control"
                                   id="apellidos"
                                   name="apellidos"
                                   type="text"
                                   value="<c:out value='${fn:substringAfter(perito.nombreCompleto, " ")}'/>"
                                   required>
                        </div>

                        <div class="col-12 col-lg-6">
                            <label class="form-label" for="correo">
                                Correo electrónico
                            </label>
                            <input class="form-control"
                                   id="correo"
                                   name="correo"
                                   type="email"
                                   value="<c:out value='${perito.correo}'/>"
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
                                   value="<c:out value='${perito.telefono}'/>">
                        </div>

                    </div>

                    <hr class="my-4">

                    <h3 class="h5 texto-verde mb-3">
                        Materias y especialidades
                    </h3>

                    <p class="texto-muted small mb-3">
                        Puedes cambiar, agregar o eliminar las combinaciones del perito.
                    </p>

                    <div id="contenedor-especialidades">

                        <c:forEach var="esp"
                                   items="${perito.especialidades}">

                            <div class="row g-2 align-items-end mb-3 fila-especialidad">

                                <div class="col-12 col-lg-5">

                                    <label class="form-label">Materia</label>

                                    <select class="form-select" name="materias" required>

                                        <option value="Familiar"
                                                <c:if test="${esp.materia eq 'Familiar'}">selected</c:if>>
                                            Familiar
                                        </option>

                                        <option value="Civil"
                                                <c:if test="${esp.materia eq 'Civil'}">selected</c:if>>
                                            Civil
                                        </option>

                                        <option value="Penal"
                                                <c:if test="${esp.materia eq 'Penal'}">selected</c:if>>
                                            Penal
                                        </option>

                                        <option value="Laboral"
                                                <c:if test="${esp.materia eq 'Laboral'}">selected</c:if>>
                                            Laboral
                                        </option>

                                    </select>

                                </div>

                                <div class="col-12 col-lg-5">

                                    <label class="form-label">Especialidad</label>

                                    <select class="form-select"
                                            name="especialidades" required>

                                        <option value="Psicología"
                                                <c:if test="${esp.especialidad eq 'Psicología'}">selected</c:if>>
                                            Psicología
                                        </option>

                                        <option value="Grafoscopía"
                                                <c:if test="${esp.especialidad eq 'Grafoscopía'}">selected</c:if>>
                                            Grafoscopía
                                        </option>

                                        <option value="Valuación"
                                                <c:if test="${esp.especialidad eq 'Valuación'}">selected</c:if>>
                                            Valuación
                                        </option>

                                        <option value="Criminalística"
                                                <c:if test="${esp.especialidad eq 'Criminalística'}">selected</c:if>>
                                            Criminalística
                                        </option>

                                    </select>

                                </div>

                                <div class="col-12 col-lg-2">

                                    <button type="button"
                                            class="btn btn-outline-danger w-100"
                                            onclick="eliminarEspecialidad(this)"
                                            title="Eliminar combinación">
                                        <i class="bi bi-trash"></i>
                                    </button>

                                </div>

                            </div>

                        </c:forEach>

                    </div>

                    <div class="d-flex flex-wrap gap-2 mt-3">

                        <button type="button"
                                class="btn btn-secundario"
                                onclick="agregarEspecialidad()">
                            <i class="bi bi-plus-lg me-2"></i>
                            Agregar combinación
                        </button>

                        <button class="btn btn-primario"
                                type="submit">
                            Guardar cambios
                        </button>

                    </div>

                </form>

            </section>

            <section class="bg-white border rounded-3 p-4 mb-4"
                     aria-label="Estado del perito">

                <div class="row align-items-center g-3">

                    <div class="col-12 col-lg-3">

                        <form action="${pageContext.request.contextPath}/admin/peritos/perfil"
                              method="POST">

                            <input type="hidden" name="id"
                                   value="<c:out value='${perito.idPerito}'/>">

                            <input type="hidden" name="accion" value="estado">

                            <input type="hidden" name="disponible" value="false">

                            <div class="form-check form-switch mb-0">

                                <input class="form-check-input"
                                       type="checkbox"
                                       role="switch"
                                       id="estadoPerito"
                                       name="disponible"
                                       value="true"
                                       onchange="this.form.submit()"
                                       <c:if test="${perito.disponible}">checked</c:if>>

                                <label class="form-check-label texto-verde fw-semibold"
                                       for="estadoPerito">

                                    <c:choose>
                                        <c:when test="${perito.disponible}">
                                            Activo
                                        </c:when>
                                        <c:otherwise>
                                            Inactivo
                                        </c:otherwise>
                                    </c:choose>

                                </label>

                            </div>

                        </form>

                    </div>

                    <div class="col-12 col-lg-9">

                        <p class="texto mb-0">
                            <c:choose>
                                <c:when test="${not perito.disponible}">
                                    Fecha de baja:
                                    <c:out value="${perito.fechaBaja}"/>
                                </c:when>
                                <c:otherwise>
                                    Al desactivar, la fecha de inicio de inactividad
                                    se registra automáticamente.
                                </c:otherwise>
                            </c:choose>
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
                            <td colspan="4" class="text-center py-4 texto-muted">
                                No hay información de peritajes disponible para este perito.
                            </td>
                        </tr>
                        </tbody>

                    </table>

                </div>

            </section>

        </div>

    </main>

</div>

<script>

    function agregarEspecialidad() {

        const contenedor =
            document.getElementById("contenedor-especialidades");

        const fila = document.createElement("div");

        fila.className =
            "row g-2 align-items-end mb-3 fila-especialidad";

        fila.innerHTML = `
            <div class="col-12 col-lg-5">
                <label class="form-label">Materia</label>
                <select class="form-select" name="materias" required>
                    <option value="Familiar">Familiar</option>
                    <option value="Civil">Civil</option>
                    <option value="Penal">Penal</option>
                    <option value="Laboral">Laboral</option>
                </select>
            </div>

            <div class="col-12 col-lg-5">
                <label class="form-label">Especialidad</label>
                <select class="form-select" name="especialidades" required>
                    <option value="Psicología">Psicología</option>
                    <option value="Grafoscopía">Grafoscopía</option>
                    <option value="Valuación">Valuación</option>
                    <option value="Criminalística">Criminalística</option>
                </select>
            </div>

            <div class="col-12 col-lg-2">
                <button type="button"
                        class="btn btn-outline-danger w-100"
                        onclick="eliminarEspecialidad(this)">
                    <i class="bi bi-trash"></i>
                </button>
            </div>
        `;

        contenedor.appendChild(fila);
    }

    function eliminarEspecialidad(boton) {

        const contenedor =
            document.getElementById("contenedor-especialidades");

        const filas =
            contenedor.querySelectorAll(".fila-especialidad");

        if (filas.length <= 1) {
            alert("El perito debe tener al menos una especialidad.");
            return;
        }

        boton.closest(".fila-especialidad").remove();
    }

</script>

</body>
</html>
