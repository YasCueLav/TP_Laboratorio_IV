package Controladores;

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

public class GestorPuesto {

    private Connection conn;

    public GestorPuesto() {

        AccesoDatos ad = new AccesoDatos();
        try {
            conn = DriverManager.getConnection(ad.getConn_string(), ad.getUser(), ad.getPass());
        } catch (SQLException ex) {
            Logger.getLogger(GestorPuesto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Puesto> obtenerPuestos() {
        ArrayList<Puesto> lista = new ArrayList<>();
        try {
            Statement stmt = conn.createStatement();
            ResultSet query = stmt.executeQuery("SELECT * from Puestos");
            while (query.next()) {
                Puesto p = new Puesto();
                p.setIdPuesto(query.getInt("id_puesto"));
                p.setPuesto(query.getInt("nombre"));
                p.setPiso(query.getInt("piso"));
                p.setVentana(query.getBoolean("ventana"));
                p.setCantSillas(query.getInt("cant_sillas"));
                p.setDisponible(query.getBoolean("disponible"));
                p.calcularPrecioBase();
                lista.add(p);
            }
            query.close();
            stmt.close();
            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(GestorPuesto.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }

    public boolean agregarPuesto(Puesto p) {
        boolean inserto = true;
        try {
            PreparedStatement stmt = conn.prepareStatement("EXEC pa_insert_puesto ?, ?, ?, ?, ?, ?");
            stmt.setInt(1, p.getPuesto());
            stmt.setInt(2, p.getPiso());
            stmt.setBoolean(3, p.isVentana());
            stmt.setInt(4, p.getCantSillas());
            stmt.setBoolean(5, true);
            stmt.setDouble(6, p.getPrecioBase());
            stmt.executeUpdate();
            stmt.close();
            conn.close();
            System.out.println("Se ha insertado un nuevo registro");
        } catch (SQLException ex) {
            Logger.getLogger(GestorPuesto.class.getName()).log(Level.SEVERE, null, ex);
            inserto = false;
        }
        return inserto;
    }

    public Puesto obtenerPuesto(int idPuesto) {
        Puesto p = new Puesto();
        try {

            PreparedStatement stmt = conn.prepareStatement("select * from puestos where id_puesto = ?");
            stmt.setInt(1, idPuesto);
            ResultSet query = stmt.executeQuery();
            if (query.next()) {
                p.setIdPuesto(query.getInt("id_puesto"));
                p.setPuesto(query.getInt("nombre"));
                p.setPiso(query.getInt("piso"));
                p.setVentana(query.getBoolean("ventana"));
                p.setCantSillas(query.getInt("cant_sillas"));
                p.setDisponible(query.getBoolean("disponible"));
            }
            query.close();
            stmt.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(GestorPuesto.class.getName()).log(Level.SEVERE, null, ex);
        }
        return p;
    }

    public ArrayList<Puesto> obtenerPuestosCliente(int idCliente) {
        ArrayList<Puesto> lista = new ArrayList<>();
        try {
            Statement stmt = conn.createStatement();
            ResultSet query = stmt.executeQuery("SELECT p.* from Puestos p join Alquileres a on a.id_puesto = p.id_puesto where a.id_cliente = " + idCliente);
            while (query.next()) {
                Puesto p = new Puesto();
                p.setIdPuesto(query.getInt("id_puesto"));
                p.setPuesto(query.getInt("nombre"));
                p.setPiso(query.getInt("piso"));
                p.setVentana(query.getBoolean("ventana"));
                p.setCantSillas(query.getInt("cant_sillas"));
                p.setDisponible(query.getBoolean("disponible"));
                p.calcularPrecioBase();
                lista.add(p);
            }
            query.close();
            stmt.close();
            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(GestorPuesto.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }

    public ArrayList<Puesto> obtenerPuestosDisponibles() {
        ArrayList<Puesto> lista = new ArrayList<>();
        try {
            Statement stmt = conn.createStatement();
            ResultSet query = stmt.executeQuery("SELECT * from Puestos where disponible = 1");
            while (query.next()) {
                Puesto p = new Puesto();
                p.setIdPuesto(query.getInt("id_puesto"));
                p.setPuesto(query.getInt("nombre"));
                p.setPiso(query.getInt("piso"));
                p.setVentana(query.getBoolean("ventana"));
                p.setCantSillas(query.getInt("cant_sillas"));
                p.setDisponible(query.getBoolean("disponible"));
                p.calcularPrecioBase();
                lista.add(p);
            }
            query.close();
            stmt.close();
            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(GestorPuesto.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }

}
