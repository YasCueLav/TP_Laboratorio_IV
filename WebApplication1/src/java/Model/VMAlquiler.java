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
    int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    String nombre;
    int puesto;
    int canEquipo;
    int sillasExtras;
    boolean salaReunion;
    double total;
    long documentoCliente;

    public long getDocumentoCliente() {
        return documentoCliente;
    }

    public void setDocumentoCliente(long documentoCliente) {
        this.documentoCliente = documentoCliente;
    }
    
    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getPuesto() {
        return puesto;
    }

    public void setPuesto(int puesto) {
        this.puesto = puesto;
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

    public VMAlquiler(String nombre, int puesto, int canEquipo, int sillasExtras, boolean salaReunion) {
        this.nombre = nombre;
        this.puesto = puesto;
        this.canEquipo = canEquipo;
        this.sillasExtras = sillasExtras;
        this.salaReunion = salaReunion;
    }
    
    
}
