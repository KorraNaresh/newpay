package com.rs.fer.ex;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class images {

	public static void main(String[] args) {
		try {
		    // Establish a connection to the database
		    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/admin", "root", "Naresh7995@");

		    // Read the image file into a byte array
		    File imageFile = new File("images/a.jpg");
		    FileInputStream fis = new FileInputStream(imageFile);
		    byte[] imageData = new byte[(int) imageFile.length()];
		    fis.read(imageData);

		    // Prepare an SQL statement to insert the image data into the database
		    String sql = "INSERT INTO imggallery (images) VALUES ()";
		    PreparedStatement pstmt = conn.prepareStatement(sql);

		    // Bind the byte array to the SQL statement parameter
		    pstmt.setBytes(1, imageData);

		    // Execute the SQL statement
		    pstmt.executeUpdate();

		    // Close the connection to the database
		    conn.close();
		} catch (SQLException | IOException e) {
		    e.printStackTrace();
		}

	}

}
