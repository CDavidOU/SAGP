
package utez.edu.mx.sagp.dao.peritos;

import utez.edu.mx.sagp.model.peritos.EspecialidadPerito;
import utez.edu.mx.sagp.model.peritos.Perito;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

public class PeritoDao {

    // Almacenamiento temporal compartido en memoria
    private static final Map<String, Perito> peritos = new LinkedHashMap<>();

    private static int consecutivo = 5;

    // Inicializar registros de prueba
    static {
        inicializarDatos();
    }

    private static void inicializarDatos() {

        Perito lucia = new Perito(
                "PER-001",
                "Lucía Hernández López",
                "lucia@ejemplo.mx",
                "7771001001",
                true,
                2,
                List.of(new EspecialidadPerito("Familiar", "Psicología"))
        );

        Perito carlos = new Perito(
                "PER-002",
                "Carlos Méndez Ruiz",
                "carlos@ejemplo.mx",
                "7771001002",
                true,
                1,
                List.of(new EspecialidadPerito("Civil", "Grafoscopía"))
        );

        Perito maria = new Perito(
                "PER-003",
                "María Torres García",
                "maria@ejemplo.mx",
                "7771001003",
                true,
                4,
                List.of(
                        new EspecialidadPerito("Familiar", "Psicología"),
                        new EspecialidadPerito("Civil", "Psicología")
                )
        );

        Perito adriana = new Perito(
                "PER-004",
                "Adriana López Morales",
                "adriana@ejemplo.mx",
                "7771001004",
                false,
                0,
                List.of(new EspecialidadPerito("Civil", "Valuación"))
        );

        adriana.setFechaBaja(java.time.LocalDate.now());

        peritos.put(lucia.getIdPerito(), lucia);
        peritos.put(carlos.getIdPerito(), carlos);
        peritos.put(maria.getIdPerito(), maria);
        peritos.put(adriana.getIdPerito(), adriana);
    }

    // Consultar todos los peritos
    public synchronized List<Perito> findAll() {
        return new ArrayList<>(peritos.values());
    }

    // Buscar un perito por su identificador
    public synchronized Optional<Perito> findById(String id) {
        return Optional.ofNullable(peritos.get(id));
    }

    // Buscar por nombre
    public synchronized List<Perito> findByName(String nombre) {

        List<Perito> resultado = new ArrayList<>();

        if (nombre == null || nombre.trim().isEmpty()) {
            return findAll();
        }

        String busqueda = nombre.trim().toLowerCase();

        for (Perito perito : peritos.values()) {

            if (perito.getNombreCompleto()
                    .toLowerCase()
                    .contains(busqueda)) {

                resultado.add(perito);
            }
        }

        return resultado;
    }

    // Guardar un nuevo perito
    public synchronized boolean save(Perito perito) {

        if (perito == null) {
            return false;
        }

        if (perito.getIdPerito() == null
                || perito.getIdPerito().trim().isEmpty()) {

            perito.setIdPerito(
                    String.format("PER-%03d", consecutivo++)
            );
        }

        if (peritos.containsKey(perito.getIdPerito())) {
            return false;
        }

        peritos.put(perito.getIdPerito(), perito);

        return true;
    }

    // Actualizar información de un perito
    public synchronized boolean update(Perito perito) {

        if (perito == null || perito.getIdPerito() == null) {
            return false;
        }

        if (!peritos.containsKey(perito.getIdPerito())) {
            return false;
        }

        peritos.put(perito.getIdPerito(), perito);

        return true;
    }

    // Activar o desactivar un perito
    public synchronized boolean updateStatus(
            String id,
            boolean disponible
    ) {

        Perito perito = peritos.get(id);

        if (perito == null) {
            return false;
        }

        perito.setDisponible(disponible);

        return true;
    }
}
