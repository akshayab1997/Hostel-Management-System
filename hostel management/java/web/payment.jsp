

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <title>payment</title>
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
        <div style="margin-left: 350px;">
            
             <h1>your payment successful</h1>
        <%
           String id =(String)session.getAttribute("uname");
            
            
            out.println("Your transection id is :  "+id);
        
            
             
            
        %>
            
            
        </div>
        
        
       

        <form action="room.jsp" method="post" style="margin-left: 400px;">
            
            
            <input type="text" placeholder="enater tr id"/>
            
            <input type="submit" value="book room & mess"/>
        </form>

        
       
    </body>
</html>
