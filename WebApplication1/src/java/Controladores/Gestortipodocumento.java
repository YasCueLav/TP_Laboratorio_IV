/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Model.TipoDocumento;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Yasmin
 */
public class Gestortipodocumento {
    
    private Connection conn;

    public Gestortipodocumento() {
        AccesoDatos ad = new AccesoDatos();
        try {
            conn = DriverManager.getConnection(ad.getConn_string(), ad.getUser(), ad.getPass());
        } catch (SQLException ex) {
            Logger.getLogger(Gestortipodocumento.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
     public ArrayList<TipoDocumento> obtenerTiposDocumento() {
        ArrayList<TipoDocumento> lista = new ArrayList<>();
        try {
            try (Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1412;databaseName=TP_Lab_IV","gabriel","G.E.S.C.")) {
                Statement stmt = conn.createStatement();
                ResultSet query = stmt.executeQuery("SELECT * from Tipos_Documentos");
                while (query.next()) {
                    TipoDocumento t = new TipoDocumento();
                    t.setIdTipoDocumento(query.getInt("id_Tipo"));
                    t.setDescripcion(query.getString("descripcion"));
                    
                    
                    lista.add(t);
                }
                query.close();
                stmt.close();
            }

        } catch (SQLException ex) {
            Logger.getLogger(Gestortipodocumento.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }
    
}
