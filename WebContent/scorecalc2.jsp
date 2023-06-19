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

function check_Alpha1(letters1){
   var reg1 = / ^ [0-9] + $ /;
   if(reg1.test(letters1.ai.value) == false){
  alert("Invalid Income");
  letters1.ai.focus();
  return false;
   }}

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

<center> <h1 class="text-center" ><kbd > Calculate Your Credit Score (Formula)</kbd></h1></center>
</head>
<br><br>
<center> <img  src="login.jpg" width="560" height="330" > 
<body style="background-image:linear-gradient(#00FFFF,#87CEFA)">

<br>
<form  action="time2.jsp" onsubmit="check_Alpha1()" method="post">

				<div class="form-group input-group">
				<input name="ai" class="form-control" placeholder="Applicant income" type="number" required>
						
						</div> 
						
						<div class="form-group input-group">
				<input name="cai" class="form-control" placeholder="co-Applicant income" type="number" required>
						</div> 
						<div class="form-group input-group">
				<input name="la" class="form-control" placeholder="Loan-Amount" type="number" required>
						</div> 
										<div class="form-group input-group">
					<select class="form-control" id="g" name="g" required>
									<option value="">Education</option>
									<option value="75" > Graduate</option>
									<option value="-100">Not Graduate</option>	
										</select> 
								</div> 
					
							<div class="form-group input-group">
					<select class="form-control" id="ma" name="ma" required>
									<option  value="">Married</option>
									<option value="50" >Yes</option>
									<option value="25">No</option>	
										</select> 
								</div> 
									
									<div class="form-group input-group">
					<select class="form-control" id="d" name="d" required>
					
									<option  value="">Dependents</option>
									<option value="100" >0</option>
									<option value="75">1</option>
									<option value="50">2</option>
									<option value="0">3+</option>
								
									
								</select> 
								</div> 
									
								<div class="form-group input-group">
					<select class="form-control" id="loan" name="loan" required>
									<option value=""> Loan History </option>
									<option value="255" >Yes</option>
									<option value="-300">No</option>
									
								
									
								</select> 
								</div> 
								<div class="form-group input-group">
					<select class="form-control" id="pa" name="pa" required>
									<option  value="">Property Area </option>
									<option value="100" >Rural</option>
									<option value="140">Semi-urban</option>
									<option value="185">Urban</option>
									
								
									
								</select> 
								</div> 
								
								<div class="form-group input-group">
					<select class="form-control" id="y" name="y" required>
									<option value="">Loan Amount term(in years) </option>
									<option value="-120" >1 yr</option>
									<option value="-60">2 yr</option>
									<option value="0">3</option>
									<option value="60">4</option>
									<option value="120">5</option>
									<option value="180">6</option>
									<option value="240">7</option>
									<option value="240">8+</option>
									
								
									
								</select> 
								</div> 
								
							
								
								<div class="form-group input-group">
					<select class="form-control" id="se" name="se" required>
									<option  value="">Self employed</option>
									<option value="100" >Yes</option>
									<option value="50">No</option>									
								
									
								</select> 
								</div> 

             
					
								<input  type="submit" class="btn btn-success" value="CALCULATE">  
							</div> 
<br>
<br>






</body> </center>
</html>


