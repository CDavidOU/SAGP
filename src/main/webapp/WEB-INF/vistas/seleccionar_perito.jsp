<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seleccionar Perito Manual - Administrador</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <!-- Ruta alineada con la estructura de tu equipo -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>

<div class="d-flex">
    <!-- AQUÍ SE INSERTA LA BARRA LATERAL REUTILIZABLE -->
    <jsp:include page="/WEB-INF/vistas/sidebar.jsp">
        <jsp:param name="seccionActiva" value="asignacion" />
    </jsp:include>

    <!-- Contenido -->
    <div class="flex-grow-1 fondo-crema d-flex flex-column">
        <div class="p-3 bg-white border-bottom d-flex justify-content-between header-top">
            <span class="texto-muted">Gestión y asignación de peritos judiciales</span>
            <div><span class="texto-verde fw-bold">MORELOS</span> <span class="texto-muted">/ Administrador</span></div>
        </div>

        <div class="p-5 flex-grow-1">
            <small class="texto-verde fw-bold" style="font-size: 0.75rem;">ADMINISTRACIÓN / SELECCIONAR PERITO MANUAL</small>
            <h2 class="fw-bold text-dark mt-2 mb-1">Asignar perito manualmente</h2>
            <p class="texto-muted mb-4">SOL-2026-0149 · Juzgado Civil de Temixco · Civil / Valuación</p>

            <div class="alerta-info p-3 mb-4">
                <div class="fw-bold mb-1">Elige libremente entre los peritos compatibles</div>
                <div style="font-size: 0.85rem;">Todos cubren el municipio. La carga se muestra como referencia y no limita la selección.</div>
            </div>

            <!-- Selección de Peritos -->
            <div class="card-custom mb-4 overflow-hidden">
                <table class="table table-custom align-middle mb-0">
                    <thead>
                        <tr>
                            <th class="ps-3">SELECCIÓN / PERITO</th>
                            <th>ESTADO</th>
                            <th>MATERIA / ESPECIALIDAD</th>
                            <th>EN PROCESO</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="ps-3"><input type="radio" name="perito" class="form-check-input me-2"> <span class="texto-verde fw-medium">Elena Ruiz</span></td>
                            <td>Activo</td>
                            <td>Civil / Valuación</td>
                            <td>2</td>
                        </tr>
                        <tr>
                            <td class="ps-3"><input type="radio" name="perito" class="form-check-input me-2"> <span class="texto-verde fw-medium">Patricia Vega</span></td>
                            <td>Activo</td>
                            <td>Civil / Valuación</td>
                            <td>2</td>
                        </tr>
                        <tr class="table-light">
                            <td class="ps-3"><input type="radio" name="perito" class="form-check-input me-2" checked> <span class="texto-verde fw-bold">Roberto Salinas</span></td>
                            <td>Activo</td>
                            <td>Civil / Valuación</td>
                            <td>4</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Resumen de selección -->
            <div class="card-custom p-4 mb-4">
                <h6 class="fw-bold text-dark mb-3">Perito seleccionado</h6>
                <h4 class="texto-verde fw-bold mb-2">Roberto Salinas · 4 → 5 peritajes en proceso</h4>
                <p class="texto-muted mb-0" style="font-size: 0.85rem;">La fecha y hora de inicio se registran automáticamente al confirmar.</p>
            </div>

            <div class="d-flex gap-2">
                <button class="btn btn-primario px-4 py-2 rounded-2">Confirmar asignación manual</button>
                <a href="${pageContext.request.contextPath}/asignacion-manual" class="btn btn-secundario px-4 py-2 rounded-2">Cancelar</a>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>