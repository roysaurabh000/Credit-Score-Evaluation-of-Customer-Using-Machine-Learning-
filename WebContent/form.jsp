<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
		<head>			
			<link rel="stylesheet" href="Bootstrap.css">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
			
		</head>

		
	<body>
	  <div class="container"> 
		 <br> 
		 <h1 class="text-center"> <a href="task schedular.com"> TASK SCHEDULAR</a></h1>
		 <hr>
     		<div class="card bg-light">
				<article class="card-body mx-auto" style="max-width: 400px;">
					<h4 class="card-title mt-3 text-center">Create Account</h4>
					<p class="text-center">Get started with your free account</p>
					<p>
						 <a href="#" class="btn btn-primary btn-block"><i class="fa fa-facebook"></i> Sign in with <b>Facebook</b></a>
						 <a href="#" class="btn btn-info btn-block"><i class="fa fa-twitter"></i> Sign in with <b>Twitter</b></a>
						 <a href="#" class="btn btn-danger btn-block"><i class="fa fa-google"></i> Sign in with <b>Google</b></a>
					</p>
					<p class="divider-text">
					  <span class="bg-light">OR</span>
					</p>
				 <form action="Student.jsp" method="GET">
					<div class="form-group input-group"><!-- form-group// -->
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-user"></i> </span>
						</div>
								<input name="uname" class="form-control" placeholder="user-name" type="text">
					</div> 
					<div class="form-group input-group">
						<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
						</div>
					            <input name="email" class="form-control" placeholder="Email address" type="text">
					</div> 
							<div class="form-group input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"> <i class="fa fa-phone"></i> </span>
								</div>
						      		<input name="phone" class="form-control" placeholder="Phone number" type="text">
							</div>
							 <!-- form-group// -->
							<div class="form-group input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"> <i class="fa fa-building"></i> </span>
								</div>
								 <select class="form-control" id="occ" name="occ">
									<option>occupation </option>
									<option >Student</option>
									<option>Professional</option>
									<option>Ninja</option>
									<option>Mafia</option>
									<option value="DON">Don</option>
									
								</select> 
							</div> <!-- form-group end.// -->
							<div class="form-group input-group">
									<div class="input-group-prepend">
									<span class="input-group-text"> <i class="fa fa-lock"></i> </span>
								</div>
								<input name="pswd" class="form-control" placeholder="Create password" type="password">
							</div> <!-- form-group// -->
							<div class="form-group input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"> <i class="fa fa-lock"></i> </span>
								</div>
								<input name="cpswd" class="form-control" placeholder="Confirm password" type="password">
							</div> <!-- form-group// -->                                      
							<div class="form-group">
								<button type="submit" class="btn btn-primary btn-block" value="submit"> Create Account  </button>
							</div> <!-- form-group// -->      
							<p class="text-center">Have an account? <a href="">Log In</a> </p>                                                                 
				  </form>
				</article>
						</div> <!-- card.// -->

						</div> 
						<!--container end.//-->

						<br><br>
						<article class="bg-secondary mb-3">  
						<div class="card-body text-center">
							
									<p><a class="btn btn-warning" target="_blank" href=""> Task Scheduler.com  
									 <i class="fa fa-window-restore "></i></a></p>
						</div>
						<br><br>
					</article>
			</body>
</html>