<%-- 
    Document   : results
    Created on : May 12, 2025, 1:49:41 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Results</h1>
        <%
            Integer stuNo = (Integer) request.getAttribute("stuNo");
            Integer mark = (Integer) request.getAttribute("mark");
            String name = (String) request.getAttribute("name");
        %>
        <p>Student Number: <%= stuNo %></p>
        <p>Student Name: <%= name %></p>
        <p>Student Mark: <%= mark %></p>

        <%
            if (mark < 50) {
        %>
            <p>Performance: <strong>Fail</strong></p>
        <%
            } else {
        %>
            <p>Performance: <strong>Pass</strong></p>
        <%
            }
        %>
    </body>
</html>

