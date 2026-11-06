/*Datos de contacto*/
const form = document.getElementById("formContacto");
const ok = document.getElementById("okContacto");

form.addEventListener("submit", e => {
    e.preventDefault();
    ok.classList.add("d-none");
    form.classList.add("was-validated");                       // marca los campos con error
    if (form.checkValidity()) ok.classList.remove("d-none");
});

/* Cambiar contraseña (ventana emergente)  */
const modalEl = document.getElementById("modalPassword");
const formPass = document.getElementById("formPassword");
const nueva = document.getElementById("passNueva");
const confirmar = document.getElementById("passConfirmar");
const okPass = document.getElementById("okPassword");

// La confirmación solo es válida si coincide con la nueva contraseña
function validarCoincidencia() {
    confirmar.setCustomValidity(confirmar.value === nueva.value ? "" : "No coincide");
}
nueva.addEventListener("input", validarCoincidencia);
confirmar.addEventListener("input", validarCoincidencia);

formPass.addEventListener("submit", e => {
    e.preventDefault();
    validarCoincidencia();
    formPass.classList.add("was-validated");
    if (!formPass.checkValidity()) return;

    bootstrap.Modal.getInstance(modalEl).hide();
    okPass.classList.remove("d-none");
});

// Al cerrar la ventana se limpian los campos
modalEl.addEventListener("hidden.bs.modal", () => {
    formPass.reset();
    formPass.classList.remove("was-validated");
    confirmar.setCustomValidity("");
});