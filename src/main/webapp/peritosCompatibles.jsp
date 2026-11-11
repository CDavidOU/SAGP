
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Peritos disponibles</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="./css/estilos.css">

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

        img{
            max-width: 100%;
            height: auto;
        }
    </style>

</head>
<body class="bg-light" style="overflow-x: hidden;">

<div class="container-fluid p-0 d-flex">
    <!-- Panel izquierdo -->
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

        <!--Titulo -->
        <div class="px-4 my-4 mb-4">
            <p class="texto-verde mb-1" style="font-size: 0.6rem; letter-spacing: 0.5px;">ASIGNACIÓN PENDIENTE</p>
            <h2 class="fw-bold texto-gris">No hay peritos disponibles</h2>
            <p class="texto-dorado">Confirmación de la operación</p>
        </div>

        <!-- Card -->
        <div class="row g-4" style="padding-left: 20px">
            <div class="col-12" style="padding-right: 30px">
                <!-- Contenido de la card -->
                <div class="card border-1 shadow-sm p-3 h-100">
                    <div class="py-2">
                        <span class="badge badge-pendiente">Pendiente de asignación</span>
                    </div>

                    <h5 class="texto-gris">No se encontró un perito activo con la materia y especialidad requeridas. La solicitud permanece por asignar.</h5>

                    <div class="py-2">
                        <button class="btn btn-primario m-2">Revisar peritos</button>
                    </div>
                </div>

            </div>
        </div>

    </main>

</div>

</body>
</html>
