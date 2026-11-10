const solicitud = {
    id: "SOL-2026-0149",
    juzgado: "Juzgado Civil · Temixco",
    materia: "Civil",
    especialidad: "Valuación",
    expediente: "EXP-482/2026"
};

let peritos = [
    { nombre: "Juan",    apellidos: "Galvez",    activo: true, materia: "Civil", especialidad: "Valuación", carga: 2 },
    { nombre: "Kevin", apellidos: "Galvez Villava",    activo: true, materia: "Civil", especialidad: "Valuación", carga: 2 },
    { nombre: "Karla",  apellidos: "Villalva", activo: true, materia: "Civil", especialidad: "Valuación", carga: 4 },
    { nombre: "Oliver",    apellidos: "Cruz",  activo: true, materia: "Penal", especialidad: "Balística", carga: 1 }
];

const completo = p => `${p.nombre} ${p.apellidos}`;

// Activos con la materia y especialidad pedidas
function candidatos(sol, lista) {
    return lista.filter(p => p.activo && p.materia === sol.materia && p.especialidad === sol.especialidad);
}

// Menor carga; en empate, orden A-Z por nombre y luego apellidos
function ordenar(lista) {
    return [...lista].sort((a, b) =>
        a.carga - b.carga ||
        a.nombre.localeCompare(b.nombre, "es") ||
        a.apellidos.localeCompare(b.apellidos, "es"));
}

const $ = id => document.getElementById(id);
let elegido = null;

function mostrar(vista) {
    ["vistaPropuesta", "vistaConfirmada", "vistaSinCandidatos"]
        .forEach(v => $(v).classList.toggle("d-none", v !== vista));
}

function proponer(lista) {
    $("idSolicitud").textContent = solicitud.id;
    $("titulo").textContent = "Asignación automática";
    $("dJuzgado").textContent = solicitud.juzgado;
    $("dMateria").textContent = `${solicitud.materia} / ${solicitud.especialidad}`;
    $("dExpediente").textContent = solicitud.expediente;

    const ord = ordenar(candidatos(solicitud, lista));
    if (ord.length === 0) {
        elegido = null;
        mostrar("vistaSinCandidatos");
        return;
    }

    elegido = ord[0];
    const empatados = ord.filter(p => p.carga === elegido.carga);
    const hayEmpate = empatados.length > 1;

    $("chip").textContent = hayEmpate ? "Desempate A-Z" : "Menor carga";
    $("pNombre").textContent = completo(elegido);
    $("pMateria").textContent = `${elegido.materia} · ${elegido.especialidad}`;
    $("pCarga").textContent = `${elegido.carga} → ${elegido.carga + 1} al asignar`;
    $("pMotivo").textContent = hayEmpate
        ? `${elegido.nombre} precede a ${empatados[1].nombre} en orden alfabético.`
        : "Es el perito con menos casos activos.";

    $("tabla").innerHTML = ord.map(p => {
        const res = p === elegido
            ? (hayEmpate ? "Seleccionada · A-Z" : "Seleccionado")
            : (p.carga === elegido.carga ? `Empate · ${p.carga} en proceso` : "Disponible");
        return `<tr class="${p === elegido ? "winner" : ""}">
              <td class="fw-semibold texto-sagp">${completo(p)}</td>
              <td>Activo</td><td>${p.carga}</td><td>${res}</td>
            </tr>`;
    }).join("");

    $("aviso").innerHTML = hayEmpate
        ? `<strong>Empate resuelto automáticamente: ${completo(elegido)}</strong><br>${completo(elegido)} y ${completo(empatados[1])} tienen ${elegido.carga} peritajes. Se elige ${elegido.nombre} por orden A-Z. El inicio se registra al asignar.`
        : `<strong>Perito seleccionado: ${completo(elegido)}</strong><br>Tiene la menor carga de trabajo. El inicio se registra al asignar.`;

    mostrar("vistaPropuesta");
}

$("btnConfirmar").addEventListener("click", () => {
    if (!elegido) return;
    elegido.carga += 1;
    const ahora = new Date().toLocaleString("es-MX", { dateStyle: "medium", timeStyle: "short" });
    $("titulo").textContent = "Asignación confirmada";
    $("cNombre").textContent = `${completo(elegido)} · ${solicitud.materia} / ${solicitud.especialidad}`;
    $("cInicio").textContent = `Inicio: ${ahora}`;
    $("cEstado").textContent = `Estado: En proceso · Carga actual: ${elegido.carga}`;
    mostrar("vistaConfirmada");
});

$("btnSinCandidatos").addEventListener("click", () =>
    proponer(peritos.map(p => ({ ...p, activo: false }))));

const reiniciar = () => proponer(peritos);
$("btnReiniciar").addEventListener("click", reiniciar);
$("btnReiniciar2").addEventListener("click", reiniciar);

proponer(peritos);