<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Detalle del peritaje | SAGP</title>

  <link
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

  <link
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
          rel="stylesheet">

  <link
          href="${pageContext.request.contextPath}/assets/css/detalle-reasignacion.css"
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

      <a class="nav-link-item active" href="#">
        <i class="bi bi-file-earmark-text nav-icon-accent" aria-hidden="true"></i>
        <span>Solicitudes</span>
      </a>

      <a class="nav-link-item" href="#">
        <i class="bi bi-people" aria-hidden="true"></i>
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
    <div class="eyebrow">SOLICITUDES / SOL-2026-0148</div>

    <h1>Detalle del peritaje</h1>

    <p class="page-description">
      Expediente EXP-391/2026 · Juzgado Familiar de Cuernavaca
    </p>

    <span class="status-badge">En proceso</span>

    <section class="detail-grid">
      <article class="panel">
        <h2>Solicitud y seguimiento</h2>

        <div class="detail-row">
          <span class="detail-label">Clasificación</span>
          <span class="detail-value">Familiar / Psicología</span>
        </div>

        <div class="detail-row">
          <span class="detail-label">Perito actual</span>
          <span class="detail-value">Lucía Hernández</span>
        </div>

        <div class="detail-row">
          <span class="detail-label">Fecha y hora de inicio</span>
          <span class="detail-value">22 oct 2026 · 09:42 h</span>
        </div>

        <div class="detail-row">
          <span class="detail-label">Fecha y hora de término</span>
          <span class="detail-value">Pendiente de entrega</span>
        </div>

        <div class="detail-row mb-0">
          <span class="detail-label">Objeto del peritaje</span>

          <div class="description-box">
            Evaluación psicológica solicitada por el juzgado para integrar
            el dictamen al expediente.
          </div>
        </div>
      </article>

      <article class="panel">
        <h2>Reasignar perito</h2>

        <p class="panel-intro">
          Selecciona otro perito activo con la materia y especialidad requeridas.
        </p>

        <div class="mb-4">
          <label class="form-label" for="nuevoPerito">Nuevo perito</label>

          <select class="form-select" id="nuevoPerito">
            <option selected>María Torres · 4 en proceso</option>
            <option>Gabriel Ortega · 2 en proceso</option>
            <option>Elena Ruiz · 3 en proceso</option>
          </select>
        </div>

        <div class="mb-4">
          <label class="form-label" for="motivo">
            Motivo de reasignación
          </label>

          <select class="form-select" id="motivo">
            <option selected>Redistribución de carga de trabajo</option>
            <option>Solicitud del juzgado</option>
            <option>Indisponibilidad del perito</option>
          </select>
        </div>

        <div class="notice">
          <span class="notice-title">La solicitud continúa activa</span>
          <span>Se conserva el historial de asignaciones.</span>
        </div>

        <button class="btn btn-sagp" type="button">
          Confirmar reasignación
        </button>
      </article>
    </section>
  </main>
</div>
</body>
</html>