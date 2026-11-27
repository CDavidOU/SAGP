<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
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

            <h1 class="texto-verde fw-bold mb-2">Buen día, <c:out value="${perfil.nombre}"/></h1>

            <p class="texto mb-4">
                Aquí puedes consultar tus asignaciones y entregar los dictámenes finales.
            </p>

            <section class="row g-3 mb-4" aria-label="Resumen de asignaciones">
                <article class="col-12 col-md-4">
                    <div class="card bg-white border-0 rounded-3 shadow-sm h-100">
                        <div class="card-body p-4">
                            <div class="texto-muted mb-2">Peritajes en proceso</div>
                            <div class="texto-verde fw-bold display-5">${enProceso}</div>
                        </div>
                    </div>
                </article>

                <article class="col-12 col-md-4">
                    <div class="card bg-white border-0 rounded-3 shadow-sm h-100">
                        <div class="card-body p-4">
                            <div class="texto-muted mb-2">Dictámenes entregados</div>
                            <div class="texto-verde fw-bold display-5">${entregados}</div>
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
                        <c:forEach var="a" items="${asignaciones}">
                            <tr>
                                <td>
                                    <a class="texto-verde fw-semibold d-block text-decoration-none"
                                       href="${pageContext.request.contextPath}/perito/detalle-caso?id=${a.idSolicitud}">
                                        <c:out value="${a.folio}"/>
                                    </a>
                                    <span class="texto-muted small"><c:out value="${a.numeroExpediente}"/></span>
                                </td>
                                <td><c:out value="${a.materia}"/> · <c:out value="${a.municipio}"/></td>
                                <td><c:out value="${a.especialidad}"/></td>
                                <td>${a.fechaAsignacionDia}<br>${a.fechaAsignacionHora}</td>
                            </tr>
                        </c:forEach>
                        <c:if test="${empty asignaciones}">
                            <tr>
                                <td colspan="4" class="text-center texto-muted py-4">
                                    No tienes peritajes en proceso por ahora.
                                </td>
                            </tr>
                        </c:if>
                        </tbody>
                    </table>
                </div>
            </section>

            <c:if test="${not empty asignaciones}">
                <div class="mt-4 mb-4">
                    <a class="btn btn-primario"
                       href="${pageContext.request.contextPath}/perito/detalle-caso?id=${asignaciones[0].idSolicitud}">
                        Abrir <c:out value="${asignaciones[0].folio}"/>
                    </a>
                </div>
            </c:if>

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