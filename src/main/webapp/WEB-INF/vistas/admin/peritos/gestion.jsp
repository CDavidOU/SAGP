
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gestión de peritos | SAGP</title>

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/estilos.css">
</head>

<body class="bg-light" style="overflow-x: hidden;">

<div class="container-fluid p-0 d-flex">

    <!-- Izquierdo -->
    <aside class="menu d-flex flex-column border-end"
           style="width:250px; height: 100vh; position: sticky; top: 0;">

        <jsp:include page="/WEB-INF/vistas/sidebar.jsp">
            <jsp:param name="seccionActiva" value="peritos"/>
        </jsp:include>

    </aside>

    <!-- Derecho -->
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
                ADMINISTRADOR / MORELOS
            </div>

            <h1 class="fw-bold texto mb-2">
                Gestión de peritos
            </h1>

            <p class="texto-muted mb-0">
                Consulta, registra y actualiza los perfiles del directorio estatal.
            </p>

        </div>

        <div class="px-4 mt-4">

            <div class="card bg-white border-0 rounded-3 shadow-sm p-4">

                <div class="d-flex justify-content-between align-items-end gap-3 flex-wrap mb-4">

                    <div>

                        <label class="form-label" for="buscar-perito">
                            Buscar perito
                        </label>

                        <input
                                class="form-control"
                                id="buscar-perito"
                                name="buscar"
                                type="search"
                                placeholder="Ej. Juan Carlos Pérez"
                                autocomplete="off">

                    </div>

                    <a href="${pageContext.request.contextPath}/admin/peritos/registrar"
                       class="btn btn-primario">

                        <i class="bi bi-person-plus me-2" aria-hidden="true"></i>
                        Agregar nuevo perito

                    </a>

                </div>

                <div class="table-responsive">

                    <table class="table align-middle mb-2 texto">

                        <thead class="table-light texto-muted">

                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">NOMBRE COMPLETO</th>
                            <th scope="col">MATERIA / ESPECIALIDAD PRINCIPAL</th>
                            <th scope="col">ESTADO</th>
                        </tr>

                        </thead>

                        <tbody id="tabla-peritos">

                        <c:forEach var="perito" items="${peritos}">

                            <tr class="fila-perito">

                                <td>
                                    <c:out value="${perito.idPerito}"/>
                                </td>

                                <td>
                                    <a href="${pageContext.request.contextPath}/admin/peritos/perfil?id=${perito.idPerito}">
                                        <c:out value="${perito.nombreCompleto}"/>
                                    </a>
                                </td>

                                <td>

                                    <c:forEach var="especialidad"
                                               items="${perito.especialidades}"
                                               varStatus="estado">

                                        <c:if test="${estado.index > 0}">
                                            <br>
                                        </c:if>

                                        <c:out value="${especialidad.materia}"/>
                                        /
                                        <c:out value="${especialidad.especialidad}"/>

                                    </c:forEach>

                                </td>

                                <td>

                                    <c:choose>

                                        <c:when test="${perito.disponible}">
                                            <span class="badge badge-proceso rounded-pill">
                                                Activo
                                            </span>
                                        </c:when>

                                        <c:otherwise>
                                            <span class="badge badge-pendiente rounded-pill">
                                                Inactivo
                                            </span>
                                        </c:otherwise>

                                    </c:choose>

                                </td>

                            </tr>

                        </c:forEach>

                        <c:if test="${empty peritos}">
                            <tr id="sin-registros">
                                <td colspan="4" class="text-center py-4 texto-muted">
                                    No hay peritos registrados.
                                </td>
                            </tr>
                        </c:if>

                        </tbody>

                    </table>

                </div>

                <p class="texto-muted small mb-0">
                    Selecciona un perito para consultar sus datos y casos históricos.
                </p>

            </div>

        </div>

    </main>

</div>

<script>
    document.addEventListener("DOMContentLoaded", function () {

        const buscador = document.getElementById("buscar-perito");
        const tabla = document.getElementById("tabla-peritos");

        if (!buscador || !tabla) {
            return;
        }

        const filas = tabla.querySelectorAll(".fila-perito");

        const mensaje = document.createElement("tr");
        mensaje.id = "sin-coincidencias";

        mensaje.innerHTML = `
            <td colspan="4" class="text-center py-4 texto-muted">
                No se encontraron peritos.
            </td>
        `;

        mensaje.style.display = "none";
        tabla.appendChild(mensaje);

        buscador.addEventListener("input", function () {

            const texto = buscador.value
                .toLowerCase()
                .trim();

            let encontrados = 0;

            filas.forEach(function (fila) {

                const contenido = fila.textContent.toLowerCase();

                const coincide = contenido.includes(texto);

                fila.style.display = coincide ? "" : "none";

                if (coincide) {
                    encontrados++;
                }

            });

            mensaje.style.display =
                (filas.length > 0 && encontrados === 0) ? "" : "none";

        });

    });
</script>

</body>
</html>
