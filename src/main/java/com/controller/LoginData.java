package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BusBookingDAO;
import com.dao.BusBookingDAOImpl;
import com.model.SignUp;

@WebServlet("/LoginData")
public class LoginData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BusBookingDAO dao;
	
	@Override
	public void init() throws ServletException {
		dao=new BusBookingDAOImpl();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		SignUp sign=dao.checkLogin(email, password);
		if(sign.getEmail().equals(email) && sign.getPassword().equals(password))
		{
			request.getRequestDispatcher("CustomerPage.html").forward(request, response);
			out.print(1);
		}
		else {
			request.getRequestDispatcher("jsp/").forward(request, response);
		}
	}
	
}
