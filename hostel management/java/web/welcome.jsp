

<%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <div id="header">
				<div >
                                    <h1>Hostel management system</h1>
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
        <div>
            <%
try{

String n =(String)session.getAttribute("uname");
//out.println(n);
          
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","root");
         Statement stmt = con.createStatement();
         
        ResultSet rs = stmt.executeQuery("select * from sregister where sid = '"+n+"'");
        
  rs.next();
  String name = rs.getString("name");
  String email = rs.getString("email");
  String mobile= rs.getString("mobile");
  String address = rs.getString("address");
  
  out.println("Welcome  :  "+name);
  out.println("<br></br>");
  out.println("<br></br>");
  out.println("<br></br>");
  out.println("name  : "+name);
  out.println("<br></br>");
  out.println("email  : "+email);
  out.println("<br></br>");
  
  out.println("mobile  :"+mobile);
  out.println("<br></br>");
  out.println("address  :"+address);
  
   
    
    
}catch(Exception e){}
    
     %>
            
               <div style=" margin-left: 550px;">
            
            <a href="invoice.jsp">Check Your amount</a>
        </div>
            
            
        </div>
    </body>
</html>
