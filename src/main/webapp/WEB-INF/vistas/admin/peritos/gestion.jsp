<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gestión de peritos | SAGP</title>

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/estilos.css">
</head>

<body class="bg-light" style="overflow-x: hidden;">
<div class="container-fluid p-0 d-flex">

    <jsp:include page="/WEB-INF/vistas/sidebar.jsp">
        <jsp:param name="seccionActiva" value="peritos"/>
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
            <div class="texto-verde fw-semibold mb-3">
                ADMINISTRADOR / MORELOS
            </div>

            <h1 class="fw-bold texto mb-2">Gestión de peritos</h1>

            <p class="texto-muted mb-0">
                Consulta, registra y actualiza los perfiles del directorio estatal.
            </p>
        </div>

        <div class="px-4 mt-4">
            <div class="card bg-white border-0 rounded-3 shadow-sm p-4">
                <div class="d-flex justify-content-between align-items-end gap-3 flex-wrap mb-4">
                    <div>
                        <label class="form-label" for="buscar-perito">
                            Buscar perito
                        </label>
                        <input
                                class="form-control"
                                id="buscar-perito"
                                name="buscar"
                                type="search"
                                placeholder="Ej. Juan Carlos Pérez">
                    </div>

                    <button class="btn btn-primario" type="button">
                        <i class="bi bi-person-plus me-2" aria-hidden="true"></i>
                        Agregar nuevo perito
                    </button>
                </div>

                <div class="table-responsive">
                    <table class="table align-middle mb-2 texto">
                        <thead class="table-light texto-muted">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">NOMBRE COMPLETO</th>
                            <th scope="col">MATERIA / ESPECIALIDAD PRINCIPAL</th>
                            <th scope="col">ESTADO</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>PER-001</td>
                            <td>Lucía Hernández López</td>
                            <td>Familiar / Psicología</td>
                            <td>
                                <span class="badge badge-proceso rounded-pill">Activo</span>
                            </td>
                        </tr>
                        <tr>
                            <td>PER-002</td>
                            <td>Carlos Méndez Ruiz</td>
                            <td>Civil / Grafoscopía</td>
                            <td>
                                <span class="badge badge-proceso rounded-pill">Activo</span>
                            </td>
                        </tr>
                        <tr>
                            <td>PER-003</td>
                            <td>María Torres García</td>
                            <td>Familiar / Psicología</td>
                            <td>
                                <span class="badge badge-proceso rounded-pill">Activo</span>
                            </td>
                        </tr>
                        <tr>
                            <td>PER-004</td>
                            <td>Adriana López Morales</td>
                            <td>Civil / Valuación</td>
                            <td>
                                <span class="badge badge-pendiente rounded-pill">Inactivo</span>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <p class="texto-muted small mb-0">
                    Selecciona un perito para consultar sus datos y casos históricos.
                </p>
            </div>
        </div>
    </main>
</div>
</body>
</html>