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
public class Cliente {
    int idCliente;
    String nombre;
    String apellido;
    int documento;
    int idTipoDocumento;
    long telefono;

    public Cliente() {
    }

    public Cliente(int idCliente, String nombre, String apellido, int documento, int idTipoDocumento, long telefono) {
        this.idCliente = idCliente;
        this.nombre = nombre;
        this.apellido = apellido;
        this.documento = documento;
        this.idTipoDocumento = idTipoDocumento;
        this.telefono = telefono;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public int getDocumento() {
        return documento;
    }

    public int getIdTipoDocumento() {
        return idTipoDocumento;
    }

    public long getTelefono() {
        return telefono;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public void setDocumento(int documento) {
        this.documento = documento;
    }

    public void setIdTipoDocumento(int idTipoDocumento) {
        this.idTipoDocumento = idTipoDocumento;
    }

    public void setTelefono(long telefono) {
        this.telefono = telefono;
    }
        
}
