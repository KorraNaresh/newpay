<%@page import="com.rs.fer.ex.NewsDao"%>
<%@page import="java.sql.*" %>
 

 
<%
        String id = request.getParameter("id");
   
        PreparedStatement pst;
        ResultSet rs;
        
        Connection con=NewsDao.getConnection();
        pst = con.prepareStatement("delete from addnews where id = ?");
         pst.setString(1, id);
        pst.executeUpdate();  
        
       
        %>
        
        <script>
            
            alert("Record Deletee");
            
       </script>
