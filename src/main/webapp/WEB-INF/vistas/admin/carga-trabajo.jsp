<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Carga de trabajo | SAGP</title>

  <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
  <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/estilos.css">
</head>

<body class="bg-light" style="overflow-x: hidden;">
<div class="container-fluid p-0 d-flex">

  <jsp:include page="/WEB-INF/vistas/sidebar.jsp">
    <jsp:param name="seccionActiva" value="carga"/>
  </jsp:include>

  <main class="fondo-crema" style="flex: 1;">
    <div class="p-3 bg-white row">
      <div class="col-8">
        <p class="texto mb-0">Gestión y asignación de peritos judiciales</p>
      </div>
      <div class="col-4">
        <p class="texto-verde fw-bold mb-1">Administrador/Morelos</p>
      </div>
    </div>

    <div class="px-4 my-4">
      <div class="texto-verde fw-semibold mb-3">DISTRIBUCIÓN ESTATAL</div>

      <h1 class="fw-bold texto mb-2">Carga de trabajo</h1>

      <p class="texto-muted mb-4">
        La asignación compara peritos activos con la materia y especialidad requeridas.
      </p>

      <section class="card bg-white border-0 rounded-3 shadow-sm p-4 mb-4"
               aria-label="Filtros de carga de trabajo">
        <h2 class="h5 texto-verde mb-4">Filtros de búsqueda</h2>

        <div class="row g-3 align-items-end">
          <div class="col-12 col-lg-5">
            <label class="form-label fw-semibold" for="materia">Materia</label>
            <select class="form-select" id="materia" name="materia">
              <option selected>Familiar</option>
              <option>Civil</option>
              <option>Penal</option>
              <option>Laboral</option>
            </select>
          </div>

          <div class="col-12 col-lg-5">
            <label class="form-label fw-semibold" for="especialidad">
              Especialidad
            </label>
            <select class="form-select" id="especialidad" name="especialidad">
              <option selected>Psicología</option>
              <option>Grafoscopía</option>
              <option>Valuación</option>
              <option>Criminalística</option>
            </select>
          </div>

          <div class="col-12 col-lg-2">
            <button class="btn btn-primario w-100" type="button">
              Consultar
            </button>
          </div>
        </div>
      </section>

      <section class="card bg-white border-0 rounded-3 shadow-sm p-4 mb-4"
               aria-label="Peritajes en proceso">
        <h2 class="h5 texto-verde mb-4">
          Peritajes en proceso · Familiar / Psicología
        </h2>

        <div class="row align-items-center g-3 mb-4">
          <div class="col-12 col-md-3 texto">Lucía Hernández</div>
          <div class="col-9 col-md-7">
            <div class="progress" role="img"
                 aria-label="2 peritajes en proceso" style="height: 12px;">
              <div class="progress-bar"
                   style="width: 40%; background-color: #4A5D45;"></div>
            </div>
          </div>
          <div class="col-3 col-md-2 text-end texto-muted">
            <strong class="texto-verde">2</strong> en proceso
          </div>
        </div>

        <div class="row align-items-center g-3 mb-4">
          <div class="col-12 col-md-3 texto">María Torres</div>
          <div class="col-9 col-md-7">
            <div class="progress" role="img"
                 aria-label="4 peritajes en proceso" style="height: 12px;">
              <div class="progress-bar"
                   style="width: 80%; background-color: #4A5D45;"></div>
            </div>
          </div>
          <div class="col-3 col-md-2 text-end texto-muted">
            <strong class="texto-verde">4</strong> en proceso
          </div>
        </div>

        <div class="row align-items-center g-3">
          <div class="col-12 col-md-3 texto">Gabriel Ortega</div>
          <div class="col-9 col-md-7">
            <div class="progress" role="img"
                 aria-label="5 peritajes en proceso" style="height: 12px;">
              <div class="progress-bar"
                   style="width: 100%; background-color: #4A5D45;"></div>
            </div>
          </div>
          <div class="col-3 col-md-2 text-end texto-muted">
            <strong class="texto-verde">5</strong> en proceso
          </div>
        </div>
      </section>

      <section class="alerta-verde rounded-3 p-3 shadow-sm mb-4"
               aria-label="Resultado de asignación">
        <h2 class="h5 fw-bold mb-1">
          Lucía Hernández tiene la menor carga
        </h2>
        <p class="texto-muted mb-0">
          Es candidata para una nueva solicitud de Familiar / Psicología,
          mientras permanezca activa.
        </p>
      </section>

      <p class="texto-muted small mb-4">
        Desempate: entre peritos con la misma carga mínima, se elige por
        nombre y después apellidos, de A a Z.
      </p>

      <a class="btn btn-primario"
         href="${pageContext.request.contextPath}/admin/peritos">
        <i class="bi bi-people me-2" aria-hidden="true"></i>
        Ver directorio
      </a>
    </div>
  </main>
</div>
</body>
</html>