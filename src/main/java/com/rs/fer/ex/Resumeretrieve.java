package com.rs.fer.ex;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.mysql.cj.protocol.a.BinaryRowFactory;

@WebServlet("/Resumeretrieve")
@MultipartConfig
public class Resumeretrieve extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			String bookId = request.getParameter("id") != null ? request.getParameter("id") : "NA";

			Connection con = NewsDao.getConnection();
			String query = "SELECT name,uploadresume FROM applicationform where id=?";

			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, bookId);

			ResultSet rs = ps.executeQuery();

			String name = null;

			if (rs.next()) {
				java.sql.Blob blob;

				name = rs.getString("name");
				blob = rs.getBlob("uploadresume");

				int iLength = (int) (blob.length());

				response.setHeader("Content-Disposition", "attachment; filename=" + name + " ");
				response.setContentType("application/pdf");
				response.setContentLength(iLength);

				ServletOutputStream op = response.getOutputStream();

				op.write(blob.getBytes(1, iLength));
				
				op.flush();
				op.close();

			} else {
				PrintWriter out = response.getWriter();
				out.println("no file exist");
			}

		} catch (Exception e) {
			System.out.println(e);
		}

	}
}