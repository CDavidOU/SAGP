<%--
  Created by IntelliJ IDEA.
  User: BrianGalvez
  Date: 05/11/2026
  Time: 11:15 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Revisa tu correo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body class="fondo-crema" style="min-height: 100vh;">

<header class="bg-white p-3 d-flex align-items-center gap-3">
    <img src="${pageContext.request.contextPath}/img/logo.png" alt="Gobierno de Morelos" style="height: 40px; width: auto;">
    <span>Peritos Morelos · Recuperación de acceso</span>
    <span class="ms-auto texto-verde fw-bold text-uppercase" style="font-size: 0.75rem;">Acceso seguro</span>
</header>

<main class="d-flex flex-column align-items-center justify-content-center p-3" style="min-height: calc(100vh - 72px);">
    <div class="w-100" style="max-width: 520px;">
        <p class="texto-verde fw-bold text-uppercase mb-1" style="font-size: 0.75rem;">Recuperación de contraseña</p>
        <h2 class="fw-bold">Revisa tu correo</h2>
        <p class="texto-dorado">Confirmación de la operación</p>

        <div class="card shadow border-0 rounded-3 bg-white">
            <div class="card-body">
                <span class="badge badge-proceso rounded-pill mb-3">Operación recibida</span>
                <p class="fw-semibold mb-3">Si existe una cuenta asociada, recibirás un enlace para restablecer tu contraseña.</p>
                <div class="d-flex flex-wrap gap-2">
                    <a class="btn btn-primario" href="#">Volver al acceso</a>
                    <a class="btn btn-secundario" href="#">Crear nueva contraseña</a>
                </div>
            </div>
        </div>
    </div>
</main>

</body>
</html>
