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
        <title>result Page</title>
    </head>
    <body>
        <h1>Results</h1>
        <%
            Integer stuNo = (Integer) request.getAttribute("stuNo");
            Integer mark = (Integer) request.getAttribute("mark");
            String name = (String) request.getAttribute("name");
        %>
        <ul>
    <li>Student Number: <%= stuNo %></li>
    <li>Student Name: <%= name %></li>
    <li>Student Mark: <%= mark %></li>
    <li>

        <%
    if (mark < 50) {
    %>
          <p>Performance: <strong>Fail</strong></p>
    <%
        } else if (mark >= 50 && mark <= 59) {
    %>
        <p>Performance: <strong>Supplementary</strong></p>
    <%
        } else {
    %>
        <p>Performance: <strong>Pass</strong></p>
    <%
        }
    %>
    <p>
        click <a href="index.html">here</a> to go back
    </p>
    </body>
</html>

