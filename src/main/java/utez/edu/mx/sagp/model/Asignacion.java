package utez.edu.mx.sagp.model;

import java.time.LocalDateTime;

/**
 * Entidad "Asignaciones".
 * Representa que un perito quedó asignado a una solicitud.
 */
public class Asignacion {
    private int idAsignacion;
    private int idSolicitud;
    private int idPerito;
    private int idAdminAsigno;
    private String tipoAsignacion;        // no puede estar vacío (un ejemplo seria "Automática" / "Manual")
    private String motivoReasignacion;    // puede estar vacío
    private LocalDateTime fechaAsignacion; // no puede estar vacío
    private boolean activa;               // no puede estar vacío

    public Asignacion() {

    }
    public Asignacion(int idAsignacion, int idSolicitud, int idPerito, int idAdminAsigno,
                      String tipoAsignacion, String motivoReasignacion,
                      LocalDateTime fechaAsignacion, boolean activa) {
        this.idAsignacion = idAsignacion;
        this.idSolicitud = idSolicitud;
        this.idPerito = idPerito;
        this.idAdminAsigno = idAdminAsigno;
        this.tipoAsignacion = tipoAsignacion;
        this.motivoReasignacion = motivoReasignacion;
        this.fechaAsignacion = fechaAsignacion;
        this.activa = activa;
    }

    public int getIdAsignacion() {
        return idAsignacion;
    }

    public void setIdAsignacion(int idAsignacion) {
        this.idAsignacion = idAsignacion;
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

    public int getIdAdminAsigno() {
        return idAdminAsigno;
    }

    public void setIdAdminAsigno(int idAdminAsigno) {
        this.idAdminAsigno = idAdminAsigno;
    }

    public String getTipoAsignacion() {
        return tipoAsignacion;
    }

    public void setTipoAsignacion(String tipoAsignacion) {
        this.tipoAsignacion = tipoAsignacion;
    }

    public String getMotivoReasignacion() {
        return motivoReasignacion;

    }
    public void setMotivoReasignacion(String motivoReasignacion) {
        this.motivoReasignacion = motivoReasignacion;
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
}