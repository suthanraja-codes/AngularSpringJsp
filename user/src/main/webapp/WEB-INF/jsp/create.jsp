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
	justify-content : center;
}
.content{
box-shadow: 3px 3px 20px 2px #888888;
	padding: 9px; 
    width: 500px;
    background-color: rgb(231, 230, 230);
}
.header{
    background-color: rgba(201, 0, 0, 0.884);
    height: 95px;
}
h2{
    text-align: center;
    color: white;
    padding: 20px;
}
.input{
    padding: 3px;
}
.input label{
    display: block;
    font-size: 18px;
}
.in{
    width: 100%;
    height: 35px;
    border: 1px solid black;
    border-radius: 3px;
}
.gender{
    margin-left: 0;
    width: 20px;
}
button{
    margin-top: 7px;
    margin-bottom: 5px;
   
}
.btn{
    background-color: black;
    color: white;
    height: 35px;
    width: 100%;
    margin-top: 10px;
}
#submit:hover{
	color : white;
}

	
	</style>
	<title>Create Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <div class="container">
    <div class="content">
    <header class="header">
    <h2>Create Employee Details</h2>
    </header>
    <form action="adduser" method="POST">
    <div class="input" >
        <label for="name">Enter Name</label><input type="text" name="name" id="name" class="in" required>
    </div>
    <div class="input">
        <label for="age">Enter Age</label><input type="text"  name="age" id="age" class="in" required>
    </div>
    <div class="input">
        <label for="gender">Select Gender</label> <input type="radio" name="gender" value="Male"> Male <br> <input type="radio" name="gender" value="Female"> Female <br> 
    </div>
    <div class="input">
        <label for="mobile">Enter Mobile No</label><input type="text"  name="mobile" id="mobile" class="in" required>
    </div>
     <div class="input">
        <label for="location">Enter Location</label><input type="text"  name="location" id="location" class="in" required>
    </div>
   
    <input type="submit" class="btn" value="submit" id="submit">
    </form>
    </div>
    </div>
</body>

</html>