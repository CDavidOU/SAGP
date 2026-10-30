package utez.edu.mx.sagp.model;

public class Solicitud {
    private String numeroSolicitud;
    private String juzgadoOrigen;
    private String materiaEspecialidad;
    private String fecha;
    private String estado;

    public Solicitud() {}

    public Solicitud(String numeroSolicitud, String juzgadoOrigen, String materiaEspecialidad, String fecha, String estado) {
        this.numeroSolicitud = numeroSolicitud;
        this.juzgadoOrigen = juzgadoOrigen;
        this.materiaEspecialidad = materiaEspecialidad;
        this.fecha = fecha;
        this.estado = estado;
    }

    public String getNumeroSolicitud() { return numeroSolicitud; }
    public void setNumeroSolicitud(String numeroSolicitud) { this.numeroSolicitud = numeroSolicitud; }

    public String getJuzgadoOrigen() { return juzgadoOrigen; }
    public void setJuzgadoOrigen(String juzgadoOrigen) { this.juzgadoOrigen = juzgadoOrigen; }

    public String getMateriaEspecialidad() { return materiaEspecialidad; }
    public void setMateriaEspecialidad(String materiaEspecialidad) { this.materiaEspecialidad = materiaEspecialidad; }

    public String getFecha() { return fecha; }
    public void setFecha(String fecha) { this.fecha = fecha; }

    public String getEstado() { return estado; }
    public void setEstado(String estado) { this.estado = estado; }
}