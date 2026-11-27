<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cambiar contraseña</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/estilos.css">
</head>
<body class="bg-light" style="overflow-x: hidden;">

<div class="container-fluid p-0 d-flex">
    <!-- Izquierdo -->
    <aside class="menu d-flex flex-column border-end" style="width:250px; height: 100vh; position: sticky; top: 0;">
        <jsp:include page="/WEB-INF/vistas/sidebarPerito.jsp">
            <jsp:param name="seccionActiva" value="perfil" />
        </jsp:include>
    </aside>

    <main class="bg-white"  style="flex: 1;">
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
            <h2 class="fw-bold">Cambiar contraseña</h2>
            <p class="texto-dorado">Ingresa tu contraseña actual y confirma la nueva.</p>
        </div>

        <div class="px-4 my-4">
            <form method="post" action="${pageContext.request.contextPath}/cambiarcontrasena"
                  class="shadow bg-white rounded card border-0 p-4">
                <h3 class="texto mb-1">Seguridad de la cuenta</h3>
                <c:if test="${not empty error}">
                    <div class="alert alert-danger py-2" role="alert"><c:out value="${error}"/></div>
                </c:if>
                <label class="form-label texto-gris" for="actual">Contraseña actual</label>
                <input type="password" class="form-control" id="actual" name="actual" required autocomplete="current-password">
                <label class="form-label texto-gris" for="nueva">Nueva contraseña</label>
                <input type="password" class="form-control" id="nueva" name="nueva" required minlength="8" autocomplete="new-password">
                <label class="form-label texto-gris" for="confirmaNueva">Confirmar nueva contraseña</label>
                <input type="password" class="form-control" id="confirmaNueva" name="confirmaNueva" required minlength="8" autocomplete="new-password">
                <p class="texto-muted">Use una contraseña distinta a la actual, de al menos 8 caracteres con letras y números.</p>
                <button type="submit" class="btn btn-primario">Actualizar contraseña</button>
            </form>
            <a href="${pageContext.request.contextPath}/perfil" class="btn btn-secundario mt-4">Cancelar</a>
        </div>

    </main>

</div>
</body>
</html>
