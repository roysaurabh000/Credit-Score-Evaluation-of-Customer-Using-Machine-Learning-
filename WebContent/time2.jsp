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




<h1 class="text-center" ><kbd > Credit Score related to ML</kbd></h1>
<!-- <h1><a href="" class="text-white bg-dark">YOUR CREDIT SCORE:</a></h1> -->

<center>
<%

int i = Integer.parseInt(request.getParameter("ai"));	
int j = Integer.parseInt(request.getParameter("cai"));	
int l = Integer.parseInt(request.getParameter("la"));
int ge = Integer.parseInt(request.getParameter("g"));
int m=Integer.parseInt(request.getParameter("ma"));
int a=Integer.parseInt(request.getParameter("pa"));
int d=Integer.parseInt(request.getParameter("d"));

int ln=Integer.parseInt(request.getParameter("loan"));
int y=Integer.parseInt(request.getParameter("y"));
int s=Integer.parseInt(request.getParameter("se"));
int cd=300;
y=0;
cd=cd+d+a+y+s+ln+ge+m;
int x=l*100-i-j;
if(x<10000)
	cd+=200;

if(cd>1000)
	cd-=350;
/* if(cd<700)
	cd-=50; */


	if(a!=0 && cd!=0)
	{

	out.println("<h1>YOUR CREDIT SCORE:"+cd+"</h1>");
	
	if(cd>700)
		out.println("<h1>YOU HAVE GOOD CREDIT SCORE!You have high chance of getting loan</h1><br>");
	else if(cd>500 && cd<700)
		out.println("<h1>You have slight low chance of getting loan!NEED TO IMPROVE CREDIT SCORE!</h1>");
	
	else
		out.println("<h1>You have low chance of getting loan!</h1>");
	}
	
%>
 <!-- <img src="sx.jpg" alt="Diet image here!" id="diet">  -->
</center>

</body>
</html>