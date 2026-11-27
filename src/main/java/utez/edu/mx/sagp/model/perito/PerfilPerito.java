package utez.edu.mx.sagp.model.perito;

/**
 * Juntamos lo que la pantalla "Mi perfil" necesita de
 * Peritos + Usuarios (+ Especialidad y Municipio).
 */
public class PerfilPerito {
    // De Peritos
    private int idPerito;
    private int idUsuario;
    private String numeroCedula;
    private boolean disponible;
    private int cargaActiva;

    // De Usuarios
    private String nombre;
    private String apellidoPaterno;
    private String apellidoMaterno;
    private String correo;
    private String telefono;
    private String contrasena;

    // De catálogos
    private String materia;
    private String especialidad;
    private String municipio;

    public PerfilPerito() {

    }

    public PerfilPerito(int idPerito, int idUsuario, String numeroCedula, boolean disponible, int cargaActiva, String nombre, String apellidoPaterno, String apellidoMaterno, String correo, String telefono, String contrasena, String materia, String especialidad, String municipio) {
        this.idPerito = idPerito;
        this.idUsuario = idUsuario;
        this.numeroCedula = numeroCedula;
        this.disponible = disponible;
        this.cargaActiva = cargaActiva;
        this.nombre = nombre;
        this.apellidoPaterno = apellidoPaterno;
        this.apellidoMaterno = apellidoMaterno;
        this.correo = correo;
        this.telefono = telefono;
        this.contrasena = contrasena;
        this.materia = materia;
        this.especialidad = especialidad;
        this.municipio = municipio;
    }

    public int getIdPerito() {
        return idPerito;
    }

    public void setIdPerito(int idPerito) {
        this.idPerito = idPerito;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getNumeroCedula() {
        return numeroCedula;
    }

    public void setNumeroCedula(String numeroCedula) {
        this.numeroCedula = numeroCedula;
    }

    public boolean isDisponible() {
        return disponible;
    }

    public void setDisponible(boolean disponible) {
        this.disponible = disponible;
    }

    public int getCargaActiva() {
        return cargaActiva;
    }

    public void setCargaActiva(int cargaActiva) {
        this.cargaActiva = cargaActiva;
    }

    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidoPaterno() {
        return apellidoPaterno;
    }

    public void setApellidoPaterno(String apellidoPaterno) {
        this.apellidoPaterno = apellidoPaterno;
    }

    public String getApellidoMaterno() {
        return apellidoMaterno;
    }

    public void setApellidoMaterno(String apellidoMaterno) {
        this.apellidoMaterno = apellidoMaterno;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getMateria() {
        return materia;
    }

    public void setMateria(String materia) {
        this.materia = materia; }

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }

    public String getMunicipio() {
        return municipio;
    }

    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }

    public String getNombreCompleto() {
        return (nombre + " " + apellidoPaterno + " " + (apellidoMaterno == null ? "" : apellidoMaterno)).trim();
    }

    /** "LH" para el círculo del sidebar. */
    public String getIniciales() {
        String a = nombre == null || nombre.isEmpty() ? "" : nombre.substring(0, 1);
        String b = apellidoPaterno == null || apellidoPaterno.isEmpty() ? "" : apellidoPaterno.substring(0, 1);
        return (a + b).toUpperCase();
    }
}

