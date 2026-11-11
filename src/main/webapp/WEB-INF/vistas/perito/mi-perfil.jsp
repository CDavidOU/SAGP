<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mi perfil</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body class="bg-light" style="overflow-x: hidden;">

<div class="container-fluid p-0 d-flex">
    <jsp:include page="/WEB-INF/vistas/sidebarPerito.jsp">
        <jsp:param name="seccionActiva" value="perfil" />
    </jsp:include>

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
                    <h5 class="fw-bold mb-1">Lucía Hernández López</h5>
                    <p class="texto mb-3">Familiar / Psicología</p>

                    <div class="alert alerta-verde py-2 d-none" id="okContacto" role="status">Datos de contacto guardados.</div>

                    <form id="formContacto" novalidate>
                        <div class="row g-3">
                            <div class="col-md-6">
                                <label class="form-label texto small" for="correo">Correo electrónico</label>
                                <input class="form-control" type="email" id="correo" value="lucia.hernandez@ejemplo.test" required>
                                <div class="invalid-feedback">Ingrese un correo válido.</div>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label texto small" for="telefono">Teléfono</label>
                                <input class="form-control" type="tel" id="telefono" value="777 123 4567" pattern="[0-9 +()\-]{7,20}" required>
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
                    <div class="alert alerta-verde py-2 d-none" id="okPassword" role="status">Contraseña actualizada.</div>
                    <button class="btn btn-secundario" type="button" data-bs-toggle="modal" data-bs-target="#modalPassword">Cambiar contraseña</button>
                </div>
            </div>
        </div>
    </main>
</div>

<!-- Ventana para cambiar la contraseña (añadida; no aparece en el Figma) -->
<div class="modal fade" id="modalPassword" tabindex="-1" aria-labelledby="tituloModalPassword" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content border-0 rounded-3">
            <form id="formPassword" novalidate>
                <div class="modal-header border-0">
                    <h5 class="fw-bold mb-0" id="tituloModalPassword">Cambiar contraseña</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label class="form-label texto small" for="passActual">Contraseña actual</label>
                        <input class="form-control" type="password" id="passActual" autocomplete="current-password" required>
                        <div class="invalid-feedback">Ingrese su contraseña actual.</div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label texto small" for="passNueva">Nueva contraseña</label>
                        <input class="form-control" type="password" id="passNueva" autocomplete="new-password" required>
                        <div class="invalid-feedback">Ingrese la nueva contraseña.</div>
                    </div>
                    <div class="mb-0">
                        <label class="form-label texto small" for="passConfirmar">Confirmar nueva contraseña</label>
                        <input class="form-control" type="password" id="passConfirmar" autocomplete="new-password" required>
                        <div class="invalid-feedback">Las contraseñas no coinciden.</div>
                    </div>
                </div>
                <div class="modal-footer border-0">
                    <button type="button" class="btn btn-secundario" data-bs-dismiss="modal">Cancelar</button>
                    <button type="submit" class="btn btn-primario">Guardar contraseña</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/mi-perfil.js"></script>
</body>
</html>
