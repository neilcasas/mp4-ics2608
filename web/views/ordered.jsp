<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="classes.Ticket"%>
<%@page import="java.util.ArrayList"%>
<%@page import="classes.Stadium"%>
<%@page import="classes.Stadium.SeatType"%>
<% 
    // Retrieve attributes from session
    ArrayList<Ticket> orderedTickets = (ArrayList<Ticket>) session.getAttribute("ordered-tickets");
    if (orderedTickets == null) {
        orderedTickets = new ArrayList<Ticket>(); // Initialize if null
        session.setAttribute("ordered-tickets", orderedTickets);
    }
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
        <title>
            <% 
                Boolean purchaseSuccess = (Boolean) request.getAttribute("successful-purchase");
                if (purchaseSuccess != null && purchaseSuccess) { 
            %>
                Purchase Successful!
            <% } else { %>
                Orders
            <% } %>
        </title>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        <main>
            <h1>Orders</h1>
            <% 
                if (purchaseSuccess != null && purchaseSuccess) { 
            %>
                <div class="alert alert-success" role="alert">
                    Purchase successful!
                </div>
            <% } %>
            <% if (orderedTickets.size() > 0) { %>
            <table class="table">
                <thead>
                    <tr>
                        <th>Seat Type</th>
                        <th>Row</th>
                        <th>Column</th>
                    </tr>
                </thead>
                <tbody>
                    
                    <% for (Ticket ticket : orderedTickets) { %>
                    <tr>
                        <td><%= Stadium.getSeatString(ticket.getSeatType()) %></td>
                        <td><%= ticket.getRow() %></td>
                        <td><%= ticket.getColumn() %></td>
                    </tr>
                    <% } %>
                    

                    
                </tbody>
            </table>
            <% } else { %>                
                <div class="empty-orders" style="min-height: 30vh;"> Nothing here yet.</div>
            <%}%>
            <a href="/mp4-ics2608/" class="btn btn-secondary">Back to Home</a>
            <a href="/mp4-ics2608/tickets" class="btn btn-primary">Buy Tickets</a>
        </main>
        <jsp:include page="footer.jsp" />
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
