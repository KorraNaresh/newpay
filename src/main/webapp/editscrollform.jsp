<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="com.rs.fer.ex.ScrollDao,com.rs.fer.ex.Scroll"%>
	<%
	String id = request.getParameter("id");
	Scroll u = ScrollDao.getRecordById(Integer.parseInt(id));
	%>
	<h1>Edit Form</h1>
	<form action="editscroll.jsp" method="post">
		<input type="hidden" name="id" value="<%=u.getId()%>" />
		<table>
			<tr>
				<td><label for="ScrollNews">ScrollNews:</label>
				<td><input type="text" name="scrollnews"
					value="<%=u.getScrollnews()%>" /></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form>

</body>
</html>