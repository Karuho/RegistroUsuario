/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package cl.solemne2.controller;

import cl.solemne2.dao.RegistroJpaController;
import cl.solemne2.entity.Registro;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Carlos
 */
@WebServlet(name="EditarController", urlPatterns={"/EditarController"})
public class EditarController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditarController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditarController at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
            String rut;
            if (request.getParameter("rut") == ""){
                rut = "";
            }else{
                rut = request.getParameter("rut");
            }
            
            RegistroJpaController daoUsuarios = new RegistroJpaController();
            Registro datosUsuarios = daoUsuarios.findRegistro(rut);
            
                request.setAttribute("datosUsuarios", datosUsuarios);
                request.getRequestDispatcher("editar.jsp").forward(request, response); 
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String rut;
        String usuario;
        String contrasena;
        int edad;
        String correo;
        if (request.getParameter("txtRut") == "") {
            rut = "";
        } else {
            rut = request.getParameter("txtRut");
        }
        if (request.getParameter("txtUsuario") == "") {
            usuario = "";
        } else {
            usuario = request.getParameter("txtUsuario");
        }
        if (request.getParameter("txtContrasena") == "") {
            contrasena = "";
        } else {
            contrasena = request.getParameter("txtContrasena");
        }
       if (request.getParameter("txtEdad") == "") {
            edad = 0;
        } else {
            edad = Integer.parseInt(request.getParameter("txtEdad"));
        }
        if (request.getParameter("txtCorreo") == "") {
            correo = "";
        } else {
            correo = request.getParameter("txtCorreo");
        }
        Registro datosUsuario = new Registro();
        datosUsuario.setRut(rut);
        datosUsuario.setUsername(usuario);
        datosUsuario.setPass(contrasena);
        datosUsuario.setEdad(edad);
        datosUsuario.setCorreo(correo);
        

        RegistroJpaController daoUsuarios = new RegistroJpaController();
        try {
            daoUsuarios.edit(datosUsuario);
        } catch (Exception ex) {
            Logger.getLogger(RegistroController.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("ListarController");
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
