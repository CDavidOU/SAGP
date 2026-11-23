<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reasignación Manual - Administrador | SAGP</title>
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
            <small class="texto-verde fw-bold" style="font-size: 0.75rem;">ADMINISTRACIÓN / REASIGNACIÓN MANUAL</small>
            <h2 class="fw-bold text-dark mt-2 mb-1">Reasignar perito</h2>
            <p class="texto-muted mb-4">SOL-2026-0148 · Juzgado Familiar de Cuernavaca · Familiar / Psicología</p>

            <!-- Asignación Actual -->
            <div class="card-custom bg-white border rounded-3 p-4 mb-4">
                <h6 class="fw-bold text-dark mb-3">Asignación actual</h6>
                <h4 class="text-dark fw-normal mb-0" style="font-size: 1.15rem;">
                    Lucía Hernández · Inicio: <strong class="fw-bold">22 oct 2026, 09:42 h</strong>
                </h4>
            </div>

            <form action="${pageContext.request.contextPath}/reasignacion-manual" method="post">
                <input type="hidden" name="solicitudId" value="SOL-2026-0148">

                <!-- Tabla de Selección de Peritos -->
                <div class="card-custom bg-white border rounded-3 mb-4 overflow-hidden">
                    <table class="table table-custom align-middle mb-0">
                        <thead>
                            <tr>
                                <th class="ps-4 py-3 texto-verde">SELECCIÓN / PERITO</th>
                                <th class="py-3">ESTADO</th>
                                <th class="py-3">MATERIA / ESPECIALIDAD</th>
                                <th class="py-3">EN PROCESO</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="fila-perito table-light" style="cursor: pointer;" onclick="seleccionarPerito(this)">
                                <td class="ps-4 py-3">
                                    <input type="radio" name="perito" value="María Torres" class="form-check-input me-2" checked style="accent-color: #4A5D45;">
                                    <span class="texto-verde fw-bold">María Torres</span>
                                </td>
                                <td class="py-3">Activo</td>
                                <td class="py-3">Familiar / Psicología</td>
                                <td class="py-3">4</td>
                            </tr>
                            <tr class="fila-perito" style="cursor: pointer;" onclick="seleccionarPerito(this)">
                                <td class="ps-4 py-3">
                                    <input type="radio" name="perito" value="Gabriel Ortega" class="form-check-input me-2" style="accent-color: #4A5D45;">
                                    <span class="texto-verde fw-medium">Gabriel Ortega</span>
                                </td>
                                <td class="py-3">Activo</td>
                                <td class="py-3">Familiar / Psicología</td>
                                <td class="py-3">5</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <!-- Motivo de Reasignación -->
                <div class="mb-4">
                    <label for="motivoReasignacion" class="form-label text-dark fw-medium" style="font-size: 0.85rem;">Motivo de reasignación</label>
                    <input type="text" id="motivoReasignacion" name="motivo" class="form-control bg-white rounded-2 py-2" value="Redistribución de trabajo" required>
                </div>

                <!-- Alerta Informativa -->
                <div class="alerta-verde p-3 mb-4">
                    <div class="fw-bold mb-1">Se conserva el historial</div>
                    <div style="font-size: 0.85rem;">Se registra la fecha y hora de la nueva asignación. La solicitud sigue en proceso.</div>
                </div>

                <!-- Botones -->
                <div class="d-flex gap-2">
                    <button type="submit" class="btn btn-primario px-4 py-2 rounded-2">Confirmar reasignación</button>
                    <a href="${pageContext.request.contextPath}/asignacion-manual" class="btn btn-secundario px-4 py-2 rounded-2">Cancelar</a>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
    function seleccionarPerito(fila) {
        fila.querySelector('input[type="radio"]').checked = true;

        document.querySelectorAll('.fila-perito').forEach(tr => {
            tr.classList.remove('table-light');
            tr.querySelector('span').classList.replace('fw-bold', 'fw-medium');
        });
        fila.classList.add('table-light');
        fila.querySelector('span').classList.replace('fw-medium', 'fw-bold');
    }
</script>
</body>
</html>