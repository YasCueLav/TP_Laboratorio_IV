
package Model;

public class Puesto {

    int idPuesto;
    int puesto;//nombre en la DB
    int piso;
    boolean ventana;
    int cantSillas;
    boolean disponible;
    double precioBase;

    public double getPrecioBase() {
        return precioBase;
    }

    public boolean isDisponible() {
        return disponible;
    }

    public void setDisponible(boolean disponible) {
        this.disponible = disponible;
    }  
    

    public int getPuesto() {
        return puesto;
    }

    public void setPuesto(int puesto) {
        this.puesto = puesto;
    }    

    public int getIdPuesto() {
        return idPuesto;
    }

    public int getPiso() {
        return piso;
    }

    public boolean isVentana() {
        return ventana;
    }

    public int getCantSillas() {
        return cantSillas;
    }

    public void setIdPuesto(int idPuesto) {
        this.idPuesto = idPuesto;
    }

    public void setPiso(int piso) {
        if (piso > 3)
            precioBase += 1000;
        this.piso = piso;
    }

    public void setVentana(boolean ventana) {
        if (ventana)
            precioBase += 500;
        this.ventana = ventana;
    }

    public void setCantSillas(int cantSillas) {
        this.cantSillas = cantSillas;
    }

    public Puesto() {
    }

    public Puesto(int idPuesto, int puesto, int piso, boolean ventana, int cantSillas, boolean disponible) {
        this.idPuesto = idPuesto;
        this.puesto = puesto;
        this.piso = piso;
        this.ventana = ventana;
        this.cantSillas = cantSillas;
        this.disponible = disponible;
    }
}
