<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Scroll</title>
</head>
<body>
	<%@page import="com.rs.fer.ex.ScrollDao,com.rs.fer.ex.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<%
	List<Scroll> list = ScrollDao.getAllRecords();
	request.setAttribute("list", list);
	%>

	<table border="1" width="90%">
	<tr>
			<th>Id</th>
			
			<th>ScrollNews</th>
			</tr>
			<c:forEach items="${list}" var="u">  
		<tr>
			<td>${u.getId()}</td>
			<td>${u.getScrollnews()}</td>
			<td><a href="editscrollform.jsp?id=${u.getId()}">Edit</a></td>
			<td><a href="deletescroll.jsp?id=${u.getId()}">Delete</a></td>
		</tr>
		</c:forEach>
	</table>
	<br />
	<a href="scrollform.jsp">AddNewScroll</a>

</body>
</html>