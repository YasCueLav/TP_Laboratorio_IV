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
public class TipoDocumento {
    int idCliente;
    String descripcion;

    public TipoDocumento() {
    }

    public TipoDocumento(int idCliente, String descripcion) {
        this.idCliente = idCliente;
        this.descripcion = descripcion;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
