<%--
  Created by IntelliJ IDEA.
  User: Carlos
  Date: 05/11/2026
  Time: 08:08 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Asignacion Manual</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body class="bg-light" style="overflow-x: hidden;">

<div class="container-fluid p-0 d-flex">
    <!-- Izquierdo -->
    <aside class="menu d-flex flex-column border-end" style="width:250px; height: 100vh; position: sticky; top: 0;">

        <div class="m-2 text-center">
            <img src="${pageContext.request.contextPath}/img/logo.png" alt="Gobierno de Morelos" style="max-width: 100%; height: auto;">
        </div>

        <p class="text-muted fw-bold px-3 mb-3" style="font-size: 0.75rem; letter-spacing: 0.5px;">ADMINISTRACIÓN</p>

        <ul class="nav flex-column gap-2 mb-auto">
            <li class="nav-item ">
                <a href="${pageContext.request.contextPath}/dashboard" class="nav-link d-flex align-items-center rounded">
                    <i class="bi bi-grid-fill me-3 fs-5"></i> Resumen
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link d-flex align-items-center texto-crema">
                    <i class="bi bi-people me-3 fs-5"></i> Peritos
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link d-flex align-items-center texto-crema">
                    <i class="bi bi-people me-3 fs-5"></i> Solicitudes
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link d-flex align-items-center texto-crema">
                    <i class="bi bi-card-list me-3 fs-5"></i> Carga de trabajo
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link d-flex align-items-center texto-crema  menu-activo">
                    <i class="bi bi-file-earmark-text me-3 fs-5"></i> Asignación manual
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link d-flex align-items-center texto-crema">
                    <i class="bi bi-file-earmark-text me-3 fs-5"></i> Branding / Tema
                </a>
            </li>
        </ul>

        <div class="mt-auto pt-3">
            <p class="texto-verde mx-3 mb-1" style="font-size: 0.85rem;">Cobertura estatal</p>
            <p class="text-muted mx-3 mb-4" style="font-size: 0.75rem; line-height: 1.2;">Todos los municipios<br>de Morelos</p>

            <div class="d-flex align-items-center m-3">
                <div class="rounded-circle d-flex justify-content-center align-items-center circulo-iniciales">AM</div>
                <span class="ms-2 text-dark" style="font-size: 0.85rem; font-weight: 500;">Ana Martínez</span>
            </div>
            <a href="#" class="btn btn-secundario w-100 mx-3 mb-3" style="width: 90% !important; border-radius: 8px; font-size: 0.9rem;">Cerrar sesión</a>
        </div>
    </aside>


    <main class="bg-white" style="flex: 1;">

        <div class="p-3 fondo-crema row" >
            <div class=" col-8">
                <p class="texto-gris mb-0">Gestion y asignación de peritos judiciales</p>
            </div>
            <div class=" col-4">
                <p class="texto-verde fw-bold mb-1 ">Administrador/Morelos</p>
            </div>
        </div>

        <div class="px-4 my-4">
            <h2 class="fw-bold texto mb-4">Asignacion manual confirmada</h2>
            <p class="texto-muted">SQL-2026-1049 Expediente EXP-482/2026</p>
        </div>

        <div class="px-4 mt-4">
            <div class="alert alerta-verde p-3 shadow-sm">
                <h5 class="fw-bold mb-1 ">Perito asignado: Roberto Salinas</h5>
                <p class="mb-0 text-muted" style="font-size: 0.95rem;">Seleccion manual del administrador. No se aplica el orden de menor carga ni el desempate alfabetico</p>
            </div>
        </div>

        <div class="px-4 mt-4">
            <div class="card shadow-sm border-0 rounded-3 h-100 p-4 fondo-crema">
                <h6 class="texto mb-4">Registro de asignación</h6>
                <h5 class="texto-verde mb-4">Civil / Valuación · Juzgado Civil de Temixco</h5>
                <p class="texto-muted mb-2"> Inicio registrado automáticamente: 22 oct 2026 · 16:45h <br>Estado: En proceso <br> Carga del perito: 4 -> 5 </p>
            </div>
        </div>

        <div class="px-4 mt-4">
            <div class="btn btn-primario">Volver al modulo manual</div>
        </div>

    </main>
</div>
</body>
</html>
