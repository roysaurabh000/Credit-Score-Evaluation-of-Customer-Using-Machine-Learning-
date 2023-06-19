<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.io.*" %>
     <%@ page import="java.lang.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="skyblue">
<div class="container">
  <div class="jumbotron">
 <h1>
  <%="WELCOME  "+ request.getParameter("uname") %>
  </h1>
  <br>
			<%
				int i = Integer.parseInt(request.getParameter("sub"));	
				int j = Integer.parseInt(request.getParameter("com"));	
				int l = Integer.parseInt(request.getParameter("stud"));
				j=j*2;
				int k = (i * j)/l;
						out.println("No of days required to complete all work:"+k);
			%>
			<br>
			
			<%	
				if(k>10)
					out.println("Increase your study hours.It's going to take more than 10 days");
				else
					out.println("whoopie !! It's going to over soon");
			%>
			
			<br>
			Current Time: <%= java.util.Calendar.getInstance().getTime() %>  
	</div>		
</div>
</body>
</html>