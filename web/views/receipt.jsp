<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="classes.Ticket"%>
<%@page import="java.util.ArrayList"%>
<%@page import="classes.Stadium"%>
<%@page import="classes.Stadium.SeatType"%>
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
    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        <h1>Confirmation Receipt</h1>
        <main>
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
                    <td colspan="2"><%= total %></td>
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
