<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Perfil del perito | SAGP</title>

    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet">

    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
            rel="stylesheet">

    <link
            href="${pageContext.request.contextPath}/assets/css/perfil-perito.css"
            rel="stylesheet">
</head>

<body>
<header class="topbar">
    <div class="brand">
        <img
                class="brand-logo"
                src="${pageContext.request.contextPath}/assets/img/morelos-logo-horizontal.jpg"
                alt="Gobierno del Estado de Morelos">

        <span class="brand-divider" aria-hidden="true"></span>

        <span class="brand-system-name">
                Gestión y asignación de peritos judiciales
            </span>
    </div>

    <div class="user-label">MORELOS&nbsp; / &nbsp;Administrador</div>
</header>

<div class="layout">
    <aside class="sidebar">
        <p class="sidebar-title">ADMINISTRACIÓN</p>

        <nav class="sidebar-nav" aria-label="Navegación de administración">
            <a class="nav-link-item" href="#">
                <i class="bi bi-grid" aria-hidden="true"></i>
                <span>Resumen</span>
            </a>

            <a class="nav-link-item" href="#">
                <i class="bi bi-file-earmark-text nav-icon-accent" aria-hidden="true"></i>
                <span>Solicitudes</span>
            </a>

            <a class="nav-link-item active" href="#">
                <i class="bi bi-people nav-icon-accent" aria-hidden="true"></i>
                <span>Peritos</span>
            </a>

            <a class="nav-link-item" href="#">
                <i class="bi bi-bar-chart" aria-hidden="true"></i>
                <span>Carga de trabajo</span>
            </a>

            <a class="nav-link-item" href="#">
                <i class="bi bi-file-earmark-text nav-icon-accent" aria-hidden="true"></i>
                <span>Asignación manual</span>
            </a>

            <a class="nav-link-item" href="#">
                <i class="bi bi-file-earmark-text nav-icon-accent" aria-hidden="true"></i>
                <span>Branding / Tema</span>
            </a>
        </nav>

        <div class="sidebar-bottom">
            <div class="coverage-title">Cobertura estatal</div>

            <p class="coverage-description">
                Todos los municipios<br>
                de Morelos
            </p>

            <div class="profile">
                <div class="profile-initials" aria-hidden="true">AM</div>

                <div>
                    <div class="profile-name">Ana Martínez</div>
                    <div class="profile-role">Administradora</div>
                </div>
            </div>

            <a class="logout-link" href="#">
                <i class="bi bi-box-arrow-left" aria-hidden="true"></i>
                <span>Cerrar sesión</span>
            </a>
        </div>
    </aside>

    <main class="content">
        <div class="eyebrow">ADMINISTRADOR / MORELOS</div>

        <h1>Lucía Hernández López</h1>

        <p class="page-description">
            PER-001 · Datos personales, especialidades y seguimiento de casos.
        </p>

        <section class="panel profile-panel">
            <h2>Datos del perito</h2>

            <form class="profile-form">
                <div class="form-grid">
                    <div>
                        <label class="form-label" for="nombre">Nombre</label>
                        <input
                                class="form-control"
                                id="nombre"
                                name="nombre"
                                type="text"
                                value="Lucía">
                    </div>

                    <div>
                        <label class="form-label" for="apellidos">Apellidos</label>
                        <input
                                class="form-control"
                                id="apellidos"
                                name="apellidos"
                                type="text"
                                value="Hernández López">
                    </div>

                    <div>
                        <label class="form-label" for="correo">
                            Correo electrónico
                        </label>
                        <input
                                class="form-control"
                                id="correo"
                                name="correo"
                                type="email"
                                value="lucia.hernandez@poderjudicial.gob.mx">
                    </div>

                    <div>
                        <label class="form-label" for="telefonoEdad">
                            Teléfono / Edad
                        </label>
                        <input
                                class="form-control"
                                id="telefonoEdad"
                                name="telefonoEdad"
                                type="text"
                                value="777 234 5678 · 36 años">
                    </div>
                </div>

                <div class="specialty-actions">
                    <label class="specialty-option">
                        <input type="checkbox" checked>
                        <span>Familiar / Psicología</span>
                    </label>

                    <label class="specialty-option">
                        <input type="checkbox" checked>
                        <span>Civil / Psicología</span>
                    </label>

                    <button class="btn-sagp" type="button">Guardar cambios</button>
                </div>
            </form>
        </section>

        <section class="status-panel" aria-label="Estado del perito">
            <label class="status-control">
                <input type="checkbox" checked>
                <span class="status-switch" aria-hidden="true"></span>
                <span class="status-label">Activo</span>
            </label>

            <p class="status-description">
                Al desactivar, la fecha de inicio de inactividad se registra automáticamente.
            </p>
        </section>

        <section class="cases-section">
            <h2>Casos / Peritajes históricos y activos</h2>

            <div class="table-responsive cases-table-wrap">
                <table class="table cases-table">
                    <thead>
                    <tr>
                        <th scope="col">SOLICITUD / EXPEDIENTE</th>
                        <th scope="col">JUZGADO</th>
                        <th scope="col">ESTADO</th>
                        <th scope="col">INICIO / TÉRMINO</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>SOL-2026-0148 · EXP-391/2026</td>
                        <td>Familiar · Cuernavaca</td>
                        <td>
                            <span class="case-status in-progress">En proceso</span>
                        </td>
                        <td>22 oct 2026 / Pendiente</td>
                    </tr>
                    <tr>
                        <td>SOL-2026-0131 · EXP-320/2026</td>
                        <td>Familiar · Jiutepec</td>
                        <td>
                            <span class="case-status completed">Terminado</span>
                        </td>
                        <td>16 oct 2026 / 20 oct 2026</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </section>
    </main>
</div>
</body>
</html>