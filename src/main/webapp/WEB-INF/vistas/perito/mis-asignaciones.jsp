<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Mis asignaciones | SAGP</title>

    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet">

    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
            rel="stylesheet">

    <link
            href="${pageContext.request.contextPath}/assets/css/mis-asignaciones.css"
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

    <div class="user-label">MORELOS&nbsp; / &nbsp;Perito</div>
</header>

<div class="layout">
    <aside class="sidebar">
        <p class="sidebar-title">PORTAL DEL PERITO</p>

        <nav class="sidebar-nav" aria-label="Navegación del perito">
            <a class="nav-link-item active" href="${pageContext.request.contextPath}/perito/asignaciones">
                <i class="bi bi-file-earmark-text nav-icon-accent" aria-hidden="true"></i>
                <span>Mis asignaciones</span>
            </a>

            <a class="nav-link-item" href="#">
                <i class="bi bi-file-earmark-text" aria-hidden="true"></i>
                <span>Dictámenes</span>
            </a>

            <a class="nav-link-item" href="#">
                <i class="bi bi-people" aria-hidden="true"></i>
                <span>Mi perfil</span>
            </a>
        </nav>

        <div class="sidebar-bottom">
            <div class="coverage-title">Cobertura estatal</div>

            <p class="coverage-description">
                Todos los municipios<br>
                de Morelos
            </p>

            <div class="profile">
                <div class="profile-initials" aria-hidden="true">LH</div>

                <div>
                    <div class="profile-name">Lucía Hernández</div>
                    <div class="profile-role">Perito</div>
                </div>
            </div>

            <a class="logout-link" href="#">
                <i class="bi bi-box-arrow-left" aria-hidden="true"></i>
                <span>Cerrar sesión</span>
            </a>
        </div>
    </aside>

    <main class="content">
        <div class="eyebrow">PORTAL DEL PERITO</div>

        <h1>Buen día, Lucía</h1>

        <p class="page-description">
            Aquí puedes consultar tus asignaciones y entregar los dictámenes finales.
        </p>

        <section class="summary-grid" aria-label="Resumen de asignaciones">
            <article class="summary-card">
                <div class="summary-label">Peritajes en proceso</div>
                <div class="summary-value">2</div>
            </article>

            <article class="summary-card">
                <div class="summary-label">Dictámenes entregados</div>
                <div class="summary-value">12</div>
            </article>

            <article class="summary-card">
                <div class="summary-label">Tu cobertura</div>
                <div class="summary-value">Todo Morelos</div>
            </article>
        </section>

        <div class="assignments-table-wrap">
            <table class="table assignments-table mb-0">
                <thead>
                <tr>
                    <th scope="col">FOLIO / EXPEDIENTE</th>
                    <th scope="col">JUZGADO</th>
                    <th scope="col">ESPECIALIDAD</th>
                    <th scope="col">INICIO</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td>
                        <span class="case-folio">SOL-2026-0148</span>
                        <span class="case-expediente">EXP-391/2026</span>
                    </td>
                    <td>Familiar · Cuernavaca</td>
                    <td>Psicología</td>
                    <td>22 oct 2026<br>09:42 h</td>
                </tr>

                <tr>
                    <td>
                        <span class="case-folio">SOL-2026-0142</span>
                        <span class="case-expediente">EXP-364/2026</span>
                    </td>
                    <td>Familiar · Emiliano Zapata</td>
                    <td>Psicología</td>
                    <td>20 oct 2026<br>11:15 h</td>
                </tr>
                </tbody>
            </table>
        </div>

        <a class="btn btn-sagp" href="#">
            Abrir SOL-2026-0148
        </a>

        <div class="delivery-notice">
            <span class="notice-title">Cada entrega cierra un peritaje</span>
            <span>
                    Carga el dictamen final en PDF. La fecha y hora de término se
                    registran al completar la entrega.
                </span>
        </div>
    </main>
</div>
</body>
</html>