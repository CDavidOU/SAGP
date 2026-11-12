<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Carga de trabajo | SAGP</title>

  <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        rel="stylesheet">

  <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/estilos.css">
</head>

<body class="bg-light" style="overflow-x: hidden;">
<div class="container-fluid p-0 d-flex">

  <jsp:include page="/WEB-INF/vistas/sidebar.jsp">
    <jsp:param name="seccionActiva" value="carga"/>
  </jsp:include>

  <main class="bg-white" style="flex: 1;">

    <div class="p-3 fondo-crema row">
      <div class="col-8">
        <p class="texto mb-0">Gestión y asignación de peritos judiciales</p>
      </div>
      <div class="col-4">
        <p class="texto-verde fw-bold mb-1">Administrador/Morelos</p>
      </div>
    </div>

    <div class="px-4 my-4">
      <h2 class="fw-bold texto mb-4">Carga de trabajo</h2>
      <p class="texto-muted">
        La asignación compara peritos activos con la materia y especialidad requeridas.
      </p>
    </div>

    <div class="px-4 mt-4">
      <div class="card shadow-sm border-0 rounded-3 p-4 fondo-crema">
        <h6 class="texto mb-4">Filtros de búsqueda</h6>

        <div class="row g-3">
          <div class="col-md-5">
            <label for="materia" class="form-label texto-verde fw-semibold">
              Materia
            </label>
            <select id="materia" name="materia" class="form-select">
              <option selected>Familiar</option>
              <option>Civil</option>
              <option>Penal</option>
              <option>Laboral</option>
            </select>
          </div>

          <div class="col-md-5">
            <label for="especialidad" class="form-label texto-verde fw-semibold">
              Especialidad
            </label>
            <select id="especialidad" name="especialidad" class="form-select">
              <option selected>Psicología</option>
              <option>Grafoscopía</option>
              <option>Valuación</option>
              <option>Criminalística</option>
            </select>
          </div>

          <div class="col-md-2 d-flex align-items-end">
            <button class="btn btn-primario w-100" type="button">
              Consultar
            </button>
          </div>
        </div>
      </div>
    </div>

    <div class="px-4 mt-4">
      <div class="card shadow-sm border-0 rounded-3 h-100 p-4 fondo-crema">
        <h6 class="texto mb-4">Peritajes en proceso · Familiar / Psicología</h6>

        <div class="row align-items-center mb-4">
          <div class="col-md-3">
            <span class="texto">Lucía Hernández</span>
          </div>
          <div class="col-md-7">
            <div class="progress" role="img"
                 aria-label="2 peritajes en proceso">
              <div class="progress-bar"
                   style="width: 40%; background-color: #4A5D45;"></div>
            </div>
          </div>
          <div class="col-md-2 text-md-end">
            <span class="texto-verde fw-bold">2</span>
            <span class="texto-muted"> en proceso</span>
          </div>
        </div>

        <div class="row align-items-center mb-4">
          <div class="col-md-3">
            <span class="texto">María Torres</span>
          </div>
          <div class="col-md-7">
            <div class="progress" role="img"
                 aria-label="4 peritajes en proceso">
              <div class="progress-bar"
                   style="width: 80%; background-color: #4A5D45;"></div>
            </div>
          </div>
          <div class="col-md-2 text-md-end">
            <span class="texto-verde fw-bold">4</span>
            <span class="texto-muted"> en proceso</span>
          </div>
        </div>

        <div class="row align-items-center">
          <div class="col-md-3">
            <span class="texto">Gabriel Ortega</span>
          </div>
          <div class="col-md-7">
            <div class="progress" role="img"
                 aria-label="5 peritajes en proceso">
              <div class="progress-bar"
                   style="width: 100%; background-color: #4A5D45;"></div>
            </div>
          </div>
          <div class="col-md-2 text-md-end">
            <span class="texto-verde fw-bold">5</span>
            <span class="texto-muted"> en proceso</span>
          </div>
        </div>
      </div>
    </div>

    <div class="px-4 mt-4">
      <div class="alert alerta-verde p-3 shadow-sm">
        <h5 class="fw-bold mb-1">Lucía Hernández tiene la menor carga</h5>
        <p class="mb-0 texto-muted">
          Es candidata para una nueva solicitud de Familiar / Psicología,
          mientras permanezca activa.
        </p>
      </div>
    </div>

    <div class="px-4 mt-4">
      <p class="texto-muted small mb-4">
        Desempate: entre peritos con la misma carga mínima, se elige por nombre
        y después apellidos, de A a Z.
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