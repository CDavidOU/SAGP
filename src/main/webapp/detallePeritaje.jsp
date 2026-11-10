
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detalle del peritaje</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="style.css">

    <style>
        body{
            margin: 0px;
            padding: 0px;
            font-family: sans-serif;
            font-size: 0.875rem;
        }

        header{
            height: 45px;
            color: black;
            padding: 5px;
        }

    </style>
</head>
</head>
<body class="d-flex">

<div class="container-fluid p-0 d-flex">
    <!-- Izquierdo -->
    <aside class="menu d-flex flex-column border-end" style="width:250px; height: 100vh; position: sticky; top: 0;">

        <div class="d-flex align-items-center gap-2 pb-3 border-bottom mb-3">
            <img src="imagenes/Logo.jpg" class="img-fluid" alt="Gobierno de Morelos">
        </div>

        <p class="text-muted fw-bold px-3 mb-3" style="font-size: 0.75rem; letter-spacing: 0.5px;">ADMINISTRACIÓN</p>

        <ul class="nav flex-column gap-2 mb-auto">
            <li class="nav-item ">
                <a href="#" class="nav-link d-flex align-items-center rounded menu-activo">
                    <i class="bi bi-grid-fill me-3 fs-5"></i> Resumen
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link d-flex align-items-center text-muted">
                    <i class="bi bi-people me-3 fs-5"></i> Peritos
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link d-flex align-items-center text-muted">
                    <i class="bi bi-people me-3 fs-5"></i> Solicitudes
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link d-flex align-items-center text-muted">
                    <i class="bi bi-card-list me-3 fs-5"></i> Carga de trabajo
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link d-flex align-items-center text-muted">
                    <i class="bi bi-file-earmark-text me-3 fs-5"></i> Asignación manual
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link d-flex align-items-center text-muted">
                    <i class="bi bi-file-earmark-text me-3 fs-5"></i> Branding / Tema
                </a>
            </li>
        </ul>

        <div class="mt-auto pt-3">
            <p class="texto-verde mx-3 mb-1" style="font-size: 0.85rem;">Cobertura estatal</p>
            <p class="text-muted mx-3 mb-4" style="font-size: 0.75rem; line-height: 1.2;">Todos los municipios<br>de Morelos</p>

            <div class="d-flex align-items-center m-3">
                <div class="rounded-circle d-flex justify-content-center align-items-center circulo-iniciales">FM</div>
                <span class="ms-2 text-dark" style="font-size: 0.85rem; font-weight: 500;">Fernanda Montero</span>
            </div>
            <a href="#" class="btn btn-secundario w-100 mx-3 mb-3" style="width: 90% !important; border-radius: 8px; font-size: 0.9rem;">Cerrar sesión</a>
        </div>
    </aside>

    <!-- Derecha -->
    <main class="bg-white" style="flex: 1;">

        <div class="p-3 fondo-crema row" >
            <div class=" col-8">
                <p class="texto-gris mb-0">Gestion y asignación de peritos judiciales</p>
            </div>
            <div class=" col-4">
                <p class="texto-verde fw-bold mb-1 ">Administrador/Morelos</p>
            </div>
        </div>

        <!-- Titulos  -->
        <div class="px-4 my-4 mb-4">
            <p class="texto-verde mb-1" style="font-size: 0.6rem; letter-spacing: 0.5px;">SOLICITUDES / SOL-2026-0148</p>
            <h2 class="fw-bold texto-gris">Detalle del peritaje</h2>
            <p class="texto-dorado">Expediente EXP-391/2026 · Juzgado Familiar de Cuernavaca</p>
            <span class="badge badge-proceso">En proceso</span>
        </div>

        <!--Caja de agrupación de tarjetas -->
        <div class="row g-4">
            <!-- Solicitud y seguimiento -->
            <div class="col-12 col-md-6">
                <div class="card border-1 shadow-sm p-3 h-100">
                    <h3 class="h6 fw-bold text-dark mb-3">Solicitud y seguimiento</h3>

                    <div class="mb-3">
                        <p class="text-secondary text-xxs mb-0">Clasificación</p>
                        <p class="text-dark text-xs fw-semibold mb-0">Familiar / Psicología</p>
                    </div>

                    <div class="mb-3">
                        <p class="text-secondary text-xxs mb-0">Perito actual</p>
                        <p class="text-dark text-xs fw-semibold mb-0">Fernanda Montero</p>
                    </div>

                    <div class="mb-3">
                        <p class="text-secondary text-xxs mb-0">Fecha y hora de inicio</p>
                        <p class="text-dark text-xs fw-semibold mb-0">30 oct 2026 · 09:42 h</p>
                    </div>

                    <div class="mb-3">
                        <p class="text-secondary text-xxs mb-0">Fecha y hora de término</p>
                        <p class="text-dark text-xs fw-semibold mb-0">Pendiente de entrega</p>
                    </div>

                    <div>
                        <p class="text-secondary text-xxs mb-1">Objeto del peritaje</p>
                        <p class="text-secondary text-xs mb-0">
                            Evaluación psicológica solicitada por el juzgado para integrar el dictamen al expediente.
                        </p>
                    </div>
                </div>
            </div>

            <!-- Reasignar perito -->
            <div class="col-12 col-md-6">
                <div class="card border-1 shadow-sm p-3 h-100">
                    <h3 class="h6 fw-bold text-dark mb-1">Reasignar perito</h3>
                    <p class="text-secondary text-xs mb-3">Selecciona otro perito activo con la materia y especialidad requeridas.</p>

                    <div class="mb-3">
                        <label class="form-label text-secondary text-xxs mb-1">Nuevo perito</label>
                        <select class="form-select form-select-sm text-xs bg-light">
                            <option selected>María Torres - 4 en proceso</option>
                            <option>Carlos Ortega - 2 en proceso</option>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label class="form-label text-secondary text-xxs mb-1">Motivo de reasignación</label>
                        <select class="form-select form-select-sm text-xs bg-light">
                            <option selected>Redistribución de carga de trabajo</option>
                            <option>Incapacidad médica</option>
                            <option>Solicitud del juzgado</option>
                        </select>
                    </div>

                    <!-- Alerta/Aviso -->
                    <div class="alerta-amarilla rounded p-3 mb-3">
                        <p class="fw-semibold text-warning-emphasis text-xs mb-0">La solicitud continúa activa</p>
                        <p class="text-warning-emphasis text-xxs mb-0">Se conserva el historial de asignaciones.</p>
                    </div>

                    <div class="btn btn-primario text-xs px-3 py-1.5 rounded-2 d-inline-block">
                        Confirmar reasignación
                    </div>
                </div>
            </div>
        </div>

    </main>
</div>

</body>
</html>