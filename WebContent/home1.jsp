<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Credit Score</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">


<style>

</style>
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Pragma","no-store");
response.setHeader("Expires","0");
if(session.getAttribute("fname")==null)
	response.sendRedirect("login.jsp");
%>
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




<center> <h1 style="color:purple">Credit Score Generator</h1> </center>

<br>
 <center><strong><h2 style="color:#000080">Hello and Welcome!
</h2></strong></center>
 <br>
<center> <img  src="home.jpg" width="460" height="230" > </center><br>
<marquee style="background:yellow;"> <strong> Kindly sign up if you are not yet registered .Great features available! .For any queries please feel free to contact us .</strong> </marquee> <br>
<style>
.active {
  background-color: #4CAF50;
}
#box {
text-align:center;
border:5px solid;
padding:10px;
width:120px;
box-shadow:6px 6px red;
background-color:yellow;
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
  padding: 16px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 18px;
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
function mouseOver1() {
  
  document.getElementById("demo1").style.color = "red";
}

function mouseOut() {
  
  document.getElementById("demo").style.color = "blue"
}
function mouseOut1() {
  
  document.getElementById("demo1").style.color = "blue"
}
</script>

 </head>
<body style="background-image:linear-gradient(#00FFFF,#87CEFA)">
<article>

<hr> 
<br>
<center>


<strong style="color:#000080"><h2>We provide you with the service of calculating your credit score so that you can apply for loans and other investment options.</strong></h2>


   <br></center>
 </div>
  

</article>
</body>

</html>