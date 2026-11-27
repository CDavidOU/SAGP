
package utez.edu.mx.sagp.model.peritos;

public class EspecialidadPerito {

    private String materia;
    private String especialidad;

    public EspecialidadPerito() {
    }

    public EspecialidadPerito(String materia, String especialidad) {
        this.materia = materia;
        this.especialidad = especialidad;
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

    @Override
    public String toString() {
        return materia + " / " + especialidad;
    }
}
