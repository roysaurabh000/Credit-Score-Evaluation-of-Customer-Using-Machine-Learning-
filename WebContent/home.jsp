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
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Pragma","no-store");
response.setHeader("Expires","0");
if(session.getAttribute("fname")==null)
	response.sendRedirect("loginv.jsp");
%>
<!-- nav -->
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home.jsp">TASK SCHEDULAR</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">TASKS<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li class="" ><a href="sub.jsp">Task Tracker </a></li>
          <li class="" id="info"><a href="TaskAdd.jsp">+Task</a></li>
          <li class=""><a href="#"></a></li>
        </ul>
      </li>
   <!--    <li><a href="http://localhost:8080/don/LogoutServlet">Logout</a></li> -->
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user" ></span> <%=session.getAttribute("uname")%></a></li>
      <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>


<!-- <button class="btn btn-primary" id="btn"> Users</button> -->
<div id="div1"></div>
 <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Users</button>

  <!-- Modal --> 
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Database info</h4>
        </div>
        <div class="modal-body" id="btnn">
          <p id="p1"></p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</body>
</html>