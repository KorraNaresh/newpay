<%@page import="com.rs.fer.ex.ScrollDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<jsp:useBean id="u" class="com.rs.fer.ex.Scroll"></jsp:useBean>
	<jsp:setProperty property="*" name="u" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%
	int i = ScrollDao.update(u);
	response.sendRedirect("admin.jsp");
	%>
</body>
</html>