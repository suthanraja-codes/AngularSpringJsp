<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<style>
	*{
    font-family: sans-serif;
}
.container{
	display: flex;
	justify-content: center;
	
}
.content{
	box-shadow: 5px 5px 20px 2px #888888;
    width: 500px;
    background-color: rgb(231, 230, 230);
}
h1{
    text-align: center;
    padding: 10px;
}
.button{
    display: flex;
    justify-content: space-evenly;
    padding: 40px;
}
.btn{
    font-size: 25px;
}
	
	</style>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Home Page</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body >
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <div class="container">
    <div class="content">
    <header class="header">
    <h1>Employee Details</h1>
    </header>
    <div class="button">
    <a href="create"><input type="button" value="create" class="btn btn-success"></a>
    <a href="getuser"><input type="button" value="View" class="btn btn-danger"></a>
    </div>
    </div>
    </div>
</body>
</html>