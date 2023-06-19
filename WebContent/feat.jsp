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
body  {
   background-image: url("saa.jpg");
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
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Pragma","no-store");
response.setHeader("Expires","0");
if(session.getAttribute("fname")==null)
	response.sendRedirect("login.jsp");
%>
<nav class="navbar navbar-inverse">

  <div class="container-fluid">
  
  
    <a class="navbar-brand" href="#">
          <img src="kn2.jpg" alt="" width="30" height="30">
        </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="navbar-header">
      <a class="navbar-brand" href="#">CREDIT KNIGHT</a>
    </div>
    <ul class="nav navbar-nav">
      <li class=""><a href="home2.jsp">Home</a></li>
       <li class="" ><a href="AboutUs.jsp">About Us</a></li>
       <li class="" ><a href="scorecalc.jsp">Credit Score</a></li>
       <li class="" ><a href="feat.jsp">Feature</a></li>
       <!-- 
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Features<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li class="" ><a href=".jsp">Credit Scorer </a></li>
          <li class="" id="info"><a href="TaskAdd.jsp">Investment Options</a></li>
          <li class=""><a href="#"></a></li>
        </ul>
      </li>
            -->
    </ul>
     <ul class="nav navbar-nav navbar-right">
       <li><a href="#"><span class="glyphicon glyphicon-user" ></span> <%=session.getAttribute("fname")%></a></li>
      <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
  </ul>
  </div>
</nav>




<h1 class="text-center" ><kbd > Credit Knight Features</kbd></h1>

<br>
<div class="col-md-4">
    <div class="thumbnail">
      <a href="http://127.0.0.1:5000/"> 
        <img src="ln1.jpg" alt="Nature" style="width:100%">
        <div class="caption">
          <p>Loan Approval ML</p>
        </div>
      </a>
    </div>
  </div>
  </center>
  
  
  <div class="col-md-4">
    <div class="thumbnail">
      <a href="scorecalc2.jsp"> 
        <img src="ln1.jpg" alt="Nature" style="width:100%">
        <div class="caption">
          <p>Credit Score</p>
        </div>
      </a>
    </div>
  </div>
<div class="row">
  <div class="col-md-4">
    <div class="thumbnail">
      <a href="scorecalc.jsp">
        <img src="cd.jpg" alt="Lights" style="width:100%">
        <div class="caption">
          <p>Fico Score</p>
        </div>
      </a>
    </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
      <a href="invest.jsp">
        <img src="hh.jpg" alt="Nature" style="width:100%">
        <div class="caption">
          <p>INVESTMENT OPTION</p>
        </div>
      </a>
    </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
      <a href="exc.jsp">
        <img src="credit.jpg" alt="Nature" style="width:100%">
        <div class="caption">
          <p>Credit Worthiness</p>
        </div>
      </a>
    </div>
  </div>
  <center>
  
  
  
 
  

<style>



 </head>
<body >
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