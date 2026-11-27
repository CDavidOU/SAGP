package utez.edu.mx.sagp.model;

import utez.edu.mx.sagp.utils.FechaUtil;

import java.time.LocalDateTime;

/**
 * Entidad "Dictamenes"
 * Es el PDF final que entrega el perito para cerrar un peritaje.
 */
public class Dictamen {
    private int idDictamen;
    private int idSolicitud;
    private int idPerito;
    private String rutaArchivoPdf;        // no puede estar vacío
    private String observacionesPerito;   // puede estar vacío
    private String estadoRevision;        // no puede estar vacío
    private String comentariosAdmin;      // puede estar vacío
    private LocalDateTime fechaEntrega;   // no puede estar vacío
    private LocalDateTime fechaValidacion; // puede estar vacío

    public Dictamen() {

    }

    public Dictamen(int idDictamen, int idSolicitud, int idPerito, String rutaArchivoPdf, String observacionesPerito, String estadoRevision, String comentariosAdmin, LocalDateTime fechaEntrega, LocalDateTime fechaValidacion) {
        this.idDictamen = idDictamen;
        this.idSolicitud = idSolicitud;
        this.idPerito = idPerito;
        this.rutaArchivoPdf = rutaArchivoPdf;
        this.observacionesPerito = observacionesPerito;
        this.estadoRevision = estadoRevision;
        this.comentariosAdmin = comentariosAdmin;
        this.fechaEntrega = fechaEntrega;
        this.fechaValidacion = fechaValidacion;
    }

    public int getIdDictamen() {
        return idDictamen;
    }

    public void setIdDictamen(int idDictamen) {
        this.idDictamen = idDictamen;
    }

    public int getIdSolicitud() {
        return idSolicitud;
    }

    public void setIdSolicitud(int idSolicitud) {
        this.idSolicitud = idSolicitud;
    }

    public int getIdPerito() {
        return idPerito;
    }

    public void setIdPerito(int idPerito) {
        this.idPerito = idPerito;
    }

    public String getRutaArchivoPdf() {
        return rutaArchivoPdf;
    }

    public void setRutaArchivoPdf(String rutaArchivoPdf) {
        this.rutaArchivoPdf = rutaArchivoPdf;
    }

    public String getObservacionesPerito() {
        return observacionesPerito;
    }

    public void setObservacionesPerito(String observacionesPerito) {
        this.observacionesPerito = observacionesPerito;
    }

    public String getEstadoRevision() {
        return estadoRevision;
    }

    public void setEstadoRevision(String estadoRevision) {
        this.estadoRevision = estadoRevision;
    }

    public String getComentariosAdmin() {
        return comentariosAdmin;
    }

    public void setComentariosAdmin(String comentariosAdmin) {
        this.comentariosAdmin = comentariosAdmin;
    }

    public LocalDateTime getFechaEntrega() {
        return fechaEntrega;
    }

    public void setFechaEntrega(LocalDateTime fechaEntrega) {
        this.fechaEntrega = fechaEntrega;
    }

    public LocalDateTime getFechaValidacion() {
        return fechaValidacion;
    }

    public void setFechaValidacion(LocalDateTime fechaValidacion) {
        this.fechaValidacion = fechaValidacion;
    }

    /** Solo el nombre del archivo para mostrarlo en pantalla. */
    public String getNombreArchivo() {
        if (rutaArchivoPdf == null) return "";
        return java.nio.file.Paths.get(rutaArchivoPdf).getFileName().toString();
    }

    /** Fecha de entrega lista para la vista, ejemplo seria "29 oct 2026 · 20:25:18 h". */
    public String getFechaEntregaTexto() {
        return FechaUtil.conSegundos(fechaEntrega);
    }
}