<%-- 
    Document   : success.jsp
    Created on : 12 6, 24, 1:17:23 PM
    Author     : neila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); 
    response.setHeader("Pragma", "no-cache"); 
    response.setDateHeader("Expires", 0); 

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success!</title>
    </head>
    <body>
        <% if (session != null) { 
            if ((Boolean) session.getAttribute("isLoggedIn") != null && (Boolean) session.getAttribute("isLoggedIn") == true) {
        %>
        <h1>Successfully logged in as <%= session.getAttribute("username") %></h1>
        <% } else { %>
        <h1> Successfully logged out.</h1>
        <%}}%>
        <a href="/mp4-ics2608">Go to home page</a>
    </body>
</html>
