<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Detalle del peritaje | SAGP</title>

  <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
  <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
  <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/estilos.css">
</head>

<body class="bg-light" style="overflow-x: hidden;">
<div class="container-fluid p-0 d-flex">

  <jsp:include page="/WEB-INF/vistas/sidebar.jsp">
    <jsp:param name="seccionActiva" value="solicitudes"/>
  </jsp:include>

  <main class="fondo-crema" style="flex: 1;">
    <div class="p-3 bg-white row">
      <div class="col-8">
        <p class="texto mb-0">
          Gestión y asignación de peritos judiciales
        </p>
      </div>
      <div class="col-4">
        <p class="texto-verde fw-bold mb-1">
          Administrador/Morelos
        </p>
      </div>
    </div>

    <div class="px-4 my-4">
      <div class="texto-verde fw-semibold mb-4">
        SOLICITUDES / SOL-2026-0148
      </div>

      <h1 class="texto-verde mb-2">Detalle del peritaje</h1>

      <p class="texto mb-3">
        Expediente EXP-391/2026 · Juzgado Familiar de Cuernavaca
      </p>

      <span class="badge-proceso rounded d-inline-block mb-4">
                En proceso
            </span>

      <section class="row g-4" aria-label="Detalle y reasignación">
        <article class="col-12 col-xl-6">
          <div class="card bg-white h-100 border rounded-4">
            <div class="card-body p-4">
              <h2 class="h4 texto-verde mb-4">
                Solicitud y seguimiento
              </h2>

              <div class="mb-4">
                <div class="texto-muted mb-1">Clasificación</div>
                <div class="fw-semibold">Familiar / Psicología</div>
              </div>

              <div class="mb-4">
                <div class="texto-muted mb-1">Perito actual</div>
                <div class="fw-semibold">Lucía Hernández</div>
              </div>

              <div class="mb-4">
                <div class="texto-muted mb-1">Fecha y hora de inicio</div>
                <div class="fw-semibold">22 oct 2026 · 09:42 h</div>
              </div>

              <div class="mb-4">
                <div class="texto-muted mb-1">Fecha y hora de término</div>
                <div class="fw-semibold">Pendiente de entrega</div>
              </div>

              <div>
                <div class="texto-muted mb-2">Objeto del peritaje</div>
                <p class="mb-0">
                  Evaluación psicológica solicitada por el juzgado para
                  integrar el dictamen al expediente.
                </p>
              </div>
            </div>
          </div>
        </article>

        <article class="col-12 col-xl-6">
          <div class="card bg-white h-100 border rounded-4">
            <div class="card-body p-4">
              <h2 class="h4 texto-verde mb-3">Reasignar perito</h2>

              <p class="texto mb-4">
                Selecciona otro perito activo con la materia y especialidad requeridas.
              </p>

              <div class="mb-4">
                <label class="form-label" for="nuevoPerito">Nuevo perito</label>
                <select class="form-select" id="nuevoPerito" name="nuevoPerito">
                  <option selected>María Torres · 4 en proceso</option>
                  <option>Gabriel Ortega · 2 en proceso</option>
                  <option>Elena Ruiz · 3 en proceso</option>
                </select>
              </div>

              <div class="mb-4">
                <label class="form-label" for="motivo">
                  Motivo de reasignación
                </label>
                <select class="form-select" id="motivo" name="motivo">
                  <option selected>Redistribución de carga de trabajo</option>
                  <option>Solicitud del juzgado</option>
                  <option>Indisponibilidad del perito</option>
                </select>
              </div>

              <div class="alert alert-warning border-0 rounded-3">
                <strong class="d-block mb-1">
                  La solicitud continúa activa
                </strong>
                <span>Se conserva el historial de asignaciones.</span>
              </div>

              <button class="btn btn-primario" type="button">
                Confirmar reasignación
              </button>
            </div>
          </div>
        </article>
      </section>
    </div>
  </main>
</div>
</body>
</html>