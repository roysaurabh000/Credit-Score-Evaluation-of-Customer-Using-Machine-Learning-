<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*" import="com.mysql.*"%>

<%!Connection con,con1;
    Statement st,st1;
    ResultSet rs;
    String name,rno;
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Pragma","no-store");
response.setHeader("Expires","0");
%>

<%try {
		
		String email=request.getParameter("email");
		String pswd=request.getParameter("pswd");
		
		Class.forName("com.mysql.jdbc.Driver");
		
		con1=DriverManager.getConnection("jdbc:mysql://localhost/cred","root","");
		st1=con1.createStatement();
		rs=st1.executeQuery("select * from reg where email='"+email+"'");
		
	 
	
	if(rs.next())
	{
		if(rs.getString(8).equals(pswd))
		{
		out.println("WELCOME "+email+" ");
		//request.setAttribute("uname",uname);
		//RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
		//rd.forward(request, response);
		session.setAttribute("fname",email);//creating cookie object  
			    //adding cookie in the res  
	
		response.sendRedirect("home2.jsp");
		}
		//out.println(e+" ");out.println(p+" ");out.println(o+" ");//out.println(n+" ");
		//out.println(ps+"<br>");
		else
		{
			 out.println("<br> Your password is incorrect,Did you FORGOT your password? <a href=\"forgotpswd.jsp\"> Change password </a> to login... <br>");
		}
			
	}
	else
	{
		 out.println("<br> It seems like you have not registered.Please,  <a href=\"register.html\">Sign Up </a> to login... <br>");
	}
 }
	catch (Exception e) {
		// TODO Auto-generated catch block
		out.println(e);
	}
	// TODO Auto-generated method stub


 %>
</body>
</html>
