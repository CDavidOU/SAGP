<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gestión de peritos | SAGP</title>

    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet">

    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
            rel="stylesheet">

    <link
            href="${pageContext.request.contextPath}/assets/css/estilos.css"
            rel="stylesheet">
</head>

<body class="fondo-crema">
<div class="d-flex min-vh-100">
    <jsp:include page="/WEB-INF/vistas/sidebar.jsp">
        <jsp:param name="seccionActiva" value="peritos"/>
    </jsp:include>

    <div class="flex-grow-1 min-vh-100">
        <header class="bg-white border-bottom d-flex align-items-center
                           justify-content-between px-4 px-lg-5 py-3">
                <span class="texto">
                    Gestión y asignación de peritos judiciales
                </span>

            <span class="texto-verde fw-semibold text-nowrap">
                    Administrador&nbsp; / &nbsp;Morelos
                </span>
        </header>

        <main class="container-fluid px-4 px-lg-5 py-4">
            <div class="texto-verde fw-semibold small mb-4">
                ADMINISTRADOR / MORELOS
            </div>

            <h1 class="texto-verde fw-semibold mb-2">
                Gestión de peritos
            </h1>

            <p class="texto mb-4">
                Consulta, registra y actualiza los perfiles del directorio estatal.
            </p>

            <section aria-label="Directorio de peritos">
                <div class="row align-items-end g-3 mb-4">
                    <div class="col-12 col-lg-8">
                        <label for="buscar-perito" class="form-label texto-verde">
                            Buscar perito
                        </label>

                        <input
                                id="buscar-perito"
                                name="buscar"
                                type="search"
                                class="form-control"
                                placeholder="Ej. Juan Carlos Pérez">
                    </div>

                    <div class="col-12 col-lg-4">
                        <button class="btn btn-primario w-100 w-lg-auto" type="button">
                            Agregar Nuevo Perito
                        </button>
                    </div>
                </div>

                <div class="bg-white border rounded-3 overflow-hidden">
                    <div class="table-responsive">
                        <table class="table table-hover align-middle mb-0">
                            <thead class="fondo-crema">
                            <tr>
                                <th scope="col" class="texto-muted fw-semibold small px-3 py-3">
                                    ID
                                </th>
                                <th scope="col" class="texto-muted fw-semibold small px-3 py-3">
                                    NOMBRE COMPLETO
                                </th>
                                <th scope="col" class="texto-muted fw-semibold small px-3 py-3">
                                    MATERIA / ESPECIALIDAD PRINCIPAL
                                </th>
                                <th scope="col" class="texto-muted fw-semibold small px-3 py-3">
                                    ESTADO
                                </th>
                            </tr>
                            </thead>

                            <tbody>
                            <tr>
                                <td class="texto px-3 py-3">PER-001</td>
                                <td class="texto px-3 py-3">Lucía Hernández López</td>
                                <td class="texto px-3 py-3">Familiar / Psicología</td>
                                <td class="px-3 py-3">
                                    <span class="badge-proceso rounded">Activo</span>
                                </td>
                            </tr>

                            <tr>
                                <td class="texto px-3 py-3">PER-002</td>
                                <td class="texto px-3 py-3">Carlos Méndez Ruiz</td>
                                <td class="texto px-3 py-3">Civil / Grafoscopía</td>
                                <td class="px-3 py-3">
                                    <span class="badge-proceso rounded">Activo</span>
                                </td>
                            </tr>

                            <tr>
                                <td class="texto px-3 py-3">PER-003</td>
                                <td class="texto px-3 py-3">María Torres García</td>
                                <td class="texto px-3 py-3">Familiar / Psicología</td>
                                <td class="px-3 py-3">
                                    <span class="badge-proceso rounded">Activo</span>
                                </td>
                            </tr>

                            <tr>
                                <td class="texto px-3 py-3">PER-004</td>
                                <td class="texto px-3 py-3">Adriana López Morales</td>
                                <td class="texto px-3 py-3">Civil / Valuación</td>
                                <td class="px-3 py-3">
                                            <span class="badge bg-light texto-muted rounded">
                                                Inactivo
                                            </span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <p class="texto mt-3 mb-0">
                    Selecciona un perito para consultar sus datos y casos históricos.
                </p>
            </section>
        </main>
    </div>
</div>
</body>
</html>