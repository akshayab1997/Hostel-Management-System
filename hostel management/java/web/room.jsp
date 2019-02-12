

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
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


        
        
       <%
           try{
           String id =(String)session.getAttribute("uname");
            
             Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","root");
         Statement stmt = con.createStatement();
         
        ResultSet rs = stmt.executeQuery("select * from allot where trid = '"+id+"'");
        
  rs.next();
  String rno = rs.getString("rno");
  String mname = rs.getString("mname");
 
  %><div style="margin-left: 400px;"><%
  out.println("Room No  :  "+rno);
  out.println("<br></br>");
 
  out.println("Mess Name  : "+mname);
  out.println("<br></br>");
  
   %></div><%
   
            
           
           }catch(Exception e){
           
           out.println(e);
           }
      
       
       %>
    </body>
</html>
