<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
    <%@ page import="java.sql.*,java.util.*,java.util.Date,java.time.LocalDate,java.time.LocalDateTime,java.time.LocalTime"%>

<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>Job Openings</title>
    <link rel="stylesheet" href="addnewcareers.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>


  <div class="container">
    <div class="title">Job Openings</div>
    <div class="content">
    
      <form method="POST" action="jobopeningadd.jsp">
        <div class="user-details">
         
          <div class="input-box">
            <label class="details">Phone Number</label>
            <input type="text" name="phoneNumber" id="phoneNumber" required>
          </div>
          
          <div class="input-box">
            <label class="details">Email</label>
            <input type="text" name="email" id="email" required>
          </div>
        
          <div class="input-box">
            <label class="details">JobTitle</label>
            <input type="text" name="jobtitle" id="JobTitle" required>
          </div>
          <div class="input-box">
            <label class="details">Key Skills</label>
            <input type="text" name="keyskills" id="keySkills" required>
          </div>
          <div class="input-box">
            <label class="details">Year of Experience</label>
            <input type="text" name="experience" id="experience" required>
          </div>
          <div class="input-box">
            <label class="details">Job Description</label>
            <textarea name="jobDescription" id="jobDescription" cols="30" rows="10"></textarea>
          </div>
         
            

        </div>
        <div  class="form-action-buttons">
         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
               
        </div>
        
        
      </form>
    </div>





  </div>





</body>
</html>
