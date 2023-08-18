package com.rs.fer.ex;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 


@WebServlet("/FileReadPdf")
public class FileReadPdf extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         
     	
      String bookId = request.getParameter("id")!=null?request.getParameter("id"):"NA";
         
        ServletOutputStream sos;
       
        PreparedStatement pstmt=null;
         
        response.setContentType("application/pdf");
 
       response.setHeader("Content-disposition","inline; filename="+bookId+".pdf" );
 
 
         sos = response.getOutputStream();
         
 
           try {
        	   Connection con=NewsDao.getConnection();
      
            
          ResultSet rset=null;
          
                pstmt = con.prepareStatement("Select uploadresume from applicationform where id=?");
                
                pstmt.setString(1, bookId);
                
                rset = pstmt.executeQuery();
                if (rset.next())
                    sos.write(rset.getBytes("uploadresume"));
                else
                    return;
                 
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
     
        sos.flush();
        sos.close();
         
    }
    
 
 
}