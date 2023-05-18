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
            <form class="mt-5 col-md-5" action="/students/create" method="get">
                <h1 class="mb-3">New Student</h1>
                <div class="mb-3">
                    <label class="form-label">First Name</label>
                    <input class="form-control" name="firstName"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Last Name</label>
                    <input class="form-control" name="lastName"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Age</label>
                    <input class="form-control"type="number" name="age"/>
                </div>
                <input class="btn btn-primary float-end" type="submit" value="Submit"/>
            </form>
        </div>
    </div>
</main>
</body>
</html>
