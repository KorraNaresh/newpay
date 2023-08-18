<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.rs.fer.ex.JobopeningDao,com.rs.fer.ex.Jobopening"%>


	<%
	String id = request.getParameter("id");
	Jobopening u = JobopeningDao.getRecordById(Integer.parseInt(id));
	%>
	
	
	<h1>Edit Form</h1>
	<form action="editjobopening.jsp" method="post">
	
		<input type="hidden" name="id" value="<%=u.getId()%>" />
		
		<table>
			<tr>
				<td><label for="PhoneNumber">PhoneNumber:</label> <input
					type="text" name="phoneNumber" value="<%=u.getPhoneNumber()%>">
					</td>
					<td>
					<label for="Email">Email:</label> <input
					type="text" name="email" value="<%=u.getEmail()%>">

				</td>
				
			
				
				<td>
					<label for="JobTitle">JobTitle:</label> <input
					type="text" name="jobtitle" value="<%=u.getJobtitle()%>">

				</td>
				
				
				
				<td>
					<label for="KeySkills">Key Skills:</label> <input
					type="text" name="keyskills" value="<%=u.getKeyskills()%>">

				</td>
				
				
				<td>
					<label for="Year of Experience">Year of Experience:</label> <input
					type="text" name="experience" value="<%=u.getExperience()%>">

				</td>
				
				
				<td>
					<label for="Job Description">Job Description:</label> <input
					type="text" name="jobDescription" value="<%=u.getJobDescription()%>">

				</td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form>
</body>
</html>