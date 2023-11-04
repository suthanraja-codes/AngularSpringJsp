<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	
	<style>
	.header{
    background-color: rgba(201, 0, 0, 0.884);
    height: 100px;
    padding-left: 40px;
    padding-top: 9px;
    color: white;
}
th{
    background-color: black;
    color: white;
}
.btn{
    margin-left: 15px;
}
	</style>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>View Page By Gender</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body >
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<div class="container">
    <header class="header">
    <h1>Employee Details</h1>
    </header>
    <table class="table table-bordered table-stripped">
        <thead>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>AGE</th>
            <th>GENDER</th>
            <th>MOBILE NO</th>
            <th>LOCATION</th>
            <th>EDIT</th>
        </tr>
    </thead>
    <tbody>
     <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id }</td>
            <td>${user.name }</td>
            <td>${user.age}</td>
            <td>${user.gender}</td>
            <td>${user.mobile }</td>
            <td>${user.location}</td>
            <td>  <a href="/getuser/${user.id}" type="button" class="btn btn-success">Update</a>
               <a href="/deleteuser/${user.id}" type="button" class="btn btn-danger">Delete</a></td>
        </tr>
        </c:forEach>
    </tbody>
    </table>
</div>
</body>
</html>
