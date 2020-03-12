package com.rakesh.daoimple;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import java.sql.*;
import com.rakesh.connect.SqlConnect;
import com.rakesh.dao.StudentFetch;
import com.rakesh.model.StudentDetails;

public class StudentFetchImple  implements StudentFetch{
	
	Connection con=null;

	@Override
	public List<String> SidFetch() {
		try {
		List<String>list=new ArrayList<String>();
		con=SqlConnect.dbConnector();
		Statement st=con.createStatement();
		String query="select sid from studentdetails";
		ResultSet rs=st.executeQuery(query);
		while(rs.next()) {
		    list.add(rs.getString("sid"));
		}
		
		System.out.println(list);
		return list;
		}
		catch (Exception e) {
	System.out.println("failed to fetch id's"+e);
		}
		return null;
		
		
		
	}

	@Override
	public StudentDetails getDetailsById(String sid) {
		
		try {
			StudentDetails s=new StudentDetails();
			con=SqlConnect.dbConnector();
			String sql="select * from studentdetails where sid=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, sid);
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
			   s.setSid(rs.getString(1));
			   s.setSname(rs.getString(2));
			   s.setRegNo(rs.getString(3));
			   s.setCourse(rs.getString(4));
			   s.setStatus(rs.getString(5));
			   s.setCourseJoined(rs.getString(6));
			   s.setCourseStart(rs.getString(7));
			   s.setCourseEnd(rs.getString(8));
			   s.setAttendencetotal(rs.getString(9));
			   s.setSem(rs.getString(10));
			   s.setCarriercourse(rs.getString(11));
			   s.setNonCarrierCourse(rs.getString(12));
			   s.setFeeStatus(rs.getString(13));
			   s.setEmail(rs.getString(14));
			   s.setMobileNo(rs.getInt(15));
			   }
			//System.out.println(s);
			return s;
			}
			catch (Exception e) {
		System.out.println("failed to fetch id values"+e);
			}
			return null;
	}

	@Override
	public String StatusFetch(String sid) {
		
		try {
			con=SqlConnect.dbConnector();
			String sql="select * from studentstatusdata where sid=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, sid);
			ResultSet rs=pst.executeQuery();
			String stat=null;
			while(rs.next()) {
			 stat=rs.getString(2);
			}
			//String s[]=stat.split(",");
			/*for(String st:s) {
				System.out.println(st);
			}*/
			return stat;
		}
		catch (Exception e) {
			System.out.println("status fetch error"+e);
		}
		return null;
	}

}
