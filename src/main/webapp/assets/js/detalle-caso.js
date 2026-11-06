const $ = id => document.getElementById(id);
const zona = $("zonaPdf"), input = $("archivoPdf"), btnTerminar = $("btnTerminar");
const nombre = $("nombreArchivo"), ayuda = $("ayuda"), error = $("errorPdf");
let actual = null;

function reiniciar() {
    actual = null;
    input.value = "";
    nombre.textContent = "";
    btnTerminar.disabled = true;
    ayuda.textContent = "Seleccione y cargue un PDF para habilitar este botón.";
}

const esPdf = a => a.type === "application/pdf" || a.name.toLowerCase().endsWith(".pdf");

function elegir(archivo) {
    error.classList.add("d-none");
    if (!archivo) { reiniciar(); return; }            // canceló el diálogo
    if (!esPdf(archivo)) {
        reiniciar();
        error.textContent = "Solo se permiten archivos PDF.";
        error.classList.remove("d-none");
        return;
    }
    actual = archivo;
    nombre.textContent = `${archivo.name} (${(archivo.size / 1024 / 1024).toFixed(2)} MB)`;
    btnTerminar.disabled = false;
    ayuda.textContent = "Archivo listo. Al terminar el peritaje ya no podrá editarlo.";
}

$("btnSeleccionar").addEventListener("click", () => input.click());
input.addEventListener("change", () => elegir(input.files[0]));

zona.addEventListener("dragover", e => { e.preventDefault(); zona.classList.add("arrastrando"); });
zona.addEventListener("dragleave", () => zona.classList.remove("arrastrando"));
zona.addEventListener("drop", e => {
    e.preventDefault();
    zona.classList.remove("arrastrando");
    const archivo = e.dataTransfer.files[0];
    if (archivo) {
        const dt = new DataTransfer();
        dt.items.add(archivo);
        input.files = dt.files;
        elegir(archivo);
    }
});

// Simulación: guarda los datos para la pantalla siguiente (luego los reemplazará el servidor)
btnTerminar.addEventListener("click", () => {
    if (!actual) return;
    sessionStorage.setItem("dictamenNombre", actual.name);
    sessionStorage.setItem("dictamenTermino",
        new Date().toLocaleString("es-MX", { dateStyle: "medium", timeStyle: "medium" }));
    window.location.href = "dictamen-entregado";
});