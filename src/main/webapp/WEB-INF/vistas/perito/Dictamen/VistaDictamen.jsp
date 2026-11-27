<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vista del dictamen | SAGP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/estilos.css">
</head>
<body>

<div class="d-flex">
    <!-- Sidebar Portal del Perito -->
    <aside class="menu d-flex flex-column border-end" style="width:250px; height: 100vh; position: sticky; top: 0;">
        <jsp:include page="/WEB-INF/vistas/sidebarPerito.jsp">
            <jsp:param name="seccionActiva" value="dictamenes" />
        </jsp:include>
    </aside>

    <!-- Contenido -->
    <div class="flex-grow-1 fondo-crema d-flex flex-column">
        <div class="p-3 bg-white border-bottom d-flex justify-content-between header-top">
            <span class="texto-muted">Gestión y asignación de peritos judiciales</span>
            <div><span class="texto-verde fw-bold">MORELOS</span> <span class="texto-muted">/ Perito</span></div>
        </div>

        <div class="p-5 flex-grow-1">
            <small class="texto-verde fw-bold" style="font-size: 0.75rem;">DICTÁMENES / DOCUMENTO</small>
            <c:choose>
                <c:when test="${empty dictamen}">
                    <h2 class="fw-bold text-dark mt-2 mb-1">Aún no has entregado dictámenes</h2>
                    <p class="texto-muted mb-4">Cuando marques un peritaje como terminado, aquí podrás consultar el PDF entregado.</p>
                    <a href="${pageContext.request.contextPath}/perito/asignaciones" class="btn btn-secundario px-4 py-2 rounded-2">Ir a mis asignaciones</a>
                </c:when>
                <c:otherwise>
                    <h2 class="fw-bold text-dark mt-2 mb-1"><c:out value="${dictamen.nombreArchivo}"/></h2>
                    <p class="texto-muted mb-4">PDF · Entregado el ${dictamen.fechaEntregaTexto} · <c:out value="${dictamen.estadoRevision}"/></p>

                    <!-- Datos del caso -->
                    <div class="card-custom bg-white border rounded-3 p-4 mb-4">
                        <h6 class="fw-bold text-dark mb-3">DICTAMEN PERICIAL · <c:out value="${caso.especialidad}"/></h6>
                        <p class="mb-1"><strong>Folio:</strong> <c:out value="${caso.folio}"/></p>
                        <p class="mb-1"><strong>Expediente:</strong> <c:out value="${caso.numeroExpediente}"/></p>
                        <p class="mb-0"><strong>Juzgado:</strong> <c:out value="${caso.juzgadoOrigen}"/></p>
                        <c:if test="${not empty dictamen.comentariosAdmin}">
                            <p class="mt-3 mb-0"><strong>Comentarios del administrador:</strong> <c:out value="${dictamen.comentariosAdmin}"/></p>
                        </c:if>
                    </div>

                    <!-- Previsualizador del PDF real -->
                    <c:choose>
                        <c:when test="${archivoDisponible}">
                            <iframe class="w-100 border rounded-3 mb-4" style="height: 70vh;"
                                    title="Dictamen en PDF"
                                    src="${pageContext.request.contextPath}/perito/dictamen/archivo?id=${dictamen.idDictamen}"></iframe>
                        </c:when>
                        <c:otherwise>
                            <div class="alerta-dorada p-3 mb-4" role="status">
                                El archivo PDF de este dictamen no está disponible en el servidor
                                (los dictámenes de prueba no tienen archivo).
                            </div>
                        </c:otherwise>
                    </c:choose>

                    <div class="d-flex gap-2">
                        <a href="${pageContext.request.contextPath}/perito/dictamen-entregado?id=${dictamen.idDictamen}" class="btn btn-secundario px-4 py-2 rounded-2">Volver al dictamen</a>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>