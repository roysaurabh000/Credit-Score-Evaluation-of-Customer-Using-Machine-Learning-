<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"
    import="com.mysql.*"%>
    
   
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
 <%try {
	 Class.forName("com.mysql.jdbc.Driver");
	 String fname=request.getParameter("Fname");
		String lname=request.getParameter("Lname");
		String email=request.getParameter("Email");
		String phone=request.getParameter("mobile");
		String bday=request.getParameter("bday");
		String pan=request.getParameter("pan");
		String pswd=request.getParameter("pswd");
	
	 out.println("xcs");
	 
		
		out.println("xcs");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cred","root","");
		out.println("xcs");
		Statement st=con.createStatement();
		
		
		
		//rno=request.getParameter("rno");
		out.println("xcs");
		int row=st.executeUpdate("insert into reg(fname,lname,email,mobile,bday,pan,pswd) values('"+fname+"','"+lname+"','"+email+"','"+phone+"','"+bday+"','"+pan+"','"+pswd+"')");
		//out.println(row);
		out.println("xcs");
		st.close();
		//rs.close();
		con.close();
		
		if(lname==""  || email=="" || phone==""  || bday==""  || pan==""  || pswd==""  )
		  response.sendRedirect("register.html");
		else
			response.sendRedirect("login.jsp");
		
		
		
	 
	
 }
	catch (Exception e) {
		// TODO Auto-generated catch block
		out.println(e);
	}
	// TODO Auto-generated method stub


 %>

