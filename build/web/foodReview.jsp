<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team06:ROMS-FoodReview</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <%@include file="header.html" %>
    </head>
    <body>
        <h3 style="color:maroon;padding-left: 30px;padding-top: 10px"><b>Food Review</b></h3>
        
        <div class="card-body" style="padding-left: 170px;padding-top: 30px" >
      <form action="foodReview" method="post">
      <label for="food" style="padding-right: 1140px"><b>Food:</b></label>
         <%
        try
        {
          Connection conn;
          Class.forName("com.mysql.jdbc.Driver");
          conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/roms","root","");
          Statement stmt = conn.createStatement();
          //String us = (String)session.getAttribute("user");
          String sl = "select * from foodlist";
          ResultSet rs = stmt.executeQuery(sl);
          if(rs.next())
          {
          %>
      <select class="form-control" name="name" style="width:500px;border-color: maroon">
    <option value="0" selected>Select one burger to review</option>
<%
while(rs.next())
{
String name = rs.getString(2); 
%>
<option value="<%=name %>"><%=name %></option>
<%
}
%>
</select>
<%
}
}catch(Exception e)
{ 
out.println(e);
}
%>
    
    <br><label style="padding-right: 1140px"><b>Comments:</b></label>
    <textarea class="form-control" style="border-color: maroon;width:500px" 
              placeholder="Enter your comments" name="comment" required></textarea>
    
    <br><label style="padding-right: 1140px"><b>Rate/5:</b></label>
    <input class="form-control" style="border-color: maroon;width:500px" 
    type="text" placeholder="Enter your food rate out of 5" name="rate" required>
    
   <br><label style="padding-right: 1140px"><b>Date/Time</b></label>
    <input class="form-control" type="datetime-local" name="date" style="border-color: maroon;width:500px">
 
   <br><button style="background-color: maroon;color:white;" type="submit" value="submit">
							SUBMIT
						</button>
    <!--<a href="foodList" class="btn" style="background-color: maroon;color:white;">ADD FOOD</a>-->
      </form>
  </div>
    </body>
</html>
