<%@page import="com.rs.fer.ex.NewsDao"%>
<%@page import="java.sql.*" %>
 

 
<%
        String id = request.getParameter("id");
      
        PreparedStatement pst;
        ResultSet rs;
        
        Connection con=NewsDao.getConnection();
        pst = con.prepareStatement("delete from jobopening where id = ?");
         pst.setString(1, id);
        pst.executeUpdate();  
        
        
        response.sendRedirect("admin.jsp");
        %>
        
        <script>
            
            alert("Record Deletee");
            
       </script>
