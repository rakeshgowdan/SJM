package com.rakesh.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rakesh.dao.StudentFetch;
import com.rakesh.daoimple.StudentFetchImple;
import com.rakesh.model.StudentDetails;


@WebServlet("/viewDashboard")
public class viewDashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public viewDashboard() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sid=request.getParameter("id");
		System.out.println(sid);
		StudentFetch sf=new StudentFetchImple();
		StudentDetails sd=sf.getDetailsById(sid);
		String value=sf.StatusFetch(sid);
		String val[]=value.split(",");
		for(String s1:val) {
			System.out.println(s1);
		}
		List<String> sl = Arrays.asList(val);
		List<String[]>l=new ArrayList<>();
		l.add(val);
		for(String[] s:l) {
			System.out.println(s);
		}
		//System.out.println(sd);
		//System.out.println("from controller"+value);
		request.setAttribute("value", sd);
		request.setAttribute("status", sl);
		RequestDispatcher dd = request.getRequestDispatcher("dashboard.jsp");
		dd.forward(request, response);
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
