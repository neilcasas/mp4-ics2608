<%-- 
    Document   : success.jsp
    Created on : 12 6, 24, 1:17:23 PM
    Author     : neila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success!</title>
    </head>
    <body>
        <h1>Successfully logged in as <%= session.getAttribute("username") %></h1>
        <a href="/mp4-ics2608">Go to home page</a>
    </body>
</html>
