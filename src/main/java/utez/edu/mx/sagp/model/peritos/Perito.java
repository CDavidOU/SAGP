
package utez.edu.mx.sagp.model.peritos;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Perito {

    private String idPerito;
    private String nombreCompleto;
    private String correo;
    private String telefono;

    private boolean disponible;
    private int cargaActiva;
    private LocalDate fechaBaja;

    private List<EspecialidadPerito> especialidades;

    public Perito() {
        this.especialidades = new ArrayList<>();
        this.disponible = true;
        this.cargaActiva = 0;
    }

    public Perito(String idPerito, String nombreCompleto,
                  String correo, String telefono,
                  boolean disponible, int cargaActiva,
                  List<EspecialidadPerito> especialidades) {

        this.idPerito = idPerito;
        this.nombreCompleto = nombreCompleto;
        this.correo = correo;
        this.telefono = telefono;
        this.disponible = disponible;
        this.cargaActiva = cargaActiva;

        this.especialidades = especialidades != null
                ? new ArrayList<>(especialidades)
                : new ArrayList<>();
    }

    public String getIdPerito() {
        return idPerito;
    }

    public void setIdPerito(String idPerito) {
        this.idPerito = idPerito;
    }

    public String getNombreCompleto() {
        return nombreCompleto;
    }

    public void setNombreCompleto(String nombreCompleto) {
        this.nombreCompleto = nombreCompleto;
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

    public boolean isDisponible() {
        return disponible;
    }

    public void setDisponible(boolean disponible) {
        this.disponible = disponible;

        if (disponible) {
            this.fechaBaja = null;
        } else if (this.fechaBaja == null) {
            this.fechaBaja = LocalDate.now();
        }
    }

    public int getCargaActiva() {
        return cargaActiva;
    }

    public void setCargaActiva(int cargaActiva) {
        this.cargaActiva = cargaActiva;
    }

    public LocalDate getFechaBaja() {
        return fechaBaja;
    }

    public void setFechaBaja(LocalDate fechaBaja) {
        this.fechaBaja = fechaBaja;
    }

    public List<EspecialidadPerito> getEspecialidades() {
        return especialidades;
    }

    public void setEspecialidades(List<EspecialidadPerito> especialidades) {
        this.especialidades = especialidades != null
                ? new ArrayList<>(especialidades)
                : new ArrayList<>();
    }
}
