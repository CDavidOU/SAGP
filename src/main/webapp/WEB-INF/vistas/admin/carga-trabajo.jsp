<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Carga de trabajo | SAGP</title>

  <link
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

  <link
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
          rel="stylesheet">

  <link
          href="${pageContext.request.contextPath}/assets/css/carga-trabajo.css"
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

      <a class="nav-link-item" href="#">
        <i class="bi bi-people" aria-hidden="true"></i>
        <span>Peritos</span>
      </a>

      <a class="nav-link-item active" href="#">
        <i class="bi bi-bar-chart nav-icon-accent" aria-hidden="true"></i>
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
    <div class="eyebrow">DISTRIBUCIÓN ESTATAL</div>

    <h1>Carga de trabajo</h1>

    <p class="page-description">
      La asignación compara únicamente peritos activos con la materia y
      especialidad requeridas.
    </p>

    <section class="filters" aria-label="Filtros de carga de trabajo">
      <div>
        <label class="form-label" for="materia">Materia</label>
        <select class="form-select" id="materia" name="materia">
          <option selected>Familiar</option>
          <option>Civil</option>
          <option>Penal</option>
          <option>Laboral</option>
        </select>
      </div>

      <div>
        <label class="form-label" for="especialidad">Especialidad</label>
        <select class="form-select" id="especialidad" name="especialidad">
          <option selected>Psicología</option>
          <option>Grafoscopía</option>
          <option>Valuación</option>
          <option>Criminalística</option>
        </select>
      </div>
    </section>

    <section class="panel workload-panel">
      <h2>Peritajes en proceso · Familiar / Psicología</h2>

      <div class="workload-list">
        <div class="workload-row">
          <span class="expert-name">Lucía Hernández</span>
          <div
                  class="load-bar-track"
                  role="img"
                  aria-label="2 peritajes en proceso">
            <span class="load-bar" style="width: 40%;"></span>
          </div>
          <span class="load-value">2</span>
        </div>

        <div class="workload-row">
          <span class="expert-name">María Torres</span>
          <div
                  class="load-bar-track"
                  role="img"
                  aria-label="4 peritajes en proceso">
            <span class="load-bar" style="width: 80%;"></span>
          </div>
          <span class="load-value">4</span>
        </div>

        <div class="workload-row">
          <span class="expert-name">Gabriel Ortega</span>
          <div
                  class="load-bar-track"
                  role="img"
                  aria-label="5 peritajes en proceso">
            <span class="load-bar" style="width: 100%;"></span>
          </div>
          <span class="load-value">5</span>
        </div>
      </div>
    </section>

    <section class="recommendation" aria-label="Resultado de asignación">
      <strong>Lucía Hernández tiene la menor carga</strong>
      <p>
        Es la candidata para una nueva solicitud de Familiar / Psicología,
        mientras permanezca activa.
      </p>
    </section>

    <p class="tie-break-note">
      Desempate: entre peritos con la misma carga mínima, se elige por nombre
      y después apellidos, de A a Z.
    </p>

    <a
            class="btn-directory"
            href="${pageContext.request.contextPath}/admin/peritos">
      Ver directorio
    </a>
  </main>
</div>
</body>
</html>