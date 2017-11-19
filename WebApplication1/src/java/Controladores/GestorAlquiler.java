package Controladores;

import Model.Alquiler;
import Model.Cliente;
import Model.Puesto;
import Model.VMAlquiler;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class GestorAlquiler {

    private Connection conn;

    public GestorAlquiler() {
        AccesoDatos ad = new AccesoDatos();
        try {
            conn = DriverManager.getConnection(ad.getConn_string(), ad.getUser(), ad.getPass());
        } catch (SQLException ex) {
            Logger.getLogger(GestorAlquiler.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Alquiler obtenerAlquiler(int id) {
        
        Alquiler a = new Alquiler();
        try {
            PreparedStatement stmt = conn.prepareStatement("exec pa_obtener_alquiler ?");
            stmt.setInt(1, id);
            ResultSet query = stmt.executeQuery();
            if(query.next()){                       
                a.setIdCliente(query.getInt("id_cliente"));
                a.setIdPuesto(query.getInt("id_puesto"));
                a.setCanEquipo(query.getInt("cant_equipos"));
                a.setSillasExtras(query.getInt("sillas_extras"));
                a.setSalaReunion(query.getBoolean("sala_reunion"));          
                
            }
            query.close();
            stmt.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(GestorAlquiler.class.getName()).log(Level.SEVERE, null, ex);
        }
        return a;
    }

    public boolean agregarAlquiler(Alquiler a) {

        boolean inserto = true;
        try {
            PreparedStatement stmt = conn.prepareStatement("EXEC pa_insert_alquiler ?, ?, ?, ?, ?");
            stmt.setInt(1, a.getIdCliente());
            stmt.setInt(2, a.getIdPuesto());
            stmt.setInt(3, a.getCanEquipo());
            stmt.setInt(4, a.getSillasExtras());
            stmt.setBoolean(5, a.isSalaReunion());
            stmt.executeUpdate();
            stmt.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(GestorAlquiler.class.getName()).log(Level.SEVERE, null, ex);
            inserto = false;
        }
        return inserto;
    }

    public ArrayList<VMAlquiler> obtenerAlquileresPorPiso() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
