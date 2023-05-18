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
    <link rel="stylesheet" href="/css/main.css"><!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<body>
<main class="container mt-5">
    <div class="row justify-content-center">
        <div class="row justify-content-center">
            <form class="mt-5 col-md-5" action="/contact/create" method="get">
                <h1 class="mb-3">Contact Info</h1>
                <div class="mb-3">
                    <label class="form-label">Student</label>
                    <select class="form-control" name="student">
                        <c:forEach items="${studentsList}" var="student">
                        <option value="${student.id}">${student.firstName} ${student.lastName}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="mb-3">
                    <label class="form-label">Address</label>
                    <input class="form-control" name="address"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">City</label>
                    <input class="form-control" name="city"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">State</label>
                    <input class="form-control" name="state"/>
                </div>
                <input class="btn btn-primary float-end" type="submit" value="Submit"/>
            </form>
        </div>
    </div>
</main>
</body>
</html>
