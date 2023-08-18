package com.rs.fer.ex;
import java.sql.*;

public class Example {
	public static void main(String[] args) {
		
		
		
        PreparedStatement pst;
        ResultSet rs;

        
        try {
        Connection con=NewsDao.getConnection();
        
          String query = "select jobtitle,keyskills,experience,jobdescription from jobopening  ";
          Statement st = con.createStatement();
          
            rs =  st.executeQuery(query);
            
//            String jobtitle=null;
//            String keyskills=null;
//            String experience=null;
//            String jobdescription=null;

            
                while(rs.next())
                {
                  System.out.println(rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4));
		
	}
        }
        catch(Exception e)
        {
        	System.out.println(e);
        }
}}
