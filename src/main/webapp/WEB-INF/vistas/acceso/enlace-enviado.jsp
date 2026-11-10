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
    <title>Revisa tu correo · Peritos Morelos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/enlace-enviado.css" rel="stylesheet">
</head>
<body>
<header class="barra-superior">
    <img src="${pageContext.request.contextPath}/img/logo-morelos.jpeg" alt="Gobierno del Estado de Morelos">
    <span class="text-secondary">Peritos Morelos · Recuperación de acceso</span>
    <span class="ms-auto fw-semibold text-uppercase texto-sagp" style="font-size: .75rem;">Acceso seguro</span>
</header>

<main class="d-flex flex-column align-items-center justify-content-center p-3" style="min-height: calc(100vh - 68px);">
    <div class="w-100" style="max-width: 520px;">
        <p class="crumb">Recuperación de contraseña</p>
        <h1 class="titulo-vista">Revisa tu correo</h1>
        <p class="subtitulo-vista">Confirmación de la operación</p>

        <div class="card"><div class="card-body">
            <span class="chip badge rounded-pill mb-3">Operación recibida</span>
            <p class="fw-semibold mb-3" style="font-size: 1rem;">Si existe una cuenta asociada, recibirás un enlace para restablecer tu contraseña.</p>
            <div class="d-flex flex-wrap gap-2">
                <a class="btn btn-sagp" href="#">Volver al acceso</a>
                <a class="btn btn-outline-sagp" href="#">Crear nueva contraseña</a>
            </div>
        </div></div>
    </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
