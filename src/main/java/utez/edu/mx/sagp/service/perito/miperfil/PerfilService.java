package utez.edu.mx.sagp.service.perito.miperfil;

import utez.edu.mx.sagp.dao.perito.miperfil.PerfilDao;
import utez.edu.mx.sagp.model.perito.PerfilPerito;

/**
 * Reglas de "Mi perfil": el perito solo edita su correo y teléfono, y su contraseña.
 * (Nombre, cédula, especialidad y municipio los cambia el administrador.)
 */
public class PerfilService {
    private static final String REGEX_CORREO = "^[\\w.+-]+@[\\w-]+(\\.[\\w-]+)+$";
    private static final String REGEX_TELEFONO = "^[0-9 +()\\-]{7,20}$";

    private final PerfilDao perfilDao = new PerfilDao();

    public PerfilPerito obtenerPerfil(int idPerito) {
        if (idPerito <= 0) throw new IllegalArgumentException("Identificador de perito no válido.");
        PerfilPerito perfil = perfilDao.findById(idPerito);
        if (perfil == null) throw new IllegalArgumentException("No se encontró el perfil del perito.");
        return perfil;
    }

    public void actualizarContacto(int idPerito, String correo, String telefono) {
        PerfilPerito perfil = obtenerPerfil(idPerito);
        String c = correo == null ? "" : correo.trim();
        String t = telefono == null ? "" : telefono.trim();

        if (c.isEmpty() || t.isEmpty()) {
            throw new IllegalArgumentException("El correo y el teléfono son obligatorios.");
        }
        if (!c.matches(REGEX_CORREO)) {
            throw new IllegalArgumentException("Ingrese un correo válido.");
        }
        if (!t.matches(REGEX_TELEFONO)) {
            throw new IllegalArgumentException("Ingrese un teléfono válido (solo números, espacios, + y guiones).");
        }
        if (perfilDao.existeCorreoEnOtroUsuario(c, perfil.getIdUsuario())) {
            throw new IllegalArgumentException("Ese correo ya está registrado por otro usuario.");
        }
        perfilDao.updateContacto(perfil.getIdUsuario(), c, t);
    }

    /**
     * mínimo 8 caracteres con al menos una letra y un número.
     * Con MySQL la contraseña NO debe guardarse en texto plano.
     */
    public void cambiarContrasena(int idPerito, String actual, String nueva, String confirmacion) {
        PerfilPerito perfil = obtenerPerfil(idPerito);
        if (actual == null || actual.isEmpty() || nueva == null || nueva.isEmpty()
                || confirmacion == null || confirmacion.isEmpty()) {
            throw new IllegalArgumentException("Complete los tres campos.");
        }
        if (!actual.equals(perfil.getContrasena())) {
            throw new IllegalArgumentException("La contraseña actual es incorrecta.");
        }
        if (nueva.equals(actual)) {
            throw new IllegalArgumentException("Use una contraseña distinta a la actual.");
        }
        if (nueva.length() < 8 || !nueva.matches(".*[A-Za-z].*") || !nueva.matches(".*\\d.*")) {
            throw new IllegalArgumentException("La nueva contraseña debe tener al menos 8 caracteres, con letras y números.");
        }
        if (!nueva.equals(confirmacion)) {
            throw new IllegalArgumentException("La confirmación no coincide con la nueva contraseña.");
        }
        perfilDao.updateContrasena(perfil.getIdUsuario(), nueva);
    }
}

