

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
    </head>
    <body>
        <%
            String n =(String)session.getAttribute("uname");
            session.invalidate();
            %>
            <script> window.alert("LOGOUT SUCCESSFULLY");</script>
       
        <%
          String redirectedPage = "/parentPage";
          response.sendRedirect("index.html");
        
        
        %>
    </body>
</html>
