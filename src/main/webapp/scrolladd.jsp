<%@page import="com.rs.fer.ex.ScrollDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="com.rs.fer.ex.ScrollDao"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="u" class="com.rs.fer.ex.Scroll"></jsp:useBean>
	
	<jsp:setProperty property="*" name="u" />
	
	<%
	
	int i = ScrollDao.save(u);
	
	if (i > 0) {
		response.sendRedirect("admin.jsp");
	} else {
		response.sendRedirect("scrollform.jsp");
	}
	
	%>

</body>
</html>