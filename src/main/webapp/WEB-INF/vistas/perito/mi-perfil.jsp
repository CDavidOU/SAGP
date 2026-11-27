<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mi perfil</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/estilos.css">
</head>
<body class="bg-light" style="overflow-x: hidden;">

<div class="container-fluid p-0 d-flex">
    <aside class="menu d-flex flex-column border-end" style="width:250px; height: 100vh; position: sticky; top: 0;">
        <jsp:include page="/WEB-INF/vistas/sidebarPerito.jsp">
            <jsp:param name="seccionActiva" value="perfil" />
        </jsp:include>
    </aside>

    <main class="fondo-crema" style="flex: 1;">

        <div class="p-3 bg-white row">
            <div class="col-8">
                <p class="mb-0">Gestión y asignación de peritos judiciales</p>
            </div>
            <div class="col-4">
                <p class="texto-verde fw-bold mb-1">Perito/Morelos</p>
            </div>
        </div>

        <div class="px-4 my-4">
            <p class="texto-verde fw-bold text-uppercase mb-1" style="font-size: 0.75rem;">Perito / Morelos</p>
            <h2 class="fw-bold">Mi perfil</h2>
            <p class="texto-dorado">Actualice los datos de contacto y proteja el acceso a su cuenta.</p>
        </div>

        <div class="px-4 mb-4">
            <div class="card shadow border-0 rounded-3 bg-white">
                <div class="card-body">
                    <h5 class="fw-bold mb-1"><c:out value="${perfil.nombreCompleto}"/></h5>
                    <p class="texto mb-3"><c:out value="${perfil.materia}"/> / <c:out value="${perfil.especialidad}"/></p>

                    <c:if test="${not empty error}">
                        <div class="alert alert-danger py-2" role="alert"><c:out value="${error}"/></div>
                    </c:if>

                    <form id="formContacto" method="post" action="${pageContext.request.contextPath}/perfil">
                        <div class="row g-3">
                            <div class="col-md-6">
                                <label class="form-label texto small" for="correo">Correo electrónico</label>
                                <input class="form-control" type="email" id="correo" name="correo" maxlength="100" required
                                       value="<c:out value="${empty correoEscrito ? perfil.correo : correoEscrito}"/>">
                                <div class="invalid-feedback">Ingrese un correo válido.</div>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label texto small" for="telefono">Teléfono</label>
                                <input class="form-control" type="tel" id="telefono" name="telefono" pattern="[0-9 +()\-]{7,20}" required
                                       value="<c:out value="${empty telefonoEscrito ? perfil.telefono : telefonoEscrito}"/>">
                                <div class="invalid-feedback">Ingrese un teléfono válido (solo números, espacios, + y guiones).</div>
                            </div>
                        </div>
                        <button class="btn btn-primario mt-3" type="submit">Guardar datos de contacto</button>
                    </form>
                </div>
            </div>
        </div>

        <div class="px-4 pb-4">
            <div class="card shadow border-0 rounded-3 bg-white">
                <div class="card-body">
                    <h5 class="fw-bold mb-1">Cambiar contraseña</h5>
                    <p class="texto">Actualice su contraseña de acceso al sistema.</p>
                    <a href="${pageContext.request.contextPath}/cambiarcontrasena" class="btn btn-secundario">Cambiar contraseña</a>
                </div>
            </div>
        </div>
    </main>
</div>
</body>
</html>
