<%-- 
    Document   : helloWorld
    Created on : May 25, 2021, 1:33:18 PM
    Author     : dyadlows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello World</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p>Hello ${person.firstname} ${person.lastname}</p>
    </body>
</html>
