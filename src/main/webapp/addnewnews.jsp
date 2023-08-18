<%@page import="com.rs.fer.ex.NewsDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
    <%@ page import="java.sql.*,java.util.*,java.util.Date,java.time.LocalDate,java.time.LocalDateTime,java.time.LocalTime"%>

<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>News & Events</title>
    <link rel="stylesheet" href="addnewcareers.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
   
   <style>
   .rightx a{
font-color:white;
text-decoration: none;
font-size: 18px;

}
   
   </style>
<body>


  <div class="container">
    <div class="title">Update News & Events</div>
    <div class="content">
      <form method="POST" action="#">
        <div class="user-details">
         
          <div class="input-box">
            <label class="details">Date</label>
            <input type="date" name="newsdate" id="date" required>
          </div>
          
          <div class="input-box">
            <label class="details">News & Events</label>
            <textarea name="news" id="news" cols="30" rows="10"></textarea>
          </div>
         
            

        </div>
        <div  class="form-action-buttons">
       <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
               
        </div>
        <div class="right">
                            
                             <p><a href="admin.jsp">Click Back</a></p>
                            
                            
                         </div>
  
        
      </form>
    </div>





  </div>


<%
 
    if(request.getParameter("submit")!=null)
    {
    	
    	LocalDate id=LocalDate.now();
    	java.sql.Date sqlDate = java.sql.Date.valueOf( id );

    	LocalDateTime localDateTime = LocalDateTime.now();
    	LocalTime localTime = localDateTime.toLocalTime();
    	java.sql.Time time = java.sql.Time.valueOf(localDateTime.toLocalTime());
    	
    	String newsdate = request.getParameter("newsdate");
        String news = request.getParameter("news");
       
     
       
        PreparedStatement pst;
        ResultSet rs;
        
       Connection con =NewsDao.getConnection();
        pst = con.prepareStatement("insert into addnews(newsdate,newsevents,submitdate,submittime)values(?,?,?,?)");
        
        pst.setString(1, newsdate);
        pst.setString(2, news);
        pst.setDate(3, sqlDate);
        pst.setTime(4, time);
        pst.executeUpdate();          
        %>
    <script>  
        alert("Record Adddeddddd");    
    </script>
    <%  
    }
   %>



<script src="admin.js"></script>
</body>
</html>
