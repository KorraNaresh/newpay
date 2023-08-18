package com.rs.fer.ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EnduserDao {
	
		
	
	public static List<EndUser> getAllRecords() {
		List<EndUser> list = new ArrayList<EndUser>();
		

		try {
			Connection con=NewsDao.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from applicationform ");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				
				EndUser u = new EndUser();
				
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setEmail(rs.getString("email"));
	            u.setPhone(rs.getString("phone"));
	            u.setFathername(rs.getString("fathername"));
	            u.setDob(rs.getString("dob"));
	            u.setTotalexperience(rs.getInt("totalexperience"));
	            u.setRelevantexperience(rs.getInt("relevantexperience"));
	            u.setKeyskills(rs.getString("keyskills"));
                u.setStrengths(rs.getString("strengths"));
                u.setPresentdesignation(rs.getString("presentdesignation"));
                u.setCompanyaddress(rs.getString("companyadress"));
                u.setPresentctc(rs.getString("presentctc"));
                u.setExpectedctc(rs.getString("expectedctc"));
                u.setNoticeperiod(rs.getString("noticeperiod"));
                u.setSubmitdate(rs.getDate("submitdate"));
                u.setSubmittime(rs.getTime("submittime"));
                
        //  u.setUploadresume(rs.getByte("uploadresume"));
  
				
				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	



	public static Scroll getRecordById(int id) {
		Scroll u = null;
		try {
			Connection con=NewsDao.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from book where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new Scroll();
				u.setId(rs.getInt("id"));
				u.setScrollnews(rs.getString("scrollnews"));
			
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}


	
public static int save(EndUser u) {
		
		int status = 0;
		try {
			
			Connection con=NewsDao.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into applicationform (name) values (?)");
			
			ps.setString(1, u.getName());
			
			status = ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
		
	}






}