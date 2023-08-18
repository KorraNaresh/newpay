package com.rs.fer.ex;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/UpdateImage1")
@MultipartConfig
public class UpdateImage1 extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        InputStream inputStream = null;
        Connection connection = null;
        PreparedStatement statement = null;
        
       int id = Integer.parseInt(request.getParameter("id"));
        
        try {
            Part filePart = request.getPart("file");
            inputStream = filePart.getInputStream();
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin", "root", "1234");
            
            String sql =  "update images set image=? where id=?";
            
            statement = connection.prepareStatement(sql);
           
            statement.setBinaryStream(1, inputStream);
            statement.setInt(2, id);
            
            statement.executeUpdate();
            
            response.sendRedirect("admin.jsp");
            
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
            if (statement != null) {
                try {
					statement.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
            }
            if (connection != null) {
                try {
					connection.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
            }
        }
    

}

}