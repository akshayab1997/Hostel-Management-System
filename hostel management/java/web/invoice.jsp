
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="header">
				<div id="logo">
					<a href="index.html"><img src="images/logo.png" alt="LOGO" height="112" width="118"></a>
				</div>
				<div id="navigation">
					<ul>
						<li>
							<a href="index.html">Home</a>
						</li>
						<li>
							<a href="about.html">About</a>
						</li>
						<li>
							<a href="rooms.html">Rooms</a>
						</li>
						
						<li>
							<a href="foods.html">Food</a>
						</li>
						<li>
							<a href="registration.jsp">Join Us</a>
						</li>
						<li>
							<a href="contact.html">Contact</a>
						</li>
					</ul>
				</div>
			</div>
        
        <div style=" margin-left: 1000px;">
            
            <a href="logout.jsp">Logout</a>
        </div>
           <%
try{

String n =(String)session.getAttribute("uname");
//out.println(n);
          
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","root");
         Statement stmt = con.createStatement();
         
        ResultSet rs = stmt.executeQuery("select * from invoice where pid = '"+n+"'");
        
  rs.next();
  String name = rs.getString("name");
  String rfees = rs.getString("rfees");
  String mfess= rs.getString("mfess");
  String time = rs.getString("time");
  
  %>
  <div style="margin-left: 300px">     <%
  out.println("name  : "+name);
  out.println("<br></br>");
  out.println("Room Fees  : "+rfees);
  out.println("<br></br>");
  
  out.println("Mess Fess  :"+mfess);
  out.println("<br></br>");
  out.println("Time  :"+time);
  
  %> </div><%
    
    
}catch(Exception e){}
    
     %>
          
     
     
               <div style=" margin-left: 550px;">
            
            <a href="payment.jsp">Go for payment</a>
        </div>
            
    </body>
</html>
