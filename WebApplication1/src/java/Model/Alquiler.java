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
public class Alquiler {
    int idAlquiler;
    int idCliente;
    int idPuesto;
    int canEquipo;
    int sillasExtras;
    boolean salaReunion;
    double importe;

    public Alquiler() {
    }

    public Alquiler(int idAlquiler, int idCliente, int idPuesto, int canEquipo, int sillasExtras, boolean salaReunion, double importe) {
        this.idAlquiler = idAlquiler;
        this.idCliente = idCliente;
        this.idPuesto = idPuesto;
        this.canEquipo = canEquipo;
        this.sillasExtras = sillasExtras;
        this.salaReunion = salaReunion;
        this.importe = importe;
    }    

    public int getIdAlquiler() {
        return idAlquiler;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public int getIdPuesto() {
        return idPuesto;
    }

    public int getCanEquipo() {
        return canEquipo;
    }

    public int getSillasExtras() {
        return sillasExtras;
    }

    public boolean isSalaReunion() {
        return salaReunion;
    }

    public void setIdAlquiler(int idAlquiler) {
        this.idAlquiler = idAlquiler;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public void setIdPuesto(int idPuesto) {
        this.idPuesto = idPuesto;
    }

    public void setCanEquipo(int canEquipo) {
        this.canEquipo = canEquipo;
    }

    public void setSillasExtras(int sillasExtras) {
        this.sillasExtras = sillasExtras;
    }

    public void setSalaReunion(boolean salaReunion) {
        this.salaReunion = salaReunion;
    }

    public double getImporte() {
        return importe;
    }

    public void setImporte(double importe) {
        this.importe = importe;
    }
    
    public void calcularImporte(double precioBase){
        importe = precioBase;
        importe += (canEquipo * 800); // sumando computadoras
        importe += (sillasExtras * 100); // sumando sillas extras
        if (salaReunion){
            importe += 1000;
        }
    }
    
}
