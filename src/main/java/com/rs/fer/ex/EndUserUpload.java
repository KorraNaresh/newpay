package com.rs.fer.ex;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.sql.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

@WebServlet("/EndUserUpload")
@MultipartConfig
public class EndUserUpload extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String fathername = request.getParameter("fathername");
		String dob = request.getParameter("dob");

		int totalexperience = Integer.parseInt(request.getParameter("totalexperience"));
		int relativeexperience = Integer.parseInt(request.getParameter("relativeexperience"));

		String keyskills = request.getParameter("keyskills");
		String strengths = request.getParameter("strengths");
		String presentdesignation = request.getParameter("presentdesignation");
		String companyaddress = request.getParameter("companyaddress");
		String presentctc = request.getParameter("presentctc");
		String expectedctc = request.getParameter("expectedctc");
		String noticeperiod = request.getParameter("noticeperiod");

		response.setContentType("text/html;charset=UTF-8");

		PrintWriter out = response.getWriter();

		final Part filePart = request.getPart("file");
		// String bookId = request.getParameter("bookId");

		InputStream pdfFileBytes = null;
		final PrintWriter writer = response.getWriter();

		try {

			if (!filePart.getContentType().equals("application/pdf")) {
				out.println("<br/> Invalid File");
				return;
			}

			else if (filePart.getSize() > 1048576345) { // 2mb
				{
					writer.println("<br/> File size too big");
					return;
				}
			}

			pdfFileBytes = filePart.getInputStream(); // to get the body of the request as binary data

			final byte[] bytes = new byte[pdfFileBytes.available()];
			pdfFileBytes.read(bytes); // Storing the binary data in bytes array.

			LocalDate id = LocalDate.now();
			java.sql.Date sqlDate = java.sql.Date.valueOf(id);

			LocalDateTime localDateTime = LocalDateTime.now();
			LocalTime localTime = localDateTime.toLocalTime();

			java.sql.Time time = java.sql.Time.valueOf(localDateTime.toLocalTime());

			Connection con = NewsDao.getConnection();

			String query = "insert into applicationform(name,email,phone,fathername,dob,totalexperience,relevantexperience,keyskills,strengths,presentdesignation,companyadress,presentctc,expectedctc,noticeperiod,uploadresume,submitdate,submittime)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,'"+ localTime + "')";

			PreparedStatement st = con.prepareStatement(query);

			st.setString(1, name);
			st.setString(2, email);
			st.setString(3, mobile);
			st.setString(4, fathername);
			st.setString(5, dob);

			st.setInt(6, totalexperience);
			st.setInt(7, relativeexperience);

			st.setString(8, keyskills);
			st.setString(9, strengths);
			st.setString(10, presentdesignation);
			st.setString(11, companyaddress);
			st.setString(12, presentctc);
			st.setString(13, expectedctc);
			st.setString(14, noticeperiod);
			st.setBytes(15, bytes);
			st.setDate(16, sqlDate);

			int apply = st.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}

		/*
		 * Class.forName("com.mysql.cj.jdbc.Driver"); Connection
		 * con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root",
		 * "1234"); String
		 * query="insert into applicationform(name,email,phone,fathername,dob,totalexperience,relevantexperience,keyskills,strengths,presentdesignation,companyadress,presentctc,expectedctc,noticeperiod,uploadresume)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
		 * ; PreparedStatement st=con.prepareStatement(query); st.setString(1, name);
		 * st.setString(2, email); st.setString(3, mobile); st.setString(4, fathername);
		 * st.setString(5, dob);
		 * 
		 * st.setInt(6, totalexperience); st.setInt(7, relativeexperience);
		 * 
		 * st.setString(8, keyskills); st.setString(9, strengths); st.setString(10,
		 * presentdesignation); st.setString(11, companyaddress); st.setString(12,
		 * presentctc); st.setString(13, expectedctc); st.setString(14, noticeperiod);
		 * st.setBytes(15, bytes);
		 * 
		 * 
		 * int apply=st.executeUpdate();
		 * 
		 * 
		 * } catch(Exception e) { System.out.println(e); }
		 */

	}
}