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

<center> <h1 class="text-center" ><kbd > Calculate Your FICO Score</kbd></h1></center>
</head>
<br><br>
<center> <img  src="login.jpg" width="560" height="330" > 
<body style="background-image:linear-gradient(#00FFFF,#87CEFA)">

<br>
<form  action="time.jsp" method="post">

					<div class="form-group input-group">
					<select class="form-control" id="hist" name="hist" required>
									<option value="">Payment History </option>
									<option value="100" >Standard/No overdue</option>
									<option value="75">Overdue 30 days</option>
									<option value="50">Overdue 60 days</option>
									<option value="0">Overdue 90 days or more</option>
								
									
								</select> 
								</div> 
								
								<div class="form-group input-group">
					<select class="form-control" id="loan" name="loan" required>
									<option  value="">Past Loans </option>
									<option value="40" >1</option>
									<option value="70">2</option>
									<option value="80">3</option>
									<option value="85">4</option>
									<option value="65">more than 4</option>
								
									
								</select> 
								</div> 
								<div class="form-group input-group" >
					<select class="form-control" id="len" name="len" required>
									<option  value="">Length of Credit </option>
									<option value="30" >1yr</option>
									<option value="40">1yr-2yr</option>
									<option value="85">2yr-4yr</option>
									<option value="100">5yr or more</option>
								
									
								</select> 
								</div> 
								
								<div class="form-group input-group">
					<select class="form-control" id="typ" name="typ" required>
									<option  value="">Type of Credit </option>
									<option value="100" >House Loan</option>
									<option value="75">Personal</option>
									<option value="50">Business</option>
									<option value="10">Other</option>
								
									
								</select> 
								</div> 
								
								
								<div class="form-group input-group">
					<select class="form-control" id="case" name="case" required>
									<option  value="">Court Case(Regarding Loan) </option>
									<option value="0" >Yes</option>
									<option value="1">No</option>
									
								
									
								</select> 
								</div> 
								
								<div class="form-group input-group">
					<select class="form-control" id="as" name="as" required>
									<option  value="">Substandard Asset</option>
									<option value="0" >Yes</option>
									<option value="1">No</option>									
								
									
								</select> 
								</div> 

             
					
								<input  type="submit" class="btn btn-success" value="CALCULATE">  
							</div> 
<br>
<br>






</body> </center>
</html>


