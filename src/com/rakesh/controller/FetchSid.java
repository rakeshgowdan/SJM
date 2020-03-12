package com.rakesh.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rakesh.dao.StudentFetch;
import com.rakesh.daoimple.StudentFetchImple;


@WebServlet("/FetchSid")
public class FetchSid extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public FetchSid() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		StudentFetch sf=new StudentFetchImple();
		List<String>li=sf.SidFetch();
		//System.out.println("from servlet"+li);
		HttpSession session = request.getSession(true);
		session.setAttribute("sid", li);
		request.setAttribute("sid", li);
		RequestDispatcher dd = request.getRequestDispatcher("table.jsp");
		dd.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
