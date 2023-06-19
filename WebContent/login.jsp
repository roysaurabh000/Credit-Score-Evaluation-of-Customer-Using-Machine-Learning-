<!DOCTYPE html>
<html>


<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<style>	
#shad{
opacity:0.6;
}
.active {
  background-color: #4CAF50;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 18px 18px;
  text-decoration: none;
}

li a:hover {
  background-color: #111;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.button1 {border-radius: 12px;}
</style>
  <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-176338996-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-176338996-1');
</script>

<script>
function mouseOver() {
  document.getElementById("demo").style.color = "red";
  
}
function mouseOut() {
  
  document.getElementById("demo").style.color = "blue"
}</script>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">CREDIT KNIGHT</a>
    </div>
    <ul class="nav navbar-nav">
      <li class=""><a href="home1.jsp">Home</a></li>
       <li class="" ><a href="AboutUs.jsp">About Us</a></li>
      <li class="disabled" class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="">Features<span class="caret"></span></a>
        <ul class="dropdown-menu">
          
          <li class="" id="info"><a href="">Credit Score</a></li>
          
        </ul>
      </li>
   
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register.html"><span class="glyphicon glyphicon-user" ></span> Sign Up</a></li>
      <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>

<center> <h1 style="color:purple"> Welcome Back!</h1> </center>
</head>
<br><br>
<center> <img  src="login.jpg" width="560" height="330" > 
<body style="background-image:linear-gradient(#00FFFF,#87CEFA)">

<br>
<form  action="loginval.jsp" method="post">
<div class="form-group input-group"><!-- form-group// -->
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-user"></i> </span>
						</div>
								<input name="email" class="form-control" placeholder="E-mail ID" type="text" required>
					</div> 

<div class="form-group input-group">
									<div class="input-group-prepend">
									<span class="input-group-text"> <i class="fa fa-lock"></i> </span>
								</div>
								<input name="pswd" class="form-control" placeholder="Password" type="password" required>
							</div>

<br>
<a href="forgotpswd.jsp" >Forgot Password!</a>
<div class="form-group">
								<input  type="submit" value="Login" class="button button1"  onmouseover="mouseOver()" onmouseout="mouseOut()" id="demo">  </button>
							</div> 
<br>
<br>






</body> </center>
</html>
