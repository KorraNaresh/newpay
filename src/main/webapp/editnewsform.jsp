<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="com.rs.fer.ex.NewsDao,com.rs.fer.ex.News"%>


	<%
	String id = request.getParameter("id");
	News u = NewsDao.getRecordById(Integer.parseInt(id));
	%>

	<h1>Edit Form</h1>
	<form action="editnews.jsp" method="post">
	
		<input type="hidden" name="id" value="<%=u.getId()%>" />
		
		<table>
			<tr>
				<td><label for="NewsEvents">NewsEvents:</label> <input
					type="text" name="newsevents" value="<%=u.getNewsevents()%>">

				</td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form>

</body>
</html>