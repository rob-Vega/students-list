<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Create New Licence</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<body>
<main class="container mt-5">
    <div class="row justify-content-center">
        <div class="row justify-content-center">
            <h1>All Students</h1>
            <div>
                <a class="me-4" href="/students/new">Create new student</a>
                <a href="/contact/new">Create new contact info</a>
            </div>
            <table class="table table-striped mt-5">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Address</th>
                        <th>City</th>
                        <th>State</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${studentsList}" var="student">
                    <tr>
                        <td>${student.firstName} ${student.lastName}</td>
                        <td>${student.age}</td>
                        <td>${student.contactInfo.address}</td>
                        <td>${student.contactInfo.city}</td>
                        <td>${student.contactInfo.state}</td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</main>
</body>
</html>
