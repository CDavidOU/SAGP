<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Correo enviado | Peritos Morelos</title>

    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet">

    <link
            href="${pageContext.request.contextPath}/assets/css/auth.css"
            rel="stylesheet">
</head>
<body>
<main class="auth-page container-fluid p-0">
    <div class="row g-0 min-vh-100">

        <section class="auth-brand-panel col-12 col-lg-5">
            <div class="brand-heading">
                <div class="brand-mark">
                    <img
                            class="brand-emblem"
                            src="${pageContext.request.contextPath}/assets/img/morelos-emblema.jpg"
                            alt="Emblema de Morelos">
                </div>

                <div>
                    <p class="brand-name">PERITOS MORELOS</p>
                    <p class="brand-subtitle">GESTIÓN JUDICIAL · ESTADO DE MORELOS</p>
                </div>
            </div>

            <div class="brand-message">
                <h1>
                    La experiencia correcta.<br>
                    En cada solicitud.
                </h1>

                <p class="brand-description">
                    Una plataforma para coordinar peritajes, distribuir el
                    trabajo y dar seguimiento a cada dictamen.
                </p>

                <div class="brand-benefit">
                    <span class="benefit-number">01</span>
                    <div>
                        <h2>Asignación equitativa</h2>
                        <p>Materia, especialidad y menor carga activa.</p>
                    </div>
                </div>

                <div class="brand-benefit">
                    <span class="benefit-number">02</span>
                    <div>
                        <h2>Cobertura estatal</h2>
                        <p>Un mismo equipo para todos los municipios.</p>
                    </div>
                </div>

                <div class="brand-benefit">
                    <span class="benefit-number">03</span>
                    <div>
                        <h2>Seguimiento claro</h2>
                        <p>Desde la asignación hasta el dictamen final.</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="auth-form-panel col-12 col-lg-7">
            <div class="auth-form-content">
                <p class="form-eyebrow">RECUPERACIÓN DE CUENTA</p>
                <h2 class="form-title">Revisa tu correo</h2>

                <p class="form-description">
                    Si el correo corresponde a una cuenta registrada,
                    recibirás instrucciones para crear una nueva contraseña.
                </p>

                <a
                        class="btn auth-submit-button w-100 d-flex align-items-center justify-content-center text-decoration-none"
                        href="${pageContext.request.contextPath}/restablecer">
                    Continuar a restablecer contraseña
                </a>

                <a
                        class="forgot-link"
                        href="${pageContext.request.contextPath}/login">
                    Volver al inicio de sesión
                </a>

                <p class="form-footer">
                    Si no recibes el mensaje, revisa también la carpeta de correo no deseado.
                </p>
            </div>
        </section>

    </div>
</main>
</body>
</html>