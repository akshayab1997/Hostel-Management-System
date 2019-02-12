
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>staff</title>
    </head>
    <body>
                 <%
try{

String name =request.getParameter("name");
String email =request.getParameter("email");
String mob =request.getParameter("mob");
          
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","root");
         Statement stmt = con.createStatement();
         
         stmt.executeUpdate("insert into staff (name,email,mobile)values('"+name+"','"+email+"','"+mob+"')");
        
         out.println("inserted");
    
    
}catch(Exception e){}
    
     %>
    </body>
</html>
