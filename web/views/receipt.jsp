<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="classes.Ticket"%>
<%@page import="java.util.ArrayList"%>
<%@page import="classes.Stadium"%>
<%@page import="classes.Stadium.SeatType"%>
<%@ page session="true" %>
<%
    // Check if the session has a 'username' attribute
    if (session.getAttribute("username") == null) {
        // If not logged in, redirect to a 403 error page
        response.sendRedirect("/mp4-ics2608/views/403.jsp");
    }

    // Prevent caching of the page (important to prevent the back button issue)
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
%>

<% 
    // Retrieve attributes from ServletContext
    ArrayList<Ticket> tickets = (ArrayList<Ticket>) application.getAttribute("tickets");
    Integer total = (Integer) application.getAttribute("total");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
        />
        <title>Confirmation Receipt</title>
        <style>
            * {
                margin: 0;
                padding: 0;
            }
            main {
                padding: 5vh 5vw;
                min-height: calc(100vh - 125px);
            }
            table {
                min-height: 50vh;
            }
        </style>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        
        <main>
        <h1>Confirmation Receipt</h1>
        <form action="purchase" method="POST">
        <table class="table">
            <thead>
                <tr>
                    <th>Seat Type</th>
                    <th>Row</th>
                    <th>Column</th>
                </tr>
            </thead>

            <tbody>
                <% for(Ticket ticket : tickets) { %>
                <tr>
                    <td><%= Stadium.getSeatString(ticket.getSeatType()) %></td>
                    <td><%= ticket.getRow() %></td>
                    <td><%= ticket.getColumn() %></td>
                </tr>
                <% } %>
                <tr>
                    <th scope="row">TOTAL</th>
                    <td colspan="2">$<%= total %></td>
                </tr>
            </tbody>
        </table>
                <input type="submit" class="btn btn-primary" value="Confirm Purchase">
                <button class="btn btn-danger">Cancel Purchase</button>
        </form>
        </main>
        <jsp:include page="footer.jsp" />
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
