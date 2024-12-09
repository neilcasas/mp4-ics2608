/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Edge
 */
public class LoginServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String formUsername = request.getParameter("formUsername");
        String formPassword = request.getParameter("formPassword");
        
        String actualUsername = getServletContext().getInitParameter("actualUsername");
        String actualPassword = getServletContext().getInitParameter("actualPassword");
        
        if(formUsername.equals(actualUsername) && formPassword.equals(actualPassword)){
            
            HttpSession session = request.getSession();
            session.setAttribute("username",formUsername);
            session.setAttribute("isLoggedIn", true); 
            response.sendRedirect("/mp4-ics2608/views/index.jsp");
            
        }
        
        else {
            response.sendRedirect("/mp4-ics2608/views/login.jsp");
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Invalidate session and remove user data
        HttpSession session = request.getSession();
        session.invalidate();

        // Set headers to prevent caching of the logout page
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Expires", "0");
        
        RequestDispatcher rd = request.getRequestDispatcher("views/login.jsp");
        rd.forward(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
