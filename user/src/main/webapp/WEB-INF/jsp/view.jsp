<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

	<style>
	
	@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');

	
	
	</style>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>View Page</title>
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
    <table class="table table-striped table-dark" >
        <thead class="table-dark">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Age</th>
                <th>Email</th>
                <th>Gender</th>  
                <th>Destination</th>
                <th>Salary</th>
                <th>Branch</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        </thead>

        <tbody>
            <c:forEach var="user" items="${users}">
                     <td>${user.id}</td>
                    <td>${user.empName}</td>
                    <td>${user.empAge}</td>
                    <td>${user.empEmail}</td>
                    <td>${user.empGender}</td>
                    <td>${user.empDestination}</td>
                    <td>${user.empSalary}</td>
                    <td>${user.empBranch}</td>
                    <td ><a href="/getuser/${user.id}" type="button" class="btn btn-success">Update</a> </td>
                    <td><a href="/deleteuser/${user.id}" type="button" class="btn btn-danger">Delete</a></td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
    
    <form action="/getuserbygender" method="post">
    	<h3>Filter by Gender</h3>
	    <div class="gender">
	     <input type="radio" name="gender" id="gender" value="Male"> <label for="gender">Male</label><br>
	      <input type="radio" name="gender" id="gender" value="Female"> <label for="gender">Female</label>
	      </div>
	    <input type="submit" value="Search" class="btn btn-primary" style="margin-left: 0">
	</form>

	<form action="/create">
	 <input type="submit" value="Home" class="btn btn-warning" style="margin-left: 0" id="home">
	</form>
	
    
</div>
</body>
</html>
