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
    int cantidadPuesto;
    double totalGasto;

    public int getCantidadPuesto() {
        return cantidadPuesto;
    }

    public void setCantidadPuesto(int cantidadPuesto) {
        this.cantidadPuesto = cantidadPuesto;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public double getTotalGasto() {
        return totalGasto;
    }

    public void setTotalGasto(double totalGasto) {
        this.totalGasto = totalGasto;
    }

    public VMLlstadoCliente() {
    }

    public VMLlstadoCliente(String nombreCliente, double totalGasto, int cantidadPuesto) {
        this.nombreCliente = nombreCliente;
        this.cantidadPuesto = cantidadPuesto;
        this.totalGasto = totalGasto;
    }
    
    
}
