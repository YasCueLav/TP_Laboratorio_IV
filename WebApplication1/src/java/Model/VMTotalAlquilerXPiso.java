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
    int NumeroPiso;
    float montoTotal;

    public int getNumeroPiso() {
        return NumeroPiso;
    }

    public void setNumeroPiso(int NumeroPiso) {
        this.NumeroPiso = NumeroPiso;
    }

    public float getMontoTotal() {
        return montoTotal;
    }

    public void setMontoTotal(float montoTotal) {
        this.montoTotal = montoTotal;
    }

    public VMTotalAlquilerXPiso() {
    }

    public VMTotalAlquilerXPiso(int NumeroPiso, float montoTotal) {
        this.NumeroPiso = NumeroPiso;
        this.montoTotal = montoTotal;
    }
    
}
