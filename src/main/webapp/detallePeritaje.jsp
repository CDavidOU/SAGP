<%--
  Created by IntelliJ IDEA.
  User: Yadi
  Date: 30/10/2026
  Time: 08:12 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detalle del peritaje</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

    <style>
        body{
            padding: 5px;
            font-family: sans-serif;
            font-size: 0.875rem;
        }

        img{
            width: 240px;
            height: 240px;
        }

        .colortext{
            color: #006837;
        }

        .sidebar{
            width: 200px;
            background-color: white;
            border-right: 1px solid #D3D3D3;
        }

        .nav-item-custom{
            color: black;
            border-radius: 1px;
            padding: 2px;
            display: flex;
            align-items: center;
            gap: 1px;
            font-weight: 500;
            cursor: default;
        }

        .nav-item-custom.active{
            background-color: #006837;
            color: #008748;
        }

        .btn-emerald {
            background-color: #006837;
            color: white;
            border: none;
        }

        .bg-alert-warning {
            background-color: #B89758;
            border: 1px solid #fef3c7;
        }

        /*.text-xs {
            font-size: 0.75rem;
        }

        .text-xxs {
            font-size: 0.6875rem;
        }*/

        #fondoMain{
            background-color: #DCDCDC;
            color: black;
        }

        header{
            height: 20px;
            color: black;
            padding: 5px;
        }

    </style>
</head>
</head>
<body class="d-flex">
<aside class="sidebar d-flex flex-column justify-between p-3 flex-shrink-0">
    <div>
        <div class="d-flex align-items-center gap-2 pb-3 border-bottom mb-3">
            <img src="imagenes/Logo.jpg" class="img-fluid" alt="...">
        </div>

        <h5>Administración</h5>
        <div class="d-flex flex-column gap-1">
            <div class="nav-item-custom">
                <i class="bi bi-grid-fill"></i><span>Resumen</span>
            </div>
            <div class="nav-item-custom active">
                <i class="bi bi-file-earmark-text"></i><span>Solicitudes</span>
            </div>
            <div class="nav-item-custom">
                <i class="bi bi-people"></i><span>Peritos</span>
            </div>
            <div class="nav-item-custom">
                <i class="bi bi-bar-chart"></i><span>Carga de trabajo</span>
            </div>
            <div class="nav-item-custom">
                <i class="bi bi-person-plus"></i><span>Asignación manual</span>
            </div>
            <div class="nav-item-custom">
                <i class="bi bi-palette"></i><span>Branding / Tema</span>
            </div>
        </div>
    </div>

    <div class="border-top pt-3 mt-auto">
        <div class="mb-3">
            <p class="text-secondary text-xxs mb-0">Cobertura estatal</p>
            <p class="text-dark text-xs fw-semibold mb-0">Todos los municipios: 00 Morelos</p>
        </div>

        <div class="d-flex align-items-center gap-2 mb-3">
            <div class="rounded-circle bg-success-subtle text-success-emphasis d-flex align-items-center justify-content-center fw-semibold text-xs" style="width: 32px; height: 32px;">
                FM
            </div>
            <div>
                <p class="mb-0 text-xs fw-medium text-dark">Fernanda Montero</p>
            </div>
        </div>

        <div class="btn btn-outline-secondary w-100 text-xs py-1.5 pe-none">
            Cerrar sesión
        </div>
    </div>
</aside>

<main class="flex-grow-1 d-flex flex-column vh-100 overflow-auto">

    <header class="bg-white border-bottom px-4 py-2.5 d-flex justify-content-between align-items-center flex-shrink-0">
        <p class="text-secondary text-xs mb-0">Gestión y reasignación de peritos judiciales</p>
        <div class="text-secondary text-xs">
            <span class="fw-semibold text-dark">MORELOS</span> / <span>Administración</span>
        </div>
    </header>

    <div id="fondoMain" class="p-4" style="max-width: 1100px;">

        <div class="mb-4">
            <p class="text-uppercase text-secondary text-xxs fw-bold tracking-wider mb-1 colortext">SOLICITUDES / SOL-2026-0148</p>
            <h2>Detalle del peritaje</h2>
            <p class="text-secondary text-xs mb-2">Expediente EXP-391/2026 · Juzgado Familiar de Cuernavaca</p>
            <span class="badge bg-success-subtle text-success-emphasis fw-medium px-2 py-1 text-xxs">
          En proceso
        </span>
        </div>

        <div class="row g-4">
            <!-- Solicitud y seguimiento -->
            <div class="col-12 col-md-6">
                <div class="card border-0 shadow-sm p-4 h-100">
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
                <div class="card border-0 shadow-sm p-4 h-100">
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
                    <div class="bg-alert-warning rounded p-3 mb-3">
                        <p class="fw-semibold text-warning-emphasis text-xs mb-0">La solicitud continúa activa</p>
                        <p class="text-warning-emphasis text-xxs mb-0">Se conserva el historial de asignaciones.</p>
                    </div>

                    <div class="btn btn-emerald text-xs px-3 py-1.5 rounded-2 d-inline-block">
                        Confirmar reasignación
                    </div>
                </div>
            </div>

        </div>
    </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>
