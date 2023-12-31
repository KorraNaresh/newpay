package com.rs.fer.ex;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/uploadImage1")
@MultipartConfig
public class ImageUploadServlet1 extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        InputStream inputStream = null;
        Connection connection = null;
        PreparedStatement statement = null;
        
        try {
            Part filePart = request.getPart("file");
            inputStream = filePart.getInputStream();
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin", "root", "1234");
            
            String sql =  "insert into images (image) values(?)";
            
            statement = connection.prepareStatement(sql);
            statement.setBinaryStream(1, inputStream);
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