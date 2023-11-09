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
   
    <input type="submit" class="btn" value="submit" id="submit"><%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<style>
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');

*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  
}
body {
  font-family: 'Inter', sans-serif;
  
}

.forms{
  box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;
}

.formbold-mb-3 {
  margin-bottom: 15px;
  
}
.formbold-relative {
  position: relative;
}
.formbold-opacity-0 {
  opacity: 0;
}
.formbold-stroke-current {
  stroke: currentColor;
}
#supportCheckbox:checked ~ div span {
  opacity: 1;
}

.formbold-main-wrapper {
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 48px;
  
 }

.formbold-form-wrapper {
  margin: 0 auto;
  max-width: 570px;
  width: 100%;
  background: white;
  padding: 40px;
}

.formbold-img {
  margin-bottom: 45px;
}

.formbold-form-title {
  margin-bottom: 30px;
}
.formbold-form-title h2 {
  font-weight: 600;
  font-size: 28px;
  line-height: 34px;
  color: #07074d;
}
.formbold-form-title p {
  font-size: 16px;
  line-height: 24px;
  color: #536387;
  margin-top: 12px;
}

.formbold-input-flex {
  display: flex;
  gap: 20px;
  margin-bottom: 15px;
}
.formbold-input-flex > div {
  width: 50%;
}

.formbold-form-input {
  text-align: center;
  width: 100%;
  padding: 13px 22px;
  border-radius: 5px;
  border: 1px solid #dde3ec;
  background: #ffffff;
  font-weight: 500;
  font-size: 16px;
  color: #536387;
  outline: none;
  resize: none;
}
.formbold-form-input:focus{
  border-color: #6a64f1;
  box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
}

.formbold-input-flex{
  color:#536387;
  font-size: 14px;
}

.formbold-form-label {
  color: #536387;
  font-size: 14px;
  line-height: 24px;
  display: block;
  margin-bottom: 10px;
}

/* */


.formbold-btn {
  font-size: 16px;
  border-radius: 5px;
  padding: 14px 25px;
  border: none;
  font-weight: 500;
  background-color: #6a64f1;
  color: white;
  cursor: pointer;
  margin-top: 25px;
  margin-right: 60px;
}
.formbold-btn:hover {
  box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
}

.btn-flex{
    display: flex;
    justify-content: space-between;
}

.view{
    background-color: rgba(223, 12, 12, 0.795);
}

.btn-flex a{
  text-decoration: none;
  color: #ffffff;
}

input[type=number]::-webkit-inner-spin-button,
input[type=number]::-webkit-outer-spin-button{
      -webkit-appearance: none; 
     
      /* -moz-appearance: textfield;  */
}
	
	</style>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Home Page</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
    <div class="form-main-wrapper ">
        <!-- Author: FormBold Team -->
        <!-- Learn More: https://formbold.com -->
        <div class="formbold-form-wrapper forms">
      
          <form action="adduser" method="post" >
            <div class="formbold-form-title ">
              <h2 class="">Register now</h2>
              <p>
                Employee Registration Form - Fill All The Field
              </p>
            </div>
      
            <div class="formbold-input-flex">

              <div>
                <label for="Name" class="formbold-form-label"> Name </label>
                <input  class="formbold-form-input" type="text" name="empName"  id="empName" />
              </div>

              <div>
                <label for="age" class="formbold-form-label"> Age </label>
                <input class="formbold-form-input" type="number" name="empAge" id="empAge" />
              </div>

            </div>

            <div class="formbold-mb-3">
                <div>
                    <label for="gender" class="formbold-form-label">Gender</label>
                </div>
                <div class="formbold-input-flex">
                    <input class="form-input-input" type="radio"  name="empGender" value="male" > Male
                    <input class="form-input-input" type="radio" name="empGender" value="female" > Female
                </div>

            </div>
      
            <div class="formbold-input-flex">
              <div>
                <label for="email" class="formbold-form-label"> Email </label>
                <input class="formbold-form-input" type="email" name="empGmail" id="empGmail"  />
              </div>
              <div>
                <label for="phone" class="formbold-form-label"> Destination</label>
                <input class="formbold-form-input" type="text" name="empDestination" id="empDestination"  />
              </div>
            </div>
      
    
      
            <div class="formbold-input-flex">
              <div>
                <label for="post" class="formbold-form-label"> Salary </label>
                <input class="formbold-form-input" type="number" name="empSalary" id="empSalary"  />
              </div>
              <div>
                <label for="area" class="formbold-form-label"> Branch </label>
                <input class="formbold-form-input" type="text" name="empBranch" id="empBranch"  />
              </div>
            </div>
      
        
            <div class="btn-flex">
                <button class="formbold-btn submit" type="submit"><a href="create">Register Now</a> </button>
    			<button class="formbold-btn submit" type="submit"><a href="getuser">Register Now</a> </button>
            </div>

          </form>
        </div>
      </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
    </form>
    </div>
    </div>
</body>

</html>