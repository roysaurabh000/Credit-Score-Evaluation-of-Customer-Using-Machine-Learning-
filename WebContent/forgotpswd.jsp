

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if("POST".equalsIgnoreCase(request.getMethod()))
    {
        if(request.getParameter("changePwd")!=null)
        {
            if(request.getParameter("changePwd").equals("Change Password"))
            {
                String uname = request.getParameter("uname");
                String passFP = request.getParameter("passFP");
                String repassFP = request.getParameter("repassFP");
                
                if((!uname.isEmpty()) && (!passFP.isEmpty()) && (!repassFP.isEmpty()))
                {
                    if(passFP.equals(repassFP))
                    {
                        Connection con = null;
                        PreparedStatement ps;
                        ResultSet rs;
                        String query;
                        
                        try
                        {
                            Class.forName("com.mysql.jdbc.Driver");
                        }
                        catch(Exception e)
                        {
                            System.out.println(e);
                            
                        }
                        try
                        {
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cred", "root","");
                            
                            	
                            query = "select * from reg where pan=? AND email=?";
                            ps = con.prepareStatement(query);
                            ps.setString(1, uname);
                            ps.setString(2, request.getParameter("email"));
                            
                            rs = ps.executeQuery();
                            
                            
                            if(rs!=null)
                            {
                                query = "update reg set pswd=? where email=?";
                                ps = con.prepareStatement(query);
                                ps.setString(1,passFP);
                                ps.setString(2,request.getParameter("email"));
                                ps.executeUpdate();
                                out.println("<br> Password Changed Successfully... Please <a href=\"home2.jsp\"> Click Here </a> to login... <br>");
                            }
                            else
                            {
                                out.println("Invalid Credentials provided!!!!");
                            }

                        }
                        catch(SQLException e)
                        {
                            System.out.println(e);
                        }
                        
                        
                        
                        
                    }
                }
            }
        }
    }
    
    
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
    </head>
    <body>
        <form action="" method="post">
        
            <input type="text" name="uname" placeholder="PAN" size="50">
            <br><br>
            <input type="text" name="email" placeholder="Email-ID" size="50">
            <br><br>
            
            <input type="password" name="passFP" placeholder="Enter your new Password" size="50">
            <br><br>
            <input type="password" name="repassFP" placeholder="Re-Enter your new Password" size="50">
            <br><br>            
            <input type="submit" name="changePwd" value="Change Password">
        </form>
    </body>
</html>

