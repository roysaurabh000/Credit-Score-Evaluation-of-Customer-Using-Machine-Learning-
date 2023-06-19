<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="com.mysql.*"%>
<% %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String name = request.getParameter("name");
String roll = request.getParameter("roll");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shre","root","");
Statement st = con.createStatement();
String q = "insert into tabb values('"+name+"','"+roll+"')";
st.executeUpdate(q);
String g = "select * from tabb where name='"+name+"'";
ResultSet rs = st.executeQuery(g);

while(rs.next()){
out.println(rs.getString("name")+"  "+rs.getString("roll")+"<br>");
}
}
catch(Exception e){
e.printStackTrace();
}%>
</body>
</html>