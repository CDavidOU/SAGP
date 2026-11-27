package utez.edu.mx.sagp.dao.perito.miperfil;

import utez.edu.mx.sagp.dao.perito.DatosPrueba;
import utez.edu.mx.sagp.model.perito.PerfilPerito;

/**
 * Acceso a datos del perfil del perito (tablas Peritos + Usuarios).
 */
public class PerfilDao {

    /*
     * SELECT p.id_perito, p.id_usuario, p.numero_cedula, p.disponible, p.carga_activa,
     *        u.nombre, u.apellido_paterno, u.apellido_materno, u.correo, u.telefono, u.contrasena,
     *        ma.nombre AS materia, e.nombre AS especialidad, mu.nombre AS municipio
     * FROM peritos p
     * JOIN usuarios u ON u.id_usuario = p.id_usuario
     * JOIN especialidades e ON e.id_especialidad = p.id_especialidad
     * JOIN materias ma ON ma.id_materia = e.id_materia
     * JOIN municipios mu ON mu.id_municipio = p.id_municipio
     * WHERE p.id_perito = ?
     */
    public PerfilPerito findById(int idPerito) {
        for (PerfilPerito p : DatosPrueba.PERITOS) {
            if (p.getIdPerito() == idPerito)
                return p;
        }
        return null;
    }

    /** SELECT COUNT(*) FROM usuarios WHERE correo = ? AND id_usuario <> ? */
    public boolean existeCorreoEnOtroUsuario(String correo, int idUsuario) {
        for (PerfilPerito p : DatosPrueba.PERITOS) {
            if (p.getIdUsuario() != idUsuario && p.getCorreo().equalsIgnoreCase(correo))
                return true;
        }
        return false;
    }

    /** UPDATE usuarios SET correo = ?, telefono = ? WHERE id_usuario = ? */
    public boolean updateContacto(int idUsuario, String correo, String telefono) {
        for (PerfilPerito p : DatosPrueba.PERITOS) {
            if (p.getIdUsuario() == idUsuario) {
                p.setCorreo(correo);
                p.setTelefono(telefono);
                return true;
            }
        }
        return false;
    }

    /** UPDATE usuarios SET contrasena = ? WHERE id_usuario = ? */
    public boolean updateContrasena(int idUsuario, String nuevaContrasena) {
        for (PerfilPerito p : DatosPrueba.PERITOS) {
            if (p.getIdUsuario() == idUsuario) {
                p.setContrasena(nuevaContrasena);
                return true;
            }
        }
        return false;
    }

    /** UPDATE peritos SET carga_activa = carga_activa - 1 WHERE id_perito = ? AND carga_activa > 0 */
    public boolean decrementarCargaActiva(int idPerito) {
        for (PerfilPerito p : DatosPrueba.PERITOS) {
            if (p.getIdPerito() == idPerito && p.getCargaActiva() > 0) {
                p.setCargaActiva(p.getCargaActiva() - 1);
                return true;
            }
        }
        return false;
    }
}

