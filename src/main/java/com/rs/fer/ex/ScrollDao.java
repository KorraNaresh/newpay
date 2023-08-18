package com.rs.fer.ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ScrollDao {
	
	public static int save(Scroll u) {
		
		int status = 0;
		try {
			
			Connection con=NewsDao.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into scroll(scrollnews) values(?)");
			
			ps.setString(1, u.getScrollnews());
			
			status = ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
		
	}

	
	public static int update(Scroll u){  
	    int status=0;  
	    try{  
	    	Connection con=NewsDao.getConnection();
	        PreparedStatement ps=con.prepareStatement("update scroll set scrollnews=? where id=?");  
	        ps.setString(1,u.getScrollnews());  
	       
	        ps.setInt(2,u.getId());  
	        status=ps.executeUpdate();  
	      
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  

	public static int delete(Scroll u) {
		int status = 0;
		try {
			Connection con=NewsDao.getConnection();
			PreparedStatement ps = con.prepareStatement("delete from scroll where id=?");
			ps.setInt(1, u.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<Scroll> getAllRecords() {
		List<Scroll> list1 = new ArrayList<Scroll>();

		try {
			Connection con=NewsDao.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from scroll");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Scroll u = new Scroll();
				u.setId(rs.getInt("id"));
				u.setScrollnews(rs.getString("scrollnews"));
				
				list1.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list1;
	}

	public static Scroll getRecordById(int id) {
		Scroll u = null;
		try {
			Connection con=NewsDao.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from scroll where id=?");
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

}
