<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Gestión de peritos | SAGP</title>

    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet">

    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
            rel="stylesheet">

    <link
            href="${pageContext.request.contextPath}/assets/css/peritos.css"
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
                <i class="bi bi-file-earmark-text nav-icon-accent"
                   aria-hidden="true"></i>
                <span>Solicitudes</span>
            </a>

            <a class="nav-link-item active" href="#" aria-current="page">
                <i class="bi bi-people" aria-hidden="true"></i>
                <span>Peritos</span>
            </a>

            <a class="nav-link-item" href="#">
                <i class="bi bi-bar-chart" aria-hidden="true"></i>
                <span>Carga de trabajo</span>
            </a>

            <a class="nav-link-item" href="#">
                <i class="bi bi-file-earmark-text nav-icon-accent"
                   aria-hidden="true"></i>
                <span>Asignación manual</span>
            </a>

            <a class="nav-link-item" href="#">
                <i class="bi bi-file-earmark-text nav-icon-accent"
                   aria-hidden="true"></i>
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

        <h1>Gestión de peritos</h1>

        <p class="page-description">
            Consulta, registra y actualiza los perfiles del directorio estatal.
        </p>

        <section class="directory" aria-label="Directorio de peritos">
            <div class="directory-toolbar">
                <div class="search-field">
                    <label for="buscar-perito">Buscar perito</label>

                    <input
                            id="buscar-perito"
                            name="buscar"
                            type="search"
                            placeholder="Ej. Juan Carlos Pérez">
                </div>

                <button class="primary-button" type="button">
                    Agregar Nuevo Perito
                </button>
            </div>

            <div class="table-container">
                <table class="peritos-table">
                    <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">NOMBRE COMPLETO</th>
                        <th scope="col">MATERIA / ESPECIALIDAD PRINCIPAL</th>
                        <th scope="col">ESTADO</th>
                    </tr>
                    </thead>

                    <tbody>
                    <tr>
                        <td>PER-001</td>
                        <td>Lucía Hernández López</td>
                        <td>Familiar / Psicología</td>
                        <td>
                            <span class="status-badge status-active">Activo</span>
                        </td>
                    </tr>

                    <tr>
                        <td>PER-002</td>
                        <td>Carlos Méndez Ruiz</td>
                        <td>Civil / Grafoscopía</td>
                        <td>
                            <span class="status-badge status-active">Activo</span>
                        </td>
                    </tr>

                    <tr>
                        <td>PER-003</td>
                        <td>María Torres García</td>
                        <td>Familiar / Psicología</td>
                        <td>
                            <span class="status-badge status-active">Activo</span>
                        </td>
                    </tr>

                    <tr>
                        <td>PER-004</td>
                        <td>Adriana López Morales</td>
                        <td>Civil / Valuación</td>
                        <td>
                            <span class="status-badge status-inactive">Inactivo</span>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <p class="table-help">
                Selecciona un perito para consultar sus datos y casos históricos.
            </p>
        </section>
    </main>
</div>
</body>
</html>