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


@WebServlet("/SignUpData")
public class SignUpData extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	BusBookingDAO dao;
	@Override
	public void init() throws ServletException {
		dao= new BusBookingDAOImpl();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		
		SignUp sign=new SignUp();
		sign.setUsername(username);
		sign.setPassword(password);
		sign.setEmail(email);
		
		dao.saveSignUp(sign);
		request.getRequestDispatcher("jsp/SignUpSuccess.jsp").forward(request, response);
	}
}
