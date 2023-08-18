package com.rs.fer.ex;

import java.sql.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

public class NewsDao {

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin", "root", "1234");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	public static int save(News u) {
		int status = 0;
		try {

			LocalDate id = LocalDate.now();
			java.sql.Date sqlDate = java.sql.Date.valueOf(id);

			LocalDateTime localDateTime = LocalDateTime.now();
			LocalTime localTime = localDateTime.toLocalTime();
			
			java.sql.Time time = java.sql.Time.valueOf(localDateTime.toLocalTime());
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("insert into addnews(newsdate,newsevents,submitdate,submittime) values(?,?,?,?)");
			ps.setDate(1, u.getNewsdate());
			ps.setString(2, u.getNewsevents());
			ps.setDate(3, u.getSubmitdate());
			ps.setTime(4, u.getSubmittime());

			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int update(News u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("update addnews set newsevents=? where id=?");
			ps.setString(1, u.getNewsevents());

			ps.setInt(2, u.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int delete(News u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete from addnews where id=?");
			ps.setInt(1, u.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<News> getAllRecords() {
		List<News> list = new ArrayList<News>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from addnews");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				News u = new News();
				u.setId(rs.getInt("id"));
				u.setNewsevents(rs.getString("newsevents"));

				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static News getRecordById(int id) {
		News u = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from addnews where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new News();
				u.setId(rs.getInt("id"));
				u.setNewsevents(rs.getString("newsevents"));

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}
}
