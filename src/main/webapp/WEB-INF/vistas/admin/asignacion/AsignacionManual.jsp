<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Asignación y Reasignación Manual - Administrador</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/estilos.css">
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
            <small class="texto-verde fw-bold" style="font-size: 0.75rem; letter-spacing: 0.5px;">ADMINISTRACIÓN / ASIGNACIÓN MANUAL</small>
            <h2 class="fw-bold text-dark mt-2 mb-1">Asignación y reasignación manual</h2>
            <p class="texto-muted mb-4">Gestiona solicitudes de audiencias y elige un perito activo compatible.</p>

            <!-- Filtros: Buscar solicitud y Estado -->
            <div class="row g-3 mb-4">
                <div class="col-md-7">
                    <label for="buscarSolicitud" class="form-label fw-bold text-dark" style="font-size: 0.85rem;">Buscar solicitud</label>
                    <input type="text" id="buscarSolicitud" class="form-control bg-white py-2"
                           style="border: 1px solid #E2E0D8; border-radius: 8px;"
                           placeholder="Folio, expediente o juzgado" onkeyup="filtrarSolicitudes()">
                </div>
                <div class="col-md-5">
                    <label for="filtroEstado" class="form-label fw-bold text-dark" style="font-size: 0.85rem;">Estado</label>
                    <select id="filtroEstado" class="form-select bg-white py-2"
                            style="border: 1px solid #E2E0D8; border-radius: 8px;"
                            onchange="filtrarSolicitudes()">
                        <option value="todos" selected>Por asignar y en proceso</option>
                        <option value="Por asignar">Por asignar</option>
                        <option value="En proceso">En proceso</option>
                    </select>
                </div>
            </div>

            <!-- Alerta informativa -->
            <div class="alerta-verde p-3 mb-4">
                <div class="fw-bold mb-1">La elección manual no depende de la menor carga</div>
                <div class="texto" style="font-size: 0.85rem;">Puedes elegir cualquier perito activo que cumpla con la materia y especialidad de la solicitud.</div>
            </div>

            <!-- Tabla de Solicitudes / Audiencias -->
            <div class="card-custom mb-4 overflow-hidden">
                <table class="table table-custom align-middle mb-0" id="tablaSolicitudes">
                    <thead>
                    <tr>
                        <th class="ps-3 py-3">SOLICITUD / AUDIENCIA</th>
                        <th class="py-3">CLASIFICACIÓN</th>
                        <th class="py-3">PERITO ACTUAL</th>
                        <th class="py-3">ACCIÓN</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="fila-solicitud" data-estado="Por asignar">
                        <td class="ps-3 py-3">
                            <div class="texto-verde fw-bold">SOL-2026-0149 · Temixco</div>
                            <small class="texto-muted">EXP-482/2026 · Por asignar</small>
                        </td>
                        <td class="fw-semibold texto">Civil / Valuación</td>
                        <td class="texto">Sin asignar</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/seleccionar-perito?folio=SOL-2026-0149"
                               class="text-decoration-none texto-verde fw-bold">Asignar perito</a>
                        </td>
                    </tr>
                    <tr class="fila-solicitud" data-estado="En proceso">
                        <td class="ps-3 py-3">
                            <div class="texto-verde fw-bold">SOL-2026-0148 · Cuernavaca</div>
                            <small class="texto-muted">EXP-391/2026 · En proceso</small>
                        </td>
                        <td class="fw-semibold texto">Familiar / Psicología</td>
                        <td class="texto">Lucía Hernández</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/reasignacion-manual?folio=SOL-2026-0148"
                               class="text-decoration-none texto-verde fw-bold">Reasignar perito</a>
                        </td>
                    </tr>
                    <tr class="fila-solicitud" data-estado="Por asignar">
                        <td class="ps-3 py-3">
                            <div class="texto-verde fw-bold">SOL-2026-0150 · E. Zapata</div>
                            <small class="texto-muted">EXP-492/2026 · Por asignar</small>
                        </td>
                        <td class="fw-semibold texto">Familiar / Trabajo social</td>
                        <td class="texto">Sin asignar</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/seleccionar-perito?folio=SOL-2026-0150"
                               class="text-decoration-none texto-verde fw-bold">Asignar perito</a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <!-- Botones de acción rápida -->
            <div class="d-flex gap-2 mb-3">
                <a href="${pageContext.request.contextPath}/Seleccionar-Perito"
                   class="btn btn-primario px-4 py-2 rounded-2">Asignar SOL-2026-0149</a>
                <a href="${pageContext.request.contextPath}/reasignacion-manual"
                   class="btn btn-secundario px-4 py-2 rounded-2">Reasignar SOL-2026-0148</a>
            </div>

            <p class="texto-muted mb-0" style="font-size: 0.85rem;">Las solicitudes finalizadas se consultan en el historial; no se reasignan.</p>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
    function filtrarSolicitudes() {
        const texto = document.getElementById('buscarSolicitud').value.toLowerCase();
        const estado = document.getElementById('filtroEstado').value;
        const filas = document.querySelectorAll('.fila-solicitud');

        filas.forEach(fila => {
            const contenido = fila.textContent.toLowerCase();
            const estadoFila = fila.getAttribute('data-estado');
            const coincideTexto = contenido.includes(texto);
            const coincideEstado = (estado === 'todos' || estadoFila === estado);

            fila.style.display = (coincideTexto && coincideEstado) ? '' : 'none';
        });
    }
</script>
</body>
</html>