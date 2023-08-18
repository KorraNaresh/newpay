<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@page import="com.rs.fer.ex.JobopeningDao"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="u" class="com.rs.fer.ex.EndUser"></jsp:useBean>
	<jsp:setProperty property="*" name="u" />
	
	
	
	
	<%
	int i = JobopeningDao.all(u);
	
	if (i > 0) {
		response.sendRedirect("admin.jsp");
	} else {
		response.sendRedirect("jobopeningadd.jsp");
	}
	
	%>
	

</body>
</html>