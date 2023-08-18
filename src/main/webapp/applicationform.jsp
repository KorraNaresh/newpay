<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
*{
    padding: o;
    margin: 0;
    box-sizing: border-box;
}
body {
    font-family:  sans-serif;
    background-color: white;
    padding-top: 20px;
  }
h1{
    padding-top: 10px;
     text-align: center;
}
 h2{
 	margin: 20px;
 	text-align: center;
 	border-bottom: 1px solid #ddd;
 }
  form {
    width: 50%;
    margin: 0 auto;
    background-color: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    margin-bottom: 50px;
    padding-bottom: 70px;
  }
  
  input[type="text"], input[type="email"], input[type="text"],input[type="mobile"],input[type="date"]{
    display: block;
    width: 100%;
    padding: 10px;
    margin-bottom: 8px;
    border-radius: 5px;
    box-sizing: border-box;
    font-size: 15px;
    border: none;
    background-color: #EAE7E6;
    outline: none;
  }
  
  input[type="submit"] {
    background-color: rgb(15, 66, 88);
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    float: right;
  }
  
  label {
    font-weight:600px;
    font-weight: bold;
    display: block;
    margin-bottom: 10px;
  }
  
</style>
<body>


       
        <form action="EndUserUpload" method="post" enctype="multipart/form-data" onsubmit="send(); reset(); return false;">
        	<h2>Please Fill All Details To Get In Touch</h2>
          <label for="name">Name:</label>
          <input type="text" id="name" name="name" required>
          
          <label for="email">Email:</label>
          <input type="email" id="email" name="email" >

          <label for="mobile">Mobile:</label>
          <input type="mobile" id="mobile" name="mobile"  maxlength="10" minlength="10" >
          
          <label for="fathername">Father Name:</label>
          <input type="text" id="fathername" name="fathername" >
          
          <label for="dob">Date of Birth:</label>
          <input type="date" id="dob" name="dob" >
          
          <label for="text">Total Experience:</label>
          <input type="text" id="TotalExp" name="totalexperience" >

          <label for="text">Relative Experience:</label>
          <input type="text" id="RelativeExp" name="relativeexperience" >

          <label for="text">key Skills:</label>
          <input type="text" id="keySkills" name="keyskills" >

          <label for="text">Strengths:</label>
          <input type="text" id="Strengths" name="strengths" >

          <label for="text">Present Designation:</label>
          <input type="text" id="Designation" name="presentdesignation" >

          <label for="text">Company Address:</label>
          <input type="text" id="CompanyAddress" name="companyaddress" >

          <label for="text">Present CTC:</label>
          <input type="text" id="PresentCTC" name="presentctc" >

          <label for="text">Expected CTC:</label>
          <input type="text" id="ExpectedCTC" name="expectedctc" >

          <label for="text">Notice Period:</label>
          <input type="text" id="NoticePeriod" name="noticeperiod" >

          <label for="text">Upload Resume:</label>
          <input type="file" id="myFile" name="file" ><br><br>
          
         
          <input type="submit" value="Send Resume">
        </form>


        
        <!--FORM DATA TO GMAIL-->
 <script src="https://smtpjs.com/v3/smtp.js"></script>
<script>
var send = function() {
    Email.send({
    Host : "smtp.elasticemail.com",
    Username : "prabhasgautham123@gmail.com",
    Password : "24CC25FB4DFDC0977B1198ED8297C90655A8",
    To : 'nareshkorra123@gmail.com',
    From : "prabhasgautham123@gmail.com",
    Subject : "Update From Careers Page @ APT IT SOLUTIONS"",
    Body : "Name:" + document.getElementById("name").value 
    + "<br>Email:" + document.getElementById("email").value  
+"<br>PhoneNumber:" + document.getElementById("mobile").value
+ "<br>Father Name:" + document.getElementById("fathername").value 
+ "<br>Date of Birth:" + document.getElementById("dob").value 
+ "<br>Total Experience:" + document.getElementById("TotalExp").value 
+ "<br>Relative Experience:" + document.getElementById("RelativeExp").value 
+ "<br>key Skills:" + document.getElementById("keySkills").value 
+ "<br>Strengths:" + document.getElementById("Strengths").value 
+ "<br>Present Designation:" + document.getElementById("Designation").value 
+ "<br>Company Address:" + document.getElementById("CompanyAddress").value 
+ "<br>Present CTC:" + document.getElementById("PresentCTC").value 
+ "<br>Expected CTC:" + document.getElementById("ExpectedCTC").value 
+ "<br>Notice Period:" + document.getElementById("NoticePeriod").value 
+ "<br>Upload Resume:" + document.getElementById("myFile").value 


}).then(
  message => alert(message)
);
};
    </script>
      </body>
      </html>