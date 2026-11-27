package utez.edu.mx.sagp.model.perito;

import utez.edu.mx.sagp.utils.FechaUtil;

import java.time.LocalDateTime;

/**
 * Es una "fila" del portal del perito que junta datos de
 * Asignaciones + Solicitudes (+ Especialidad y Municipio). Con base de datos
 * se llenará con un SELECT * JOIN.
 */
public class AsignacionPerito {
    //Asignaciones
    private int idAsignacion;
    private int idPerito;
    private LocalDateTime fechaAsignacion;
    private boolean activa;

    //Solicitudes
    private int idSolicitud;
    private String folio;
    private String numeroExpediente;
    private String juzgadoOrigen;
    private String descripcionCaso;
    private LocalDateTime fechaLimite;
    private String estado;

    //catálogos (Materia / Especialidad / Municipio)
    private String materia;
    private String especialidad;
    private String municipio;

    public AsignacionPerito() {

    }

    public AsignacionPerito(int idAsignacion, int idPerito, LocalDateTime fechaAsignacion, boolean activa, int idSolicitud, String folio, String numeroExpediente, String juzgadoOrigen, String descripcionCaso, LocalDateTime fechaLimite, String estado, String materia, String especialidad, String municipio) {
        this.idAsignacion = idAsignacion;
        this.idPerito = idPerito;
        this.fechaAsignacion = fechaAsignacion;
        this.activa = activa;
        this.idSolicitud = idSolicitud;
        this.folio = folio;
        this.numeroExpediente = numeroExpediente;
        this.juzgadoOrigen = juzgadoOrigen;
        this.descripcionCaso = descripcionCaso;
        this.fechaLimite = fechaLimite;
        this.estado = estado;
        this.materia = materia;
        this.especialidad = especialidad;
        this.municipio = municipio;
    }

    public int getIdAsignacion() {
        return idAsignacion;
    }

    public void setIdAsignacion(int idAsignacion) {
        this.idAsignacion = idAsignacion;
    }

    public int getIdPerito() {
        return idPerito;
    }

    public void setIdPerito(int idPerito) {
        this.idPerito = idPerito;
    }

    public LocalDateTime getFechaAsignacion() {
        return fechaAsignacion;
    }

    public void setFechaAsignacion(LocalDateTime fechaAsignacion) {
        this.fechaAsignacion = fechaAsignacion;
    }

    public boolean isActiva() {
        return activa;
    }

    public void setActiva(boolean activa) {
        this.activa = activa;
    }

    public int getIdSolicitud() {
        return idSolicitud;
    }

    public void setIdSolicitud(int idSolicitud) {
        this.idSolicitud = idSolicitud;
    }

    public String getFolio() {
        return folio;
    }

    public void setFolio(String folio) {
        this.folio = folio;
    }

    public String getNumeroExpediente() {
        return numeroExpediente;
    }

    public void setNumeroExpediente(String numeroExpediente) {
        this.numeroExpediente = numeroExpediente;
    }

    public String getJuzgadoOrigen() {
        return juzgadoOrigen;
    }

    public void setJuzgadoOrigen(String juzgadoOrigen) {
        this.juzgadoOrigen = juzgadoOrigen;
    }

    public String getDescripcionCaso() {
        return descripcionCaso;
    }

    public void setDescripcionCaso(String descripcionCaso) {
        this.descripcionCaso = descripcionCaso;
    }

    public LocalDateTime getFechaLimite() {
        return fechaLimite;
    }

    public void setFechaLimite(LocalDateTime fechaLimite) {
        this.fechaLimite = fechaLimite;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getMateria() {
        return materia;
    }

    public void setMateria(String materia) {
        this.materia = materia;
    }

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

    // ---- Textos listos----
    public String getFechaAsignacionTexto() {
        return FechaUtil.conHora(fechaAsignacion);
    }

    public String getFechaAsignacionDia() {
        return FechaUtil.fecha(fechaAsignacion);
    }

    public String getFechaAsignacionHora() {
        return fechaAsignacion == null ? "" : String.format("%02d:%02d h", fechaAsignacion.getHour(), fechaAsignacion.getMinute());
    }

    public String getFechaLimiteTexto() {
        return FechaUtil.fecha(fechaLimite);
    }
}