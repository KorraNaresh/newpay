<%@page import="com.rs.fer.ex.JobopeningDao"%>
<jsp:useBean id="u" class="com.rs.fer.ex.Jobopening"></jsp:useBean>
<jsp:setProperty property="*" name="u" />


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	JobopeningDao.delete(u);
	response.sendRedirect("admin.jsp");
	%>

</body>
</html>