package Controladores;

import Model.Alquiler;
import Model.Cliente;
import Model.Puesto;
import Model.VMAlquiler;
import Model.VMTotalAlquilerXPiso;
import static java.lang.Class.forName;
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
            System.out.println(ex);
        }
    }

    public Alquiler obtenerAlquiler(int id) {

        Alquiler a = new Alquiler();
        try {
            forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1412;databaseName=TP_Lab_IV", "gabriel", "G.E.S.C.");
            PreparedStatement stmt = conn.prepareStatement("EXEC pa_obtener_un_alquiler ?");
            stmt.setInt(1, id);
            ResultSet query = stmt.executeQuery();
            if (query.next()) {
                a.setIdAlquiler(query.getInt("id_alquiler"));
                a.setIdCliente(query.getInt("id_cliente"));
                a.setIdPuesto(query.getInt("id_puesto"));
                a.setCanEquipo(query.getInt("cant_equipos"));
                a.setSillasExtras(query.getInt("sillas_extras"));
                a.setSalaReunion(query.getBoolean("sala_reunion"));
                a.setImporte(query.getDouble("importe"));

            }
            query.close();
            stmt.close();
            conn.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        } catch (ClassNotFoundException ex) {
            System.out.println(ex);
        }
        return a;
    }
//VERIFICAR QUE EL PUESTO DEJE DE ESTAR DISPONIBLE AL DARLO DE ALTA EN UN NUEVO ALQUILER!

    public boolean agregarAlquiler(Alquiler a) {

        boolean inserto = true;
        try {
            PreparedStatement stmt = conn.prepareStatement("EXEC pa_insert_alquiler ?, ?, ?, ?, ?, ?");
            stmt.setInt(1, a.getIdCliente());
            stmt.setInt(2, a.getIdPuesto());
            stmt.setInt(3, a.getCanEquipo());
            stmt.setInt(4, a.getSillasExtras());
            stmt.setBoolean(5, a.isSalaReunion());
            stmt.setDouble(6, a.getImporte());
            stmt.executeUpdate();
            stmt.close();
            conn.close();
        } catch (SQLException ex) {
            System.out.println(ex);
            inserto = false;
        }
        return inserto;
    }

    public boolean modificarAlquiler(Alquiler a) {
        boolean modifico = true;
        try {
            PreparedStatement stmt = conn.prepareStatement("EXEC pa_update_alquiler ?, ?, ?, ?, ?");
            stmt.setInt(2, a.getCanEquipo());
            stmt.setInt(3, a.getSillasExtras());
            stmt.setBoolean(4, a.isSalaReunion());
            stmt.setDouble(5, a.getImporte());
            stmt.setInt(1, a.getIdAlquiler());
            stmt.executeUpdate();
            stmt.close();
            conn.close();
        } catch (SQLException ex) {
            System.out.println(ex);
            modifico = false;
        }
        return modifico;
    }

    public ArrayList<Alquiler> obtenerAlquileres() {
        ArrayList<Alquiler> lista = new ArrayList<>();
        try {
            Statement stmt = conn.createStatement();
            ResultSet query = stmt.executeQuery("SELECT * from Alquileres");
            while (query.next()) {
                Alquiler a = new Alquiler();
                a.setIdAlquiler(query.getInt("id_alquiler"));
                a.setIdCliente(query.getInt("id_cliente"));
                a.setIdPuesto(query.getInt("id_puesto"));
                a.setCanEquipo(query.getInt("cant_equipos"));
                a.setSillasExtras(query.getInt("sillas_extras"));
                a.setSalaReunion(query.getBoolean("sala_reunion"));
                a.setImporte(query.getDouble("importe"));
                lista.add(a);
            }
            query.close();
            stmt.close();
            conn.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return lista;
    }

    public ArrayList<VMTotalAlquilerXPiso> obtenerAlquileresXPiso() {
        ArrayList<VMTotalAlquilerXPiso> lista = new ArrayList<>();
        try {
            Statement stmt = conn.createStatement();
            ResultSet query = stmt.executeQuery("select p.piso, sum(a.importe) total from Alquileres a join Puestos p on a.id_puesto = p.id_puesto group by p.piso");
            while (query.next()) {
                VMTotalAlquilerXPiso vt = new VMTotalAlquilerXPiso();
                vt.setNroPiso(query.getInt("piso"));
                vt.setMonto(query.getDouble("total"));
                lista.add(vt);
            }
            query.close();
            stmt.close();
            conn.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return lista;
    }

    public ArrayList<VMAlquiler> obtenerAlquileresViewModel() {
        ArrayList<VMAlquiler> lista = new ArrayList<>();
        try {
            Statement stmt = conn.createStatement();
            ResultSet query = stmt.executeQuery("select a.id_alquiler, p.nombre, a.cant_equipos, p.id_puesto, a.sala_reunion, a.sillas_extras, a.importe from alquileres a join puestos p on a.id_puesto = p.id_puesto");
            while (query.next()) {
                VMAlquiler va = new VMAlquiler();
                va.setId(query.getInt("id_alquiler"));
                va.setNombre(query.getString("nombre"));
                va.setCanEquipo(query.getInt("cant_equipos"));
                va.setPuesto(query.getInt("id_puesto"));
                va.setSalaReunion(query.getBoolean("sala_reunion"));
                va.setSillasExtras(query.getInt("sillas_extras"));
                va.setTotal(query.getDouble("importe"));
                lista.add(va);
            }
            query.close();
            stmt.close();
            conn.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return lista;
    }

}
