<%--
  Created by IntelliJ IDEA.
  User: Carlos
  Date: 05/11/2026
  Time: 11:22 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Tema</title>
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
                        <a href="${pageContext.request.contextPath}/dashboard" class="nav-link d-flex align-items-center rounded texto-muted">
                            <i class="bi bi-grid-fill me-3 fs-5"></i> Resumen
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link d-flex align-items-center texto-muted">
                            <i class="bi bi-people me-3 fs-5"></i> Peritos
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link d-flex align-items-center texto-muted">
                            <i class="bi bi-people me-3 fs-5"></i> Solicitudes
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link d-flex align-items-center texto-muted">
                            <i class="bi bi-card-list me-3 fs-5"></i> Carga de trabajo
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link d-flex align-items-center texto-muted">
                            <i class="bi bi-file-earmark-text me-3 fs-5"></i> Asignación manual
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="${pageContext.request.contextPath}/tema" class="nav-link d-flex align-items-center texto-muted menu-activo">
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
                <div class="px-4 my-4">
                    <h2 class="fw-bold texto-gris">Tema</h2>
                    <p class="texto-dorado">Adapta la identidad del sistema a la administración de gobierno vigente</p>
                </div>

                <!--Caja de agrupación de tarjetas -->
                <div class="px-4 mb-4">
                    <div class="row g-4">

                        <!-- 1. Tarjeta: Colores de la interfaz -->
                        <div class="col-md-6">
                            <div class="card shadow-sm border-0 rounded-3 h-100 fondo-crema">
                                <div class="card-body">
                                    <h5 class="fw-bold mb-3 texto">Colores de la interfaz</h5>

                                    <label class="texto mb-1">Color primario · HEX</label>
                                    <input type="text" class="form-control mb-3" placeholder="#006837" value="${primario}">

                                    <label class="texto mb-1">Color secundario / acento · HEX</label>
                                    <input type="text" class="form-control mb-4" placeholder="#B89758" value="${secundario}">

                                    <div class="d-flex gap-2">
                                        <!-- Botones simulados como muestras de color (usando tu método de div) -->
                                        <div class="btn flex-fill" style="background-color: var(--primario); color: white; cursor: default;">Primario</div>
                                        <div class="btn flex-fill" style="background-color: var(--secundario); color: white; cursor: default;">Acento</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 2. Tarjeta: Vista Previa -->
                        <div class="col-md-6">
                            <div class="card shadow-sm border-0 rounded-3 h-100 fondo-crema">
                                <div class="card-body">
                                    <h5 class="fw-bold mb-3 texto">Vista previa</h5>

                                    <!-- Elementos de la vista previa -->
                                    <div class="p-4 mb-3 btn-primario-solido">
                                        <h4 class="mb-1">PERITOS MORELOS</h4>
                                        <small>Gestión y asignación judicial</small>
                                    </div>

                                    <div class="p-2 mb-4 btn-secundario-solido" >
                                        Identidad institucional vigente
                                    </div>

                                    <p class="texto-muted mb-2">Solicitudes en proceso</p>
                                    <button type="button" class="btn btn-primario-solido">Asignar perito</button>

                                    <p class="texto-muted mt-4 mb-0">La vista previa muestra los colores antes de guardar.</p>
                                </div>
                            </div>
                        </div>

                        <!-- 3. Tarjeta: Logotipo oficial -->
                        <div class="col-md-6">
                            <div class="card shadow-sm border-0 rounded-3 h-100 fondo-crema">
                                <div class="card-body">
                                    <h5 class="fw-bold mb-3 texto">Logotipo oficial</h5>
                                    <p class="texto-muted mb-3">Carga o reemplaza el logotipo de la administración.</p>
                                    <p class="texto-verde fw-bold mb-4" style="font-size: 0.9rem;">Sin archivo oficial adjunto</p>
                                    <button type="button" class="btn btn-secundario">Cargar / reemplazar logotipo</button>
                                </div>
                            </div>
                        </div>

                        <!-- 4. Tarjeta: Imágenes institucionales -->
                        <div class="col-md-6">
                            <div class="card shadow-sm border-0 rounded-3 h-100 fondo-crema">
                                <div class="card-body">
                                    <h5 class="fw-bold mb-3 texto">Imágenes institucionales</h5>
                                    <p class="texto-muted mb-3">Actualiza las imágenes del acceso y encabezados.</p>
                                    <p class="texto-muted mb-4" style="font-size: 0.9rem;">Selecciona una imagen institucional</p>
                                    <button type="button" class="btn btn-secundario">Cargar / reemplazar imágenes</button>
                                </div>
                            </div>
                        </div>

                    </div>

                    <!-- Botones de acción finales -->
                    <div class="mt-4 pt-2">
                        <button type="button" class="btn btn-primario me-2">Revisar cambios</button>
                        <a href="${pageContext.request.contextPath}/tema" type="button" class="btn btn-secundario">Cancelar</a>
                    </div>
                </div>

            </main>

        </div>


    </body>
</html>
