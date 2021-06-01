<%-- 
    Document   : helloWorldForm
    Created on : May 25, 2021, 2:29:34 PM
    Author     : dyadlows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello World Form</title>
    </head>
    <body>
        <h1>Hello World Form</h1>
        <form method="post" action="hello">
            <label>First Name:</label>
            <input type="text" name="first_name" value="${person.firstname}" placeholder="John">
            <br>
            <label>Last Name:</label>
            <input type="text" name="last_name" value="${person.lastname}" placeholder="Smith">
            <br>
            <input type="submit" value="Say Hello">
        </form>
        <!-- Display message only if validation has been tripped. -->
        <%-- Display message only if validation has been tripped. --%>
        <c:if test="${invalid}">
            <p>Invalid entry. Please enter both a first and last name.</p>
        </c:if>
    </body>
</html>
