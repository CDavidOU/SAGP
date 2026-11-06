const nombre = sessionStorage.getItem("dictamenNombre");
const termino = sessionStorage.getItem("dictamenTermino");
if (nombre) document.getElementById("nombreDictamen").textContent = nombre;
if (termino) document.getElementById("terminoDictamen").textContent = termino;

const btnVer = document.getElementById("btnVerDictamen");
const avisoVer = document.getElementById("avisoVer");

btnVer.addEventListener("click", () => {
    avisoVer.classList.add("d-none");
    const dataUrl = sessionStorage.getItem("dictamenPdf");

    if (!dataUrl) {
        avisoVer.textContent = "Vista previa no disponible por el momento";
        avisoVer.classList.remove("d-none");
        return;
    }

    // Convierte el contenido guardado (base64) en un archivo temporal y lo abre en otra pestaña
    const base64 = dataUrl.split(",")[1];
    const bytes = Uint8Array.from(atob(base64), c => c.charCodeAt(0));
    const url = URL.createObjectURL(new Blob([bytes], { type: "application/pdf" }));
    window.open(url, "_blank");
});