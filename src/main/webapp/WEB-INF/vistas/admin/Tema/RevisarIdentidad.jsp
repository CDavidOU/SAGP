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
        <aside class="menu d-flex flex-column border-end"  style="width:250px; height: 100vh; position: sticky; top: 0;">
            <jsp:include page="/WEB-INF/vistas/sidebar.jsp">
                <jsp:param name="seccionActiva" value="branding"/>
            </jsp:include>
        </aside>
        <!-- Derecho -->
        <main class="fondo-crema" style="flex: 1">
            <div class="p-3 bg-white row">
                <div class="col-8">
                    <p class="texto-gris mb-0">Gestion y asignación de peritos judiciales</p>
                </div>
                <div class="col-4">
                    <p class="texto-verde fw-bold mb-1">MORELOS / Administrador</p>
                </div>
            </div>

            <div class="px-4 my-4">
                <h2 class="texto-gris">Revisar identidad institucional</h2>
                <p class="texto-dorado">Vista de ejemplo de cambios preparados antes de guardar</p>
            </div>

             <div class="px-4 my-4">
                 <div  class="alerta-verde p-2">
                     <h5 class="texto-verde fw-bold">Confirma la nueva identidad</h5>
                     <p class="texto">Al guardar se aplicaran los colores y recursos institucionales</p>
                 </div>
             </div>

            <div class="px-4 my-4">
                <div class="card shadow border-0 rounded-3 bg-white p-4">
                    <h3 class="texto">Resumen de cambios</h3>
                    <div class="row ">
                        <div class="col-6">
                        <label class="form-label texto-verde">Color primario</label>
                        <input type="text" class="form-control" placeholder="#006837" readonly>
                        </div>
                        <div class="col-6">
                            <label class="form-label texto-verde">Color secundario/acento</label>
                            <input type="text" class="form-control" placeholder="#B89758" readonly>
                        </div>
                    </div>
                    <h5 class="texto">Logotipo oficial : logo.png</h5>
                    <h5 class="texto">Imagen de acceso: Imagen-institucional.png</h5>
                    <p class="texto-muted">Archivos ilustrativos del prototipo.</p>
                    <div class="row p-2" style="background-color: lightgray">
                        <div class="col-3 bg-white">
                            <h4 class="texto-verde">LOGOTIPO INSTITUCIONAL</h4>
                        </div>
                        <div class="col-1">

                        </div>
                        <div class="col-8 alerta-verde p-2">
                            <h4 class="texto-verde">Area de imagen institucional</h4>
                            <p class="texto-muted">Recurso oficial configurable</p>
                        </div>
                    </div>
                    <div class="row m-2">
                        <a href="${pageContext.request.contextPath}/indentidadActualizada" class="btn btn-primario col-2 m-2">Guardar</a>
                        <a href="${pageContext.request.contextPath}/tema" class="btn btn-secundario col-2 ml-0 m-2">Seguir editando</a>
                    </div>
                </div>
            </div>

        </main>

    </div>

</body>
</html>
