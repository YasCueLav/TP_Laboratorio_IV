/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Gabriel
 */
public class VMAlquiler {
    String NombreCliente;
    int NumeroPuesto;
    int canEquipo;
    int sillasExtras;
    boolean salaReunion;

    public String getNombreCliente() {
        return NombreCliente;
    }

    public void setNombreCliente(String NombreCliente) {
        this.NombreCliente = NombreCliente;
    }

    public int getNumeroPuesto() {
        return NumeroPuesto;
    }

    public void setNumeroPuesto(int NumeroPuesto) {
        this.NumeroPuesto = NumeroPuesto;
    }

    public int getCanEquipo() {
        return canEquipo;
    }

    public void setCanEquipo(int canEquipo) {
        this.canEquipo = canEquipo;
    }

    public int getSillasExtras() {
        return sillasExtras;
    }

    public void setSillasExtras(int sillasExtras) {
        this.sillasExtras = sillasExtras;
    }

    public boolean isSalaReunion() {
        return salaReunion;
    }

    public void setSalaReunion(boolean salaReunion) {
        this.salaReunion = salaReunion;
    }

    public VMAlquiler() {
    }

    public VMAlquiler(String NombreCliente, int NumeroPuesto, int canEquipo, int sillasExtras, boolean salaReunion) {
        this.NombreCliente = NombreCliente;
        this.NumeroPuesto = NumeroPuesto;
        this.canEquipo = canEquipo;
        this.sillasExtras = sillasExtras;
        this.salaReunion = salaReunion;
    }
    
    
}
