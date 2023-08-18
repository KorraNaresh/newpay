<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.rs.fer.ex.EnduserDao,com.rs.fer.ex.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- 

<form  method="get" action="FileReadPdf">
    <table>
    <tr>
    <td>Enter Book Id</td>
    <td>
    <input type="text" name="bookId" />
    </td>
    </tr>
    <tr>
    <td colspan="2">  <input  type="submit"  value="view" /></td></tr>
    </table>
    
     -->
    <%
	List<EndUser> list = EnduserDao.getAllRecords();
	request.setAttribute("list", list);
	%>

	<table border="1" width="90%">
	<tr>
		
			
			<th>ID</th>
			<th>Name</th>
			<th>email</th>
			<th>phone</th>
			<th>Resume</th>
	   
			
			
			
			</tr>
			<c:forEach items="${list}" var="u">  
		<tr>
			<td>${u.getId()}</td>
			<td>${u.getName()}</td>
			<td>${u.getEmail()}</td>
			<td>${u.getPhone()}</td>
			
			<td><a href="FileReadPdf?id=${u.getId()}">View</a></td>

			

		</tr>
		</c:forEach>
		
	</table>
	
	<br />
	
    
    
    
    
    
    <!-- 
    
    
    
create table endusertb(
id int primary key auto_increment,
name varchar(70),
email varchar(70),
phone varchar(10),
fathername varchar(70),
dob varchar(70),
totalexperience int,
relevantexperience int,
keyskills varchar(50),
strengths varchar(50),
presentdesignation varchar(50),
companyadress varchar(50),
presentctc varchar(50),
expectedctc varchar(50),
noticeperiod varchar(50),
uploadresume longblob


); 
    
    
     -->
</body>
</html>