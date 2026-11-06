<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registrar perito | SAGP</title>

    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet">

    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
            rel="stylesheet">

    <link
            href="${pageContext.request.contextPath}/assets/css/registrar-perito.css"
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
        <div class="eyebrow">PERITOS / NUEVO REGISTRO</div>

        <h1>Registrar perito</h1>

        <p class="page-description">
            Los campos marcados con * son obligatorios.
        </p>

        <form class="register-form">
            <section class="panel">
                <h2>Información del perito</h2>

                <div class="form-grid">
                    <div>
                        <label class="form-label" for="nombre">
                            Nombre completo *
                        </label>
                        <input
                                class="form-control"
                                id="nombre"
                                name="nombre"
                                type="text"
                                placeholder="Nombre y apellidos"
                                required>
                    </div>

                    <div>
                        <label class="form-label" for="correo">
                            Correo electrónico *
                        </label>
                        <input
                                class="form-control"
                                id="correo"
                                name="correo"
                                type="email"
                                placeholder="nombre@ejemplo.mx"
                                required>
                    </div>

                    <div>
                        <label class="form-label" for="telefono">Teléfono</label>
                        <input
                                class="form-control"
                                id="telefono"
                                name="telefono"
                                type="tel"
                                placeholder="777 000 0000">
                    </div>

                    <div>
                        <label class="form-label" for="estado">Estado</label>
                        <select class="form-select" id="estado" name="estado">
                            <option selected>Activo</option>
                            <option>Inactivo</option>
                        </select>
                    </div>
                </div>
            </section>

            <section class="panel">
                <h2>Materias y especialidades</h2>

                <p class="panel-intro">
                    Agrega cada combinación que el perito puede atender.
                </p>

                <div class="form-grid">
                    <div>
                        <label class="form-label" for="materia">Materia *</label>
                        <select class="form-select" id="materia" name="materia">
                            <option selected>Familiar</option>
                            <option>Civil</option>
                            <option>Penal</option>
                            <option>Laboral</option>
                        </select>
                    </div>

                    <div>
                        <label class="form-label" for="especialidad">
                            Especialidad *
                        </label>
                        <select class="form-select" id="especialidad" name="especialidad">
                            <option selected>Psicología</option>
                            <option>Grafoscopía</option>
                            <option>Valuación</option>
                            <option>Criminalística</option>
                        </select>
                    </div>
                </div>

                <div class="combination-list" aria-label="Combinaciones agregadas">
                    <span class="combination-chip">Familiar / Psicología</span>
                    <span class="combination-chip">Civil / Psicología</span>
                </div>

                <button class="btn-add-combination" type="button">
                    <i class="bi bi-plus-lg" aria-hidden="true"></i>
                    Agregar combinación
                </button>
            </section>

            <div class="form-actions">
                <button class="btn-sagp" type="button">Guardar perito</button>

                <a
                        class="btn-cancel"
                        href="${pageContext.request.contextPath}/admin/peritos">
                    Cancelar
                </a>
            </div>

            <p class="coverage-note">
                Cobertura automática: todos los municipios de Morelos.
            </p>
        </form>
    </main>
</div>
</body>
</html>