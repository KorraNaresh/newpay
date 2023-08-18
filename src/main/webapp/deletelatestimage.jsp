<%@page import="com.rs.fer.ex.NewsDao"%>

<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

int id=Integer.parseInt(request.getParameter("id"));


Connection con=NewsDao.getConnection();
PreparedStatement ps = con.prepareStatement("delete from images where id=?");
ps.setInt(1,id);

int i=ps.executeUpdate();


%>

</body>
</html>