package utez.edu.mx.sagp.utils;

import java.time.LocalDateTime;

/**
 * Da formato a las fechas
 * (JSTL fmt:formatDate no funciona con LocalDateTime, por eso se hace aquí.)
 */
public class FechaUtil {
    private static final String[] MESES =
            {"ene", "feb", "mar", "abr", "may", "jun", "jul", "ago", "sep", "oct", "nov", "dic"};

    private FechaUtil() {

    }

    public static String fecha(LocalDateTime f) {
        if (f == null) return "";
        return f.getDayOfMonth() + " " + MESES[f.getMonthValue() - 1] + " " + f.getYear();
    }

    public static String conHora(LocalDateTime f) {
        if (f == null) return "";
        return fecha(f) + " · " + String.format("%02d:%02d h", f.getHour(), f.getMinute());
    }

    public static String conSegundos(LocalDateTime f) {
        if (f == null) return "";
        return fecha(f) + " · " + String.format("%02d:%02d:%02d h", f.getHour(), f.getMinute(), f.getSecond());
    }
}