<%-- 
    Document   : toc
    Created on : Nov 7, 2021, 6:51:48 PM
    Author     : nemishappy
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FtoC</title>
    </head>
    <body>
        <h1><%
            String fahrenheitStr = request.getParameter("temperature");
            double fahrenheit = Double.parseDouble(fahrenheitStr);
            DecimalFormat twoDigits = new DecimalFormat("0.00");
            double celsius = (5.0 / 9) * (fahrenheit - 32);
            String celsiusStr = twoDigits.format(celsius);
            fahrenheitStr = twoDigits.format(fahrenheit);
            out.print(fahrenheitStr + " F is " + celsiusStr + " C ");%></h1>
    </body>
</html>
