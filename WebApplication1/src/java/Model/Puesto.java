/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Yasmin
 */
public class Puesto {
    int idPuesto;
    int piso;
    boolean ventana;
    int cantSillas;

    public Puesto() {
    }

    public Puesto(int idPuesto, int piso, boolean ventana, int cantSillas) {
        this.idPuesto = idPuesto;
        this.piso = piso;
        this.ventana = ventana;
        this.cantSillas = cantSillas;
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
        this.piso = piso;
    }

    public void setVentana(boolean ventana) {
        this.ventana = ventana;
    }

    public void setCantSillas(int cantSillas) {
        this.cantSillas = cantSillas;
    }
}
