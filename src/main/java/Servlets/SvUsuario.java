/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import data.ControllerMaster;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "SvUsuario", urlPatterns = {"/SvUsuario"})
public class SvUsuario extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        String usuario  = request.getParameter("username");
        String password = request.getParameter("pass");
        
        ControllerMaster ctrl   = new ControllerMaster();
        boolean auth            = ctrl.verificarUsuario(usuario,password);
        
        if (auth == true) {
        
        HttpSession myses = request.getSession(true);
        myses.setAttribute("usuario", usuario);
        myses.setAttribute("password", password);
        
        response.sendRedirect("principal.jsp");
      
        }
        else {
            response.sendRedirect("login.jsp");
        }
     
    }

}
