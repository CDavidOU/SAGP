<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seleccionar Perito Manual - Administrador</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>

<div class="d-flex">
    <!-- BARRA LATERAL REUTILIZABLE DE ADMINISTRACIÓN -->
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

            <div class="alerta-verde p-3 mb-4">
                <div class="fw-bold mb-1">Elige libremente entre los peritos compatibles</div>
                <div style="font-size: 0.85rem;">Todos cubren el municipio. La carga se muestra como referencia y no limita la selección.</div>
            </div>

            <form action="${pageContext.request.contextPath}/seleccionar-perito" method="post">
                <input type="hidden" name="solicitudId" value="SOL-2026-0149">

                <!-- Selección de Peritos -->
                <div class="card-custom bg-white border rounded-3 mb-4 overflow-hidden">
                    <table class="table table-custom align-middle mb-0">
                        <thead>
                            <tr>
                                <th class="ps-3 texto-verde">SELECCIÓN / PERITO</th>
                                <th>ESTADO</th>
                                <th>MATERIA / ESPECIALIDAD</th>
                                <th>EN PROCESO</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="fila-perito" style="cursor: pointer;" onclick="seleccionarPerito(this, 'Elena Ruiz', 2)">
                                <td class="ps-3"><input type="radio" name="perito" value="Elena Ruiz" class="form-check-input me-2"> <span class="texto-verde fw-medium">Elena Ruiz</span></td>
                                <td>Activo</td>
                                <td>Civil / Valuación</td>
                                <td>2</td>
                            </tr>
                            <tr class="fila-perito" style="cursor: pointer;" onclick="seleccionarPerito(this, 'Patricia Vega', 2)">
                                <td class="ps-3"><input type="radio" name="perito" value="Patricia Vega" class="form-check-input me-2"> <span class="texto-verde fw-medium">Patricia Vega</span></td>
                                <td>Activo</td>
                                <td>Civil / Valuación</td>
                                <td>2</td>
                            </tr>
                            <tr class="fila-perito table-light" style="cursor: pointer;" onclick="seleccionarPerito(this, 'Roberto Salinas', 4)">
                                <td class="ps-3"><input type="radio" name="perito" value="Roberto Salinas" class="form-check-input me-2" checked> <span class="texto-verde fw-bold">Roberto Salinas</span></td>
                                <td>Activo</td>
                                <td>Civil / Valuación</td>
                                <td>4</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <!-- Resumen de selección -->
                <div class="card-custom bg-white border rounded-3 p-4 mb-4">
                    <h6 class="fw-bold text-dark mb-3">Perito seleccionado</h6>
                    <h4 id="resumenPerito" class="texto-verde fw-bold mb-2">Roberto Salinas · 4 → 5 peritajes en proceso</h4>
                    <p class="texto-muted mb-0" style="font-size: 0.85rem;">La fecha y hora de inicio se registran automáticamente al confirmar.</p>
                </div>

                <div class="d-flex gap-2">
                    <button type="submit" class="btn btn-primario px-4 py-2 rounded-2">Confirmar asignación manual</button>
                    <a href="${pageContext.request.contextPath}/asignacion-manual" class="btn btn-secundario px-4 py-2 rounded-2">Cancelar</a>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
    function seleccionarPerito(fila, nombre, cargaActual) {
        fila.querySelector('input[type="radio"]').checked = true;

        document.querySelectorAll('.fila-perito').forEach(tr => {
            tr.classList.remove('table-light');
            tr.querySelector('span').classList.replace('fw-bold', 'fw-medium');
        });
        fila.classList.add('table-light');
        fila.querySelector('span').classList.replace('fw-medium', 'fw-bold');

        document.getElementById('resumenPerito').textContent = `${nombre} · ${cargaActual} → ${cargaActual + 1} peritajes en proceso`;
    }
</script>
</body>
</html>