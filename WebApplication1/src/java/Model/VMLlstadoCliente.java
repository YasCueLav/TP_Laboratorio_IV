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
public class VMLlstadoCliente {
    String nombreCliente;
    int nroPiso;
    int nombrePuesto;
    double totalGasto;

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public int getNroPiso() {
        return nroPiso;
    }

    public void setNroPiso(int nroPiso) {
        this.nroPiso = nroPiso;
    }

    public int getNombrePuesto() {
        return nombrePuesto;
    }

    public void setNombrePuesto(int nombrePuesto) {
        this.nombrePuesto = nombrePuesto;
    }

    public double getTotalGasto() {
        return totalGasto;
    }

    public void setTotalGasto(double totalGasto) {
        this.totalGasto = totalGasto;
    }

    public VMLlstadoCliente() {
    }

    public VMLlstadoCliente(String nombreCliente, int nroPiso, int nombrePuesto, double totalGasto) {
        this.nombreCliente = nombreCliente;
        this.nroPiso = nroPiso;
        this.nombrePuesto = nombrePuesto;
        this.totalGasto = totalGasto;
    }
    
    
}
