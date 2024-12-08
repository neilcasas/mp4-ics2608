<%@page import="classes.Stadium.SeatType"%>
<%@page import="classes.Stadium"%>
<% Stadium stadium = (Stadium) application.getAttribute("stadium"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); 
    response.setHeader("Pragma", "no-cache"); 
    response.setDateHeader("Expires", 0);   
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tickets</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
        />
        <style>
            .ticket_table {
                display: flex;
                flex-direction: column;
            }
            .ticket_row {
                display: flex;
                align-items: center;
                justify-content: center;
                height: 30px;
                width: fit-content;
            }
            
            .ticket_cell {
                height: 20px;
                width: 20px;
                margin: 0px 2px;
            }
            .modal-body {
                display: flex;
                align-items: center;
                justify-content: center;
            }
            
            .ticket_cell.taken {
                background-color: grey;
            }
            
            .ticket_cell.available {
                background-color: cornflowerblue;
            }
            
        </style>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        <main>
            <h1>Tickets</h1>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">Area</th>
                        <th scope="col">Price</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        for (SeatType type : SeatType.values()) {
                    %>
                    <tr>
                        <td><%= Stadium.getSeatString(type) %></td>
                        <td><%= Stadium.getSeatPrice(type) %></td>
                        <td>
                            <% if (session != null && (Boolean) session.getAttribute("isLoggedIn") != null && (Boolean) session.getAttribute("isLoggedIn")) { 
                                if (stadium.isAreaFull(type)) { %>
                                    <button class="btn btn-secondary" disabled>Unavailable</button>
                                <% } else { %>
                                    <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#<%=type + "ticketModal"%>">Buy</button>
                                    <!-- Modal -->
                                    <div class="modal fade" id="<%=type + "ticketModal"%>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel"><%= Stadium.getSeatString(type) %></h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <form action="purchase" method="get">
                                                <div class="modal-body">
                                                    <div class="<%= type + " ticket_table"%>">
                                                    <% 
                                                        Boolean[][] table = stadium.getTableFromType(type);
                                                        for (int i = 0; i < table.length; i++) { 
                                                    %>
                                                    <div class="<%=type + " ticket_row"%>">
                                                        <%= i + 1 %>  
                                                        <% 
                                                            for (int j = 0; j < table[i].length; j++) { 
                                                        %>
                                                        <div class="<%=type + " ticket_cell" + (table[i][j] ? " taken" : " available")%>">
                                                            <input type="hidden" name="row" value="<%=i%>">
                                                            <input type="hidden" name="column" value="<%=j%>">
                                                            <input type="hidden" name="seat_type" value="<%=type%>">
                                                        </div>
                                                        <% } %>
                                                    </div>
                                                    <% } %>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                    <input type="submit" class="btn btn-primary" value="Purchase">
                                                </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                <% } 
                            } else { %>
                                <button class="btn btn-secondary" disabled>Log in to buy</button>
                            <% } %>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </main>
        <jsp:include page="footer.jsp" />
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
