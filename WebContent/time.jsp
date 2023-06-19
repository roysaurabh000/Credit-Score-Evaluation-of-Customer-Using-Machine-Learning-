<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
   background-image: url("sp.jpg");
   /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: repeat;
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
    <div class="navbar-header">
      <a class="navbar-brand" href="#">CREDIT KNIGHT</a>
    </div>
    <ul class="nav navbar-nav">
      <li class=""><a href="home2.jsp">Home</a></li>
       <li class="" ><a href="AboutUs.jsp">About Us</a></li>
       <li class="" ><a href="scorecalc.jsp">Credit Score</a></li>
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




<h1 class="text-center" ><kbd > FICO Score</kbd></h1>
<!-- <h1><a href="" class="text-white bg-dark">YOUR CREDIT SCORE:</a></h1> -->

<center>
<%

int i = Integer.parseInt(request.getParameter("hist"));	
int j = Integer.parseInt(request.getParameter("loan"));	
int l = Integer.parseInt(request.getParameter("len"));
int m = Integer.parseInt(request.getParameter("typ"));
int c=Integer.parseInt(request.getParameter("case"));
int a=Integer.parseInt(request.getParameter("as"));

double k = i*3+j*1.5+l*1.5+m +250;
	if(a!=0 && c!=0)
	{

	out.println("<h1>YOUR FICO SCORE:"+k+"</h1>");
	
	if(k>700)
		out.println("<h1>YOU HAVE GOOD FICO SCORE</h1><br>");
	
	else
		out.println("<h1>NEED TO IMPROVE FICO SCORE</h1>");
	}
	else{
		out.println("<h1> Your account is NPA!</h1>");  
	 if(a==0)
		out.println("<h1> Convert from substandard to standard asset</h1>");  
		
	else if(i==0 || c==0)	
		out.println("<h1>Pay all the past dues and service the interest then your account will be regularized</h1>");
	 
	 out.println("<h1>YOUR FICO SCORE:400</h1>");
	 out.println("<h1>NEED TO IMPROVE FICO SCORE</h1>");
	}
%>
 <!-- <img src="sx.jpg" alt="Diet image here!" id="diet">  -->
</center>

</body>
</html>