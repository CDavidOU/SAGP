<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<aside class="menu d-flex flex-column border-end" style="width:250px; height: 100vh; position: sticky; top: 0; background-color: #4A5D45">

    <div class="m-2 text-center">
        <img src="${pageContext.request.contextPath}/img/logo.png" alt="Gobierno de Morelos" style="max-width: 100%; height: auto;">
    </div>

    <p class="texto-dorado fw-bold px-3 mb-3" style="font-size: 0.75rem; letter-spacing: 0.5px;">PORTAL DEL PERITO</p>

    <ul class="nav flex-column gap-2 mb-auto">
        <li class="nav-item">
            <a href="#" class="nav-link d-flex align-items-center ${param.seccionActiva == 'asignaciones' ? 'menu-activo rounded' : 'enlace-menu'}">
                <i class="bi bi-file-earmark-text me-3 fs-5"></i> Mis asignaciones
            </a>
        </li>
        <li class="nav-item">
            <a href="#" class="nav-link d-flex align-items-center ${param.seccionActiva == 'dictamenes' ? 'menu-activo rounded' : 'enlace-menu'}">
                <i class="bi bi-file-earmark-text me-3 fs-5"></i> Dictámenes
            </a>
        </li>
        <li class="nav-item">
            <a href="#" class="nav-link d-flex align-items-center ${param.seccionActiva == 'perfil' ? 'menu-activo rounded' : 'enlace-menu'}">
                <i class="bi bi-people me-3 fs-5"></i> Mi perfil
            </a>
        </li>
    </ul>

    <div class="mt-auto pt-3">
        <p class="texto-dorado mx-3 mb-1" style="font-size: 0.85rem; font-weight: bold;">Cobertura estatal</p>
        <p class="texto-crema mx-3 mb-4" style="font-size: 0.75rem; line-height: 1.2; opacity: 0.8;">Todos los municipios<br>de Morelos</p>

        <div class="d-flex align-items-center m-3">
            <div class="rounded-circle d-flex justify-content-center align-items-center circulo-iniciales">LH</div>
            <span class="ms-2 texto-crema" style="font-size: 0.85rem; font-weight: 500;">Lucía Hernández</span>
        </div>

        <a href="#" class="btn btn-secundario w-100 mx-3 mb-3" style="width: 90% !important; border-radius: 8px; font-size: 0.9rem;">Cerrar sesión</a>
    </div>
</aside>