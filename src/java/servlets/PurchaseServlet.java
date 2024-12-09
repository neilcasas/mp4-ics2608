/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import classes.Stadium;
import classes.Ticket;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import classes.Stadium.SeatType;
import java.util.HashSet;
import java.util.Set;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author neila
 */
public class PurchaseServlet extends HttpServlet {

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
        
        if("POST".equals(request.getMethod())) {
            
            // Retrieve stadium object
            ServletContext context = getServletContext();
            Stadium stadium = (Stadium) context.getAttribute("stadium");
            
            // Retrieve ticket order
            ArrayList<Ticket> tickets = (ArrayList<Ticket>) context.getAttribute("tickets");
            
            // Get list of ordered tickets
            HttpSession session = request.getSession();
            ArrayList<Ticket> orderedTickets = (ArrayList<Ticket>) session.getAttribute("ordered-tickets");

            if (orderedTickets == null) {
                orderedTickets = new ArrayList<>();
            }
            
            // Turn seats into true
            for(Ticket ticket : tickets) {
                orderedTickets.add(ticket);
                SeatType type = ticket.getSeatType();
                Boolean[][] table = stadium.getTableFromType(type);
                table[ticket.getRow() - 1][ticket.getColumn() - 1] = true;
            }
           
            System.out.println(orderedTickets.toString());
            session.setAttribute("ordered-tickets", orderedTickets); 
            
            // Send a success message after ordering
            request.setAttribute("successful-purchase", true);
            
            
            RequestDispatcher rd = request.getRequestDispatcher("views/ordered.jsp");
            rd.forward(request, response);
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("views/ordered.jsp");
            rd.forward(request, response);
        }
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
