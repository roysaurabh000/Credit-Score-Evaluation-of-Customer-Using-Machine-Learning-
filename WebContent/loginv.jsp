<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body  {
   background-image: url("sa.jpg");
   /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
 
}
</style>
</head>
<body>
<%-- 
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");

if(session.getAttribute("uname")==null)
	response.sendRedirect("loginv.jsp");
%> --%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">TASK SCHEDULAR</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="disabled"><a href="home.jsp">Home</a></li>
      <li class="disabled" class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="http://localhost:8080/don/ProfileServlet">TASKS<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li class="active" ><a href="sub.jsp">STUDY</a></li>
          <li class="" id="info"><a href="TaskAdd.jsp">+Task</a></li>
          <li class=""><a href="#">Movies</a></li>
        </ul>
      </li>
   <!--    <li><a href="http://localhost:8080/don/LogoutServlet">Logout</a></li> -->
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="form.jsp"><span class="glyphicon glyphicon-user" ></span> Sign Up</a></li>
      <li><a href="loginv.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>

<div class="container"> 
 
						<br> 
						 <h1 class="text-center"> <a href="task scheduler.com"> TASK SCHEDULER</a></h1>
						<hr>


         

						<div class="card bg-light">
			<center>			
<form  action="loginval.jsp" method="post">
<div class="form-group input-group"><!-- form-group// -->
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-user"></i> </span>
						</div>
								<input name="uname" class="form-control" placeholder="User-name" type="text">
					</div> 

<div class="form-group input-group">
									<div class="input-group-prepend">
									<span class="input-group-text"> <i class="fa fa-lock"></i> </span>
								</div>
								<input name="pswd" class="form-control" placeholder="Password" type="password">
							</div>

<br>
<a href="forgotpswd.jsp" >Forgot Password!</a>
<div class="form-group">
								<button type="submit" class="btn btn-primary" value="submit"> Login </button>
							</div> 
<br>
<br>


</form>
</center>
</div>
</div>


</body>
</html>