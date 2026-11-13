<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recuperación de Acceso | SAGP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/styles.css">
</head>
<body class="fondo-crema min-vh-100 d-flex flex-column">

    <!-- Header superior -->
    <div class="p-3 bg-white border-bottom d-flex justify-content-between header-top">
        <span class="texto-muted">PERITOS MORELOS · Recuperación de acceso</span>
        <span class="texto-verde fw-bold">ACCESO SEGURO</span>
    </div>

    <!-- Contenido Centrado -->
    <div class="container flex-grow-1 d-flex flex-column justify-content-center py-5" style="max-width: 750px;">
        <small class="texto-verde fw-bold text-uppercase" style="font-size: 0.75rem;">RECUPERACIÓN DE ACCESO</small>
        <h2 class="fw-bold text-dark mt-2 mb-1">Crear nueva contraseña</h2>
        <p class="texto-muted mb-4">Vista de ejemplo al abrir un enlace de recuperación válido.</p>

        <div class="card-custom p-4">
            <h5 class="fw-bold text-dark mb-3">Nueva contraseña</h5>

            <form>
                <div class="mb-3">
                    <label class="form-label text-dark" style="font-size: 0.85rem;">Contraseña nueva</label>
                    <input type="password" class="form-class form-control rounded-2 py-2" value="............">
                </div>

                <div class="mb-4">
                    <label class="form-label text-dark" style="font-size: 0.85rem;">Confirmar contraseña</label>
                    <input type="password" class="form-control rounded-2 py-2" value="............">
                </div>

                <button type="submit" class="btn btn-primario px-4 py-2 rounded-2">Guardar contraseña</button>
            </form>
        </div>
    </div>

</body>
</html>