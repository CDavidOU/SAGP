
package utez.edu.mx.sagp.service.peritos;

import utez.edu.mx.sagp.dao.peritos.PeritoDao;
import utez.edu.mx.sagp.model.peritos.EspecialidadPerito;
import utez.edu.mx.sagp.model.peritos.Perito;

import java.util.List;
import java.util.Optional;

public class PeritoService {

    private final PeritoDao peritoDao;

    public PeritoService() {
        this.peritoDao = new PeritoDao();
    }

    // Consultar todos los peritos
    public List<Perito> obtenerTodos() {
        return peritoDao.findAll();
    }

    // Buscar peritos por nombre
    public List<Perito> buscarPorNombre(String nombre) {
        return peritoDao.findByName(nombre);
    }

    // Consultar un perito por ID
    public Optional<Perito> obtenerPorId(String id) {

        if (id == null || id.trim().isEmpty()) {
            throw new IllegalArgumentException(
                    "El identificador del perito es obligatorio."
            );
        }

        return peritoDao.findById(id);
    }

    // Registrar un nuevo perito
    public boolean registrar(Perito perito) {

        validarDatos(perito);

        if (correoExiste(perito.getCorreo(), null)) {
            throw new IllegalArgumentException(
                    "Ya existe un perito registrado con ese correo."
            );
        }

        return peritoDao.save(perito);
    }

    // Actualizar información de un perito
    public boolean actualizar(Perito perito) {

        validarDatos(perito);

        if (perito.getIdPerito() == null
                || perito.getIdPerito().trim().isEmpty()) {
            throw new IllegalArgumentException(
                    "El identificador del perito es obligatorio."
            );
        }

        if (correoExiste(
                perito.getCorreo(),
                perito.getIdPerito()
        )) {
            throw new IllegalArgumentException(
                    "Ese correo ya pertenece a otro perito."
            );
        }

        return peritoDao.update(perito);
    }

    // Activar o desactivar un perito
    public boolean cambiarDisponibilidad(
            String id,
            boolean disponible
    ) {

        if (id == null || id.trim().isEmpty()) {
            throw new IllegalArgumentException(
                    "Debes seleccionar un perito."
            );
        }

        Optional<Perito> encontrado = peritoDao.findById(id);

        if (encontrado.isEmpty()) {
            throw new IllegalArgumentException(
                    "No se encontró el perito seleccionado."
            );
        }

        return peritoDao.updateStatus(id, disponible);
    }

    // Validar información del perito
    private void validarDatos(Perito perito) {

        if (perito == null) {
            throw new IllegalArgumentException(
                    "No se recibieron datos del perito."
            );
        }

        if (perito.getNombreCompleto() == null
                || perito.getNombreCompleto().trim().isEmpty()) {
            throw new IllegalArgumentException(
                    "El nombre completo es obligatorio."
            );
        }

        if (perito.getCorreo() == null
                || !perito.getCorreo().matches(
                "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
        )) {
            throw new IllegalArgumentException(
                    "Ingresa un correo electrónico válido."
            );
        }

        if (perito.getTelefono() != null
                && !perito.getTelefono().trim().isEmpty()
                && !perito.getTelefono().matches("[0-9]{10}")) {
            throw new IllegalArgumentException(
                    "El teléfono debe contener 10 números."
            );
        }

        List<EspecialidadPerito> especialidades =
                perito.getEspecialidades();

        if (especialidades == null || especialidades.isEmpty()) {
            throw new IllegalArgumentException(
                    "Debes agregar al menos una especialidad."
            );
        }

        for (EspecialidadPerito especialidad : especialidades) {

            if (especialidad == null
                    || especialidad.getMateria() == null
                    || especialidad.getMateria().trim().isEmpty()
                    || especialidad.getEspecialidad() == null
                    || especialidad.getEspecialidad().trim().isEmpty()) {

                throw new IllegalArgumentException(
                        "Todas las especialidades deben tener materia y especialidad."
                );
            }
        }
    }

    // Comprobar si un correo ya está registrado
    private boolean correoExiste(String correo, String idExcluir) {

        if (correo == null) {
            return false;
        }

        for (Perito perito : peritoDao.findAll()) {

            boolean mismoCorreo = perito.getCorreo() != null
                    && perito.getCorreo().equalsIgnoreCase(correo.trim());

            boolean mismoPerito = idExcluir != null
                    && idExcluir.equals(perito.getIdPerito());

            if (mismoCorreo && !mismoPerito) {
                return true;
            }
        }

        return false;
    }
}
