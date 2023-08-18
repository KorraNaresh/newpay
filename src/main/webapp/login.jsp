<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Jsp</title>
</head>
<body>
	<%
	String uname=request.getParameter("uname");
	String pass=request.getParameter("pass");
	
Cookie cookie = new Cookie("uname",uname);
response.addCookie(cookie);
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","1234");
	
	PreparedStatement ps=con.prepareStatement("select username,password from adminlogin where username=? and password=?");
	ps.setString(1,uname);
	ps.setString(2,pass);
	
	ResultSet rs =ps.executeQuery();
	 if (rs.next()) {
	        // valid login
	        // redirect to a success page
	        response.sendRedirect("admin.jsp");
	        
	    } else {
	        // invalid login
	        // redirect to an error page
	        response.sendRedirect("adminlogin.html");
	    }

	
	
	
	
	
	
	%>
</body>
</html>