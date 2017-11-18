/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Controladores.GestorAlquiler;
import Controladores.GestorCliente;
import Controladores.GestorPuesto;
import Model.Alquiler;
import Model.Cliente;
import Model.Puesto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gabriel
 */
public class ModificarAlquilerServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("idAlquiler"));
        GestorAlquiler ga = new GestorAlquiler();
        Alquiler a;
        a = ga.obtenerAlquiler(id);
        GestorCliente gc = new GestorCliente();
        ArrayList<Cliente> clientes = gc.obtenerClientes();
        GestorPuesto gp = new GestorPuesto();
        ArrayList<Puesto> puestos = gp.obtenerPuestos();
        request.setAttribute("alquiler", a);
        request.setAttribute("clientes", clientes);
        request.setAttribute("puestos", puestos);

        getServletContext().getRequestDispatcher("/ModificarAlquiler.jsp").forward(request, response);
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Alquiler a = new Alquiler();
        a.setIdAlquiler(Integer.parseInt(request.getParameter("idAlquiler")));
        a.setIdCliente(Integer.parseInt(request.getParameter("cliente")));
        a.setIdPuesto(Integer.parseInt(request.getParameter("puesto")));
        a.setCanEquipo(Integer.parseInt(request.getParameter("canEquipo")));
        a.setSillasExtras(Integer.parseInt(request.getParameter("sillasExtra")));

        String salaReunion = request.getParameter("salaReunion");
        if ("on".equals(salaReunion)) {
            a.setSalaReunion(true);
        } else {
            a.setSalaReunion(false);
        }

        //modificar el alquiler
        //if(modificaralquiler)
        getServletContext().getRequestDispatcher("/Index.jsp").forward(request, response);
        //else
        
        getServletContext().getRequestDispatcher("/Hubo un Error.jsp").forward(request, response);
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
