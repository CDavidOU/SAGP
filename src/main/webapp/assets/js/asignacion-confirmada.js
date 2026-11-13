const datos = sessionStorage.getItem("asignacionConfirmada");
if (datos) {
    const a = JSON.parse(datos);
    document.getElementById("idSolicitud").textContent = a.solicitud;
    document.getElementById("cNombre").textContent = `${a.perito} · ${a.materia} / ${a.especialidad}`;
    document.getElementById("cInicio").textContent = `Inicio: ${a.inicio}`;
    document.getElementById("cEstado").textContent = `Estado: En proceso · Carga actual: ${a.carga}`;
}