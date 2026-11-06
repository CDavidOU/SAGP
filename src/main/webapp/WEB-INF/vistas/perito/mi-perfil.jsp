<%--
  Created by IntelliJ IDEA.
  User: BrianGalvez
  Date: 05/11/2026
  Time: 11:15 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mi perfil · Peritos Morelos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/mi-perfil.css" rel="stylesheet">
</head>
<body>
<div class="d-flex min-vh-100">

    <aside class="sidebar offcanvas-lg offcanvas-start d-flex flex-column flex-shrink-0" id="menu" tabindex="-1">
        <div class="brand p-3"><img src="${pageContext.request.contextPath}/img/logo-morelos.jpeg" alt="Gobierno del Estado de Morelos"></div>
        <p class="etiqueta-menu px-3 pt-4 mb-2">Portal del perito</p>
        <nav class="nav flex-column px-3 gap-2" aria-label="Navegación del perito">
            <a class="nav-link" href="#"><i class="bi bi-file-earmark-text"></i>Mis asignaciones</a>
            <a class="nav-link" href="#"><i class="bi bi-file-earmark-text"></i>Dictámenes</a>
            <a class="nav-link active" href="#" aria-current="page"><i class="bi bi-people"></i>Mi perfil</a>
        </nav>
        <div class="mt-auto p-3">
            <p class="cobertura-titulo">Cobertura estatal</p>
            <p class="cobertura-texto">Todos los municipios<br>de Morelos</p>
            <div class="d-flex align-items-center gap-2 mb-3">
                <span class="avatar d-flex align-items-center justify-content-center">KVR</span>
                <span class="fw-semibold" style="font-size: .75rem;">Karla Villalva Ramirez</span>
            </div>
            <button class="btn btn-outline-sagp" type="button">Cerrar sesión</button>
        </div>
    </aside>

    <div class="flex-grow-1 d-flex flex-column">

        <header class="barra-superior">
            <button class="btn btn-outline-sagp d-lg-none" type="button" data-bs-toggle="offcanvas" data-bs-target="#menu" aria-controls="menu">Menú</button>
            <span class="text-secondary">Gestión y asignación de peritos judiciales</span>
            <span class="ms-auto texto-sagp" style="font-size: .75rem;">MORELOS &nbsp;/&nbsp; Perito</span>
        </header>

        <main class="contenido">
            <p class="crumb">Perito / Morelos</p>
            <h1 class="titulo-vista">Mi perfil</h1>
            <p class="subtitulo-vista">Actualice los datos de contacto y proteja el acceso a su cuenta.</p>

            <div class="card mb-4"><div class="card-body">
                <h2 class="card-titulo mb-1">Karla Villalva Ramirez</h2>
                <p class="text-secondary mb-3">Familiar / Psicología</p>

                <div class="alert aviso py-2 d-none" id="okContacto" role="status">Datos de contacto guardados.</div>

                <form id="formContacto" novalidate>
                    <div class="row g-3">
                        <div class="col-md-6">
                            <label class="dato-label" for="correo">Correo electrónico</label>
                            <input class="form-control" type="email" id="correo" value="lucia.hernandez@ejemplo.test" required>
                            <div class="invalid-feedback">Ingrese un correo válido.</div>
                        </div>
                        <div class="col-md-6">
                            <label class="dato-label" for="telefono">Teléfono</label>
                            <input class="form-control" type="tel" id="telefono" value="777 123 4567" pattern="[0-9 +()\-]{7,20}" required>
                            <div class="invalid-feedback">Ingrese un teléfono válido (solo números, espacios, + y guiones).</div>
                        </div>
                    </div>
                    <button class="btn btn-sagp mt-3" type="submit">Guardar datos de contacto</button>
                </form>
            </div></div>

            <div class="card"><div class="card-body">
                <h2 class="card-titulo mb-1">Cambiar contraseña</h2>
                <p class="text-secondary">Actualice su contraseña de acceso al sistema.</p>
                <div class="alert aviso py-2 d-none" id="okPassword" role="status">Contraseña actualizada.</div>
                <button class="btn btn-outline-sagp" type="button" data-bs-toggle="modal" data-bs-target="#modalPassword">Cambiar contraseña</button>
            </div></div>
        </main>
    </div>
</div>

<!-- Ventana para cambiar la contraseña-->
<div class="modal fade" id="modalPassword" tabindex="-1" aria-labelledby="tituloModalPassword" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <form id="formPassword" novalidate>
                <div class="modal-header border-0">
                    <h2 class="card-titulo mb-0" id="tituloModalPassword">Cambiar contraseña</h2>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label class="dato-label" for="passActual">Contraseña actual</label>
                        <input class="form-control" type="password" id="passActual" autocomplete="current-password" required>
                        <div class="invalid-feedback">Ingrese su contraseña actual.</div>
                    </div>
                    <div class="mb-3">
                        <label class="dato-label" for="passNueva">Nueva contraseña</label>
                        <input class="form-control" type="password" id="passNueva" autocomplete="new-password" required>
                        <div class="invalid-feedback">Ingrese la nueva contraseña.</div>
                    </div>
                    <div class="mb-0">
                        <label class="dato-label" for="passConfirmar">Confirmar nueva contraseña</label>
                        <input class="form-control" type="password" id="passConfirmar" autocomplete="new-password" required>
                        <div class="invalid-feedback">Las contraseñas no coinciden.</div>
                    </div>
                </div>
                <div class="modal-footer border-0">
                    <button type="button" class="btn btn-outline-sagp" data-bs-dismiss="modal">Cancelar</button>
                    <button type="submit" class="btn btn-sagp">Guardar contraseña</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/mi-perfil.js"></script>
</body>
</html>
