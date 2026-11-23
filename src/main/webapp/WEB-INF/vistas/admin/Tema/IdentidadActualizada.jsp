<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Tema</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/estilos.css">
</head>
<body class="bg-light" style="overflow-x: hidden">

    <div class="container-fluid p-0 d-flex">
        <!-- Izquierdo -->
        <aside class="menu d-flex flex-column border-end" style="width:250px; height: 100vh; position: sticky; top: 0;">
            <jsp:include page="/WEB-INF/vistas/sidebar.jsp">
                <jsp:param name="seccionActiva" value="branding"/>
            </jsp:include>
        </aside>

        <!-- Derecho -->
        <main class="fondo-crema" style="flex: 1;">
            <div class="bg-white row p-3">
                <div class=" col-8">
                    <p class="texto-gris mb-0">Gestion y asignación de peritos judiciales</p>
                </div>
                <div class=" col-4">
                    <p class="texto-verde fw-bold mb-1 ">Administrador/Morelos</p>
                </div>
            </div>

            <div class="px-4 my-4">
                <h2 class="fw-bold texto-gris">Identidad institucional actualizada</h2>
                <p class="texto-dorado">Confirmación de guardado</p>
            </div>

            <div class="px-4 my-4">
                <div  class="alerta-verde p-2">
                    <h5 class="texto-verde fw-bold">Cambios guardados</h5>
                    <p class="texto">El color primario, el acento, el logotipo y las imágenes quedan configurados para la nueva administración</p>
                </div>
            </div>

            <div class="px-4 my-4">
                <div class="card shadow border-0 rounded-3 bg-white p-2">
                    <div class="card-body">
                        <p class="texto mb-2">Aplicacion de la identidad</p>
                        <h1 class="texto-verde fw-bold">Inicio de sesión · Administrador · Perito</h1>
                        <small class="text-muted">El cambio visual conserva usuarios, solicitudes, asignaciones y dictámenes</small>
                    </div>
                </div>
            </div>

            <div class="row m-4">
                <a href="${pageContext.request.contextPath}/tema" class="btn btn-primario col-3">Volver a personalización</a>
            </div>
        </main>
    </div>

</body>
</html>
