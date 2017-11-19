/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Model.Alquiler;
import Model.Cliente;
import Model.Puesto;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class GestorCliente {

    private Connection conn;

    public GestorCliente() {
        AccesoDatos ad = new AccesoDatos();
        try {
            conn = DriverManager.getConnection(ad.getConn_string(), ad.getUser(), ad.getPass());
        } catch (SQLException ex) {
            Logger.getLogger(GestorCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Cliente obtenerCliente(int id) {
        
        Cliente c = new Cliente();
        try {
            PreparedStatement stmt = conn.prepareStatement("exec pa_obtener_alquiler ?");
            stmt.setInt(1, id);
            ResultSet query = stmt.executeQuery();
            if(query.next()){            
                c.setApellido(query.getString("apellido"));
                c.setNombre(query.getString("nombre"));
                c.setIdTipoDocumento(query.getInt("id_tipo_documento"));
                c.setDocumento(query.getInt("documento"));
                c.setIdCliente(query.getInt("id_cliente"));
                c.setTelefono(query.getInt("telefono"));                      
                
            }
            query.close();
            stmt.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(GestorCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
        return c;
    }

    public boolean agregarCliente(Cliente c) {

        boolean inserto = true;
        try {
            PreparedStatement stmt = conn.prepareStatement("EXEC pa_insert_alquiler ?, ?, ?, ?, ?");
            stmt.setString(1, c.getNombre());
            stmt.setString(2, c.getApellido());
            stmt.setInt(3, c.getDocumento());
            stmt.setInt(4, c.getIdTipoDocumento());
            stmt.setLong(5, c.getTelefono());
            stmt.executeUpdate();
            stmt.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(GestorCliente.class.getName()).log(Level.SEVERE, null, ex);
            inserto = false;
        }
        return inserto;
    }
    public ArrayList<Cliente> obtenerClientes() {
        ArrayList<Cliente> lista = new ArrayList<>();
        try {
            Statement stmt = conn.createStatement();
            ResultSet query = stmt.executeQuery("SELECT * from Puestos");
            while (query.next()) {
                Cliente c = new Cliente();
                c.setIdCliente(query.getInt("id_cliente"));
                c.setNombre(query.getString("nombre"));
                c.setApellido(query.getString("apellido"));
                c.setDocumento(query.getInt("documento"));
                c.setIdTipoDocumento(query.getInt("id_tipo_documento"));
                c.setTelefono(query.getLong("telefono"));
                
                lista.add(c);
            }
            query.close();
            stmt.close();
            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(GestorCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }

}
