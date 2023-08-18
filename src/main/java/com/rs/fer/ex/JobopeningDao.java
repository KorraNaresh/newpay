package com.rs.fer.ex;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

public class JobopeningDao {

	
	
	
	public static int save(Jobopening u) {
		int status = 0;
		try {

			
			
			Connection con = NewsDao.getConnection();

			PreparedStatement ps = con.prepareStatement(
					"insert into jobopening(phoneNumber,email,jobtitle,keyskills,experience,jobdescription)values(?,?,?,?,?,?)");

			ps.setString(1, u.getPhoneNumber());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getJobtitle());
			ps.setString(4, u.getKeyskills());
			ps.setString(5, u.getExperience());
			ps.setString(6, u.getJobDescription());
		
			
			

			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int update(Jobopening u) {
		
		int status = 0;
		try {
			Connection con = NewsDao.getConnection();
			PreparedStatement ps = con.prepareStatement(
					"update jobopening set phoneNumber=?, email=?,jobtitle=?,keyskills=?,experience=?,jobdescription=? where id=?");

			ps.setString(1, u.getPhoneNumber());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getJobtitle());
			ps.setString(4, u.getKeyskills());
			ps.setString(5, u.getExperience());
			ps.setString(6, u.getJobDescription());
			
		
			ps.setInt(7, u.getId());
			
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int delete(Jobopening u) {
		int status = 0;
		try {
			Connection con = NewsDao.getConnection();
			PreparedStatement ps = con.prepareStatement("delete from jobopening where id=?");

			ps.setInt(1, u.getId());

			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<Jobopening> getAllRecords() {
		List<Jobopening> list = new ArrayList<Jobopening>();

		try {
			Connection con = NewsDao.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from jobopening");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				Jobopening u = new Jobopening();
				u.setId(rs.getInt("id"));
				u.setPhoneNumber(rs.getString("phoneNumber"));
				u.setEmail(rs.getString("email"));
				u.setJobtitle(rs.getString("jobtitle"));
				u.setKeyskills(rs.getString("keyskills"));
				u.setExperience(rs.getString("experience"));
				u.setJobDescription(rs.getString("jobdescription"));

				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static Jobopening getRecordById(int id) {
		
		Jobopening u = null;
		try {
			Connection con = NewsDao.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from jobopening where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				u = new Jobopening();
				u.setId(rs.getInt("id"));
				u.setPhoneNumber(rs.getString("phonenumber"));
				u.setEmail(rs.getString("email"));
				u.setJobtitle(rs.getString("jobtitle"));
				u.setKeyskills(rs.getString("keyskills"));
				u.setExperience(rs.getString("experience"));
				u.setJobDescription(rs.getString("jobdescription"));

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}

	
	public static int all(EndUser u) {
	
	int status = 0;
	try {
		
		Connection con = NewsDao.getConnection();
	
		String query="insert into applicationform(name,email,phone,fathername,dob,totalexperience,relevantexperience,keyskills,strengths,presentdesignation,companyadress,presentctc,expectedctc,noticeperiod)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement st=con.prepareStatement(query);

	st.setString(1,u.getName());

	st.setString(2,u.getEmail());
	st.setString(3,u.getPhone());
	st.setString(4,u.getFathername());
	st.setString(5,u.getDob());
	
	st.setInt(6,u.getTotalexperience());
	st.setInt(7,u.getRelevantexperience());
	
	st.setString(8,u.getKeyskills());
	st.setString(9,u.getStrengths());
	
	st.setString(10,u.getPresentdesignation());
	st.setString(11,u.getCompanyaddress());
	st.setString(12,u.getPresentctc());
	st.setString(13,u.getExpectedctc());
	st.setString(14,u.getNoticeperiod());
	
	

		 int apply=st.executeUpdate();

		

		status = st.executeUpdate();
	} catch (Exception e) {
		System.out.println(e);
	}

	return status;
	
	
	}
	
	
	
	
	
}
