<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
 
<style>
  

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
}
 
  
</script>



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
       <li class="" ><a href="feat.jsp">feature</a></li>
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
       <li><a href="#"><span class="glyphicon glyphicon-user" ></span> </a></li>
      <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
  </ul>
  </div>
</nav>




<center>

<h1 style="color:purple"> Generate your credit score </h1> </center>
<br>

<center> <img  src="credit.jpg" width="560px" height="330px" > </center>


<br>
<center><h2 style="color:purple">Please Enter your details : </h2></center>
<center>
<form action="time3.jsp" autocomplete="off" method="POST" id="myForm" name="google-sheet"  >

<div class="form-group input-group">
					<select class="form-control" id="user_input1" name="Gender" required>
									<option  value="">Gender</option>
									<option value="Male" >Male</option>
									<option value="Female">Female</option>
									<option value="Other">Other</option>								
								
									
								</select> 
								</div> 
								
								
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
									<option value="50" > Graduate</option>
									<option value="0">Not Graduate</option>	
										</select> 
								</div> 
					
							<div class="form-group input-group">
					<select class="form-control" id="ma" name="ma" required>
									<option  value="">Married</option>
									<option value="50" >Yes</option>
									<option value="30">No</option>	
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
									<option value="250" >Yes</option>
									<option value="-100">No</option>
									
								
									
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
									<option value="-100" >1 yr</option>
									<option value="-35">2 yr</option>
									<option value="50">3</option>
									<option value="80">4</option>
									<option value="100">5</option>
									<option value="130">6</option>
									<option value="100">7</option>
									<option value="100">8+</option>
									
								
									
								</select> 
								</div> 
								
							
								
								<div class="form-group input-group">
					<select class="form-control" id="se" name="se" required>
									<option  value="">Self employed</option>
									<option value="100" >Yes</option>
									<option value="50">No</option>									
								
									
								</select> 
								</div> 
					
					


 <input  type="submit"  value="Submit"  class="button button1" onmouseover="mouseOver()" onmouseout="mouseOut()" id="demo"/> 

   </form>
        
     <script type="text/javascript">
        
  function myFunction() {
  document.getElementById("innerHTM").innerHTML = "Thank You . Keep Visiting us.";
  
}  

</script>
   
    
          <!-- <script>
            const scriptURL = 'https://script.google.com/macros/s/AKfycbzeJrZpN_v5AEbthv4y7ru1PQKIMpaOt6KjHgCLQ00SVVQSGnA/exec'
            const form = document.forms['google-sheet']
          
            form.addEventListener('submit', e => {
              e.preventDefault()
              fetch(scriptURL, { method: 'POST', body: new FormData(form)})
                .then(response => alert("Credit Worthiness:Good/Bad"))
                .catch(error => console.error('Error!', error.message))
              
            
                  
                
            })
             
             
          </script> -->

       
</body> 
</html>

