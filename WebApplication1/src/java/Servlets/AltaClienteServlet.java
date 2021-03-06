/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Controladores.GestorCliente;
import Controladores.Gestortipodocumento;
import Model.Cliente;
import Model.TipoDocumento;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Gabriel
 */
public class AltaClienteServlet extends HttpServlet {

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
        HttpSession mySession = request.getSession();
        boolean isLogged = (boolean) mySession.getAttribute("inicio");
        if (isLogged) {
            Gestortipodocumento gc = new Gestortipodocumento();
            ArrayList<TipoDocumento> tiposDocumento = gc.obtenerTiposDocumento();
            request.setAttribute("tiposDocumento", tiposDocumento);
            getServletContext().getRequestDispatcher("/AltaCliente.jsp").forward(request, response);
        } else {
            getServletContext().getRequestDispatcher("/InicioSesion.jsp").forward(request, response);
        }
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
        processRequest(request, response);
        Cliente c = new Cliente();
        c.setNombre(request.getParameter("nombreCliente"));
        c.setApellido(request.getParameter("apellidoCliente"));
        c.setDocumento(Integer.parseInt(request.getParameter("documento")));
        c.setIdTipoDocumento(Integer.parseInt(request.getParameter("tiposDocumento")));
        c.setTelefono(Long.parseLong(request.getParameter("telefono")));

        GestorCliente gc = new GestorCliente();
        if (gc.agregarCliente(c)) {
            HttpSession mySession = request.getSession();
            mySession.setAttribute("inicio", true);

            getServletContext().getRequestDispatcher("/exito.jsp").forward(request, response);
        } else {
            getServletContext().getRequestDispatcher("/HuboUnProblema.jsp").forward(request, response);
        }

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
