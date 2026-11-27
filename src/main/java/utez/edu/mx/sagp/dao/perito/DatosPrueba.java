package utez.edu.mx.sagp.dao.perito;

import utez.edu.mx.sagp.model.Dictamen;
import utez.edu.mx.sagp.model.perito.AsignacionPerito;
import utez.edu.mx.sagp.model.perito.PerfilPerito;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 * "Base de datos" TEMPORAL en memoria para el portal del perito.
 * Los datos duran mientras Tomcat esté encendido (al reiniciar, vuelven a los iniciales).
 * Cuando exista MySQL: los DAO dejan de usar esta clase y esta clase se BORRA.
 */
public final class DatosPrueba {

    public static final List<PerfilPerito> PERITOS = new ArrayList<>();
    public static final List<AsignacionPerito> ASIGNACIONES = new ArrayList<>();
    public static final List<Dictamen> DICTAMENES = new ArrayList<>();
    public static int siguienteIdDictamen = 1;

    static {
        PERITOS.add(new PerfilPerito(1, 10, "CED-4589123", true, 2,
                "Lucía", "Hernández", "López", "lucia.hernandez@ejemplo.test", "777 123 4567", "Perito2026",
                "Familiar", "Psicología", "Cuernavaca"));
        PERITOS.add(new PerfilPerito(2, 11, "CED-7781204", true, 4,
                "María", "Torres", "García", "maria.torres@ejemplo.test", "777 987 6543", "Perito2026",
                "Familiar", "Psicología", "Jiutepec"));

        // Asignaciones activas de Lucía (idPerito = 1)
        ASIGNACIONES.add(new AsignacionPerito(1, 1, LocalDateTime.of(2026, 10, 22, 9, 42), true,
                148, "SOL-2026-0148", "EXP-391/2026", "Juzgado Familiar de Cuernavaca",
                "Valoración psicológica de las partes en juicio de custodia.",
                LocalDateTime.of(2026, 11, 30, 23, 59), "EN_ACTUACION",
                "Familiar", "Psicología", "Cuernavaca"));
        ASIGNACIONES.add(new AsignacionPerito(2, 1, LocalDateTime.of(2026, 10, 20, 11, 15), true,
                142, "SOL-2026-0142", "EXP-364/2026", "Juzgado Familiar de Emiliano Zapata",
                "Evaluación psicológica de menor en juicio de convivencia.",
                LocalDateTime.of(2026, 12, 5, 23, 59), "EN_ACTUACION",
                "Familiar", "Psicología", "Emiliano Zapata"));
        // Caso ya terminado de Lucía (tiene dictamen)
        ASIGNACIONES.add(new AsignacionPerito(3, 1, LocalDateTime.of(2026, 9, 28, 10, 5), true,
                120, "SOL-2026-0120", "EXP-301/2026", "Juzgado Familiar de Jiutepec",
                "Estudio psicológico en juicio de pensión alimenticia.",
                LocalDateTime.of(2026, 10, 15, 23, 59), "DICTAMEN_ENTREGADO",
                "Familiar", "Psicología", "Jiutepec"));
        // Caso de OTRA perito: Lucía no debe poder verlo
        ASIGNACIONES.add(new AsignacionPerito(4, 2, LocalDateTime.of(2026, 10, 25, 16, 30), true,
                150, "SOL-2026-0150", "EXP-410/2026", "Juzgado Familiar de Temixco",
                "Valoración psicológica.", LocalDateTime.of(2026, 12, 10, 23, 59), "EN_ACTUACION",
                "Familiar", "Psicología", "Temixco"));

        DICTAMENES.add(new Dictamen(siguienteIdDictamen++, 120, 1,
                "Dictamen_SOL-2026-0120.pdf", "Sin observaciones.", "Entregado", null,
                LocalDateTime.of(2026, 10, 10, 18, 3, 41), null));
    }

    private DatosPrueba() {

    }
}