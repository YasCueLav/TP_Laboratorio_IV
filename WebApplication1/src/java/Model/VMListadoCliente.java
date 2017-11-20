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
public class VMListadoCliente {
    int idCliente;
    String nombreCliente;
    String apellidoCliente;
    long telefono;
    int cantidadPuesto;
    double importe;

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String getApellidoCliente() {
        return apellidoCliente;
    }

    public void setApellidoCliente(String apellidoCliente) {
        this.apellidoCliente = apellidoCliente;
    }

    public long getTelefono() {
        return telefono;
    }

    public void setTelefono(long telefono) {
        this.telefono = telefono;
    }

    public int getCantidadPuesto() {
        return cantidadPuesto;
    }

    public void setCantidadPuesto(int cantidadPuesto) {
        this.cantidadPuesto = cantidadPuesto;
    }

    public double getImporte() {
        return importe;
    }

    public void setImporte(double importe) {
        this.importe = importe;
    }

    public VMListadoCliente() {
    }

    public VMListadoCliente(int idCliente, String nombreCliente, String apellidoCliente, long telefono, int cantidadPuesto, double importe) {
        this.idCliente = idCliente;
        this.nombreCliente = nombreCliente;
        this.apellidoCliente = apellidoCliente;
        this.telefono = telefono;
        this.cantidadPuesto = cantidadPuesto;
        this.importe = importe;
    }

   
    
}
