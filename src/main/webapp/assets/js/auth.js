document.querySelectorAll("[data-toggle-password]").forEach(function (button) {
    const inputId = button.getAttribute("data-toggle-password");
    const passwordInput = document.getElementById(inputId);

    if (!passwordInput) {
        return;
    }

    const eyeIcon = `
        <svg viewBox="0 0 24 24" aria-hidden="true" focusable="false">
            <path
                d="M2.5 12s3.4-6 9.5-6 9.5 6 9.5 6-3.4 6-9.5 6-9.5-6-9.5-6Z"
                fill="none"
                stroke="currentColor"
                stroke-width="1.7">
            </path>
            <circle
                cx="12"
                cy="12"
                r="2.7"
                fill="none"
                stroke="currentColor"
                stroke-width="1.7">
            </circle>
        </svg>`;

    const eyeOffIcon = `
        <svg viewBox="0 0 24 24" aria-hidden="true" focusable="false">
            <path
                d="m3 3 18 18M10.6 6.2A10.8 10.8 0 0 1 12 6c6.1 0 9.5 6 9.5 6a15.3 15.3 0 0 1-3.1 3.7M6.2 6.2C3.8 7.7 2.5 12 2.5 12s3.4 6 9.5 6c1.2 0 2.3-.3 3.3-.7"
                fill="none"
                stroke="currentColor"
                stroke-width="1.7"
                stroke-linecap="round">
            </path>
        </svg>`;

    button.innerHTML = eyeIcon;

    button.addEventListener("click", function () {
        const isHidden = passwordInput.type === "password";

        passwordInput.type = isHidden ? "text" : "password";
        button.innerHTML = isHidden ? eyeOffIcon : eyeIcon;
        button.setAttribute(
            "aria-label",
            isHidden ? "Ocultar contraseña" : "Mostrar contraseña"
        );
    });
});