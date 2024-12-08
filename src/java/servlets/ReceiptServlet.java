/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import classes.Stadium;
import classes.Stadium.SeatType;
import java.io.BufferedReader;
import java.io.IOException;
import classes.Ticket;
import java.util.ArrayList;
import java.util.Arrays;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author neila
 */
public class ReceiptServlet extends HttpServlet {

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
            // Read the incoming JSON request
            StringBuilder requestBody = new StringBuilder();
            String line;
            try (BufferedReader reader = request.getReader()) {
                while ((line = reader.readLine()) != null) {
                    requestBody.append(line);
                }
            }
            
            // Create an array of Tickets to be added to cookie
            String[] requestTickets = requestBody.toString().split(",");
            System.out.println(Arrays.toString(requestTickets));
            ArrayList<Ticket> tickets = new ArrayList<Ticket>();
            
            int total = 0;
            for(String reqTicket : requestTickets) {
               // Get ticket parts
               String[] reqTicketParts = reqTicket.split("-");
               int reqTicketRow = Integer.parseInt(reqTicketParts[0].trim());
               int reqTicketColumn = Integer.parseInt(reqTicketParts[1].trim());
               SeatType reqTicketType = SeatType.valueOf(reqTicketParts[2].trim());
               
               // Add ticket price to total
               int reqTicketPrice = Stadium.getSeatPrice(reqTicketType);
               total += reqTicketPrice;
               
               // Add ticket object to list of tickets
               Ticket ticket = new Ticket(reqTicketRow, reqTicketColumn, reqTicketType);
               tickets.add(ticket);
            }
            
            // Add total and current order to context
            ServletContext context = getServletContext();
            context.setAttribute("total", total);
            context.setAttribute("tickets", tickets);
            
            RequestDispatcher rd = request.getRequestDispatcher("views/receipt.jsp");
            rd.forward(request, response);
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("views/receipt.jsp");
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
