<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration (MVC Example)</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class = "container">
<div class = "row">
<div class = "col-md-4">
<form action = "${pageContext.request.contextPath}/StudentController" method="POST">
<div class = "form-group"> <label>Student Name</label> <input type = "text" class = "form-control" name = "name"
"${student.name}"/></div>
value =
<div class = "form-group"> <label>Roll No.</label><input type = "text" class = "form-control" name = "rollno" value =
"${student.rollno}"/> </div>
<div class="form-group"> <label>Email</label><input type = "text" class = "form-control" name = "email" value =
"${student.email}"/> </div>
<input type = "hidden" name = "id" value = "${student.id}"/>
<button type = "submit" class = "btn btn-primary">Save</button>
</form> </div> </div>
<a href = "${pageContext.request.contextPath}/StudentController?action=LIST">Back to Student List</a>
</div> </body> </html>