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
        <title>Tickets</title>
            <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    </head>
    <body>
            <jsp:include page="navbar.jsp" />
            <main>
        <h1>Tickets</h1>

        <% if (session == null) { %>
            <div>You have to be logged in to purchase a ticket.</div>
        <% } else { 
                if((Boolean) session.getAttribute("isLoggedIn") == null || (Boolean)session.getAttribute("isLoggedIn") == false) {
                %>
               <div>You have to be logged in to purchase a ticket.</div>
               <% } 
        } %>
        <table class="table table-hover">
            <thead>
                <th scope="col">Area</th>
                <th scope="col">Price</th>
            </thead>
        <tbody>
                <% 
                    for (SeatType type : SeatType.values()) {
                %>
            <tr>
                <td>
                <%= Stadium.getSeatString(type) %>
                </td>
                <td>
                <%= Stadium.getSeatPrice(type) %> 
                </td>
                
                <% if(session != null) {
                    if((Boolean)session.getAttribute("isLoggedIn") != null && (Boolean)session.getAttribute("isLoggedIn") == true) {
                    %>
                    <td>
                        <button class="btn btn-primary">Buy</button>
                    </td>
                    <% } 
                } %>
        <% 
            } 
        %>
        </tr>
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
