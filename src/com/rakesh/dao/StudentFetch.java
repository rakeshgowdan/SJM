package com.rakesh.dao;

import java.util.List;

import com.rakesh.model.StudentDetails;

public interface StudentFetch {
	
	public List<String> SidFetch();
	public StudentDetails getDetailsById(String sid);
	public String StatusFetch(String sid);

}
