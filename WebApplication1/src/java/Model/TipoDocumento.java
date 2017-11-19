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
    int idTipoDocumento;
    String descripcion;

    public TipoDocumento() {
    }

    public TipoDocumento(int idCliente, String descripcion) {
        this.idTipoDocumento = idCliente;
        this.descripcion = descripcion;
    }

    public int getIdTipoDocumento() {
        return idTipoDocumento;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setIdTipoDocumento(int idTipoDocumento) {
        this.idTipoDocumento = idTipoDocumento;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
