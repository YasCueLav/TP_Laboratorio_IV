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
public class VMTotalAlquilerXPiso {
    int nroPiso;
    double monto;

    public int getNroPiso() {
        return nroPiso;
    }

    public void setNroPiso(int nroPiso) {
        this.nroPiso = nroPiso;
    }

    public double getMonto() {
        return monto;
    }

    public void setMonto(double monto) {
        this.monto = monto;
    }

    
    public VMTotalAlquilerXPiso() {
    }
    

    public VMTotalAlquilerXPiso(int nroPiso, double monto) {
        this.nroPiso = nroPiso;
        this.monto = monto;
    }
    
    
}
