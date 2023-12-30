package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BusBookingDAO;
import com.dao.BusBookingDAOImpl;
import com.model.BusDetail;


@WebServlet("/ReadBusDetail")
public class ReadBusDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	BusBookingDAO dao;
	@Override
	public void init() throws ServletException {
		
		dao=new BusBookingDAOImpl();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		List<BusDetail> list=dao.getAllBusDetail();
		request.setAttribute("list", list);
		request.getRequestDispatcher("jsp/ShowBus.jsp").forward(request, response);
	}

}
