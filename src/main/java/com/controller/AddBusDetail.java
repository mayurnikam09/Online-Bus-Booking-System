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
import com.model.BusDetail;


@WebServlet("/AddBusDetail")
public class AddBusDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BusBookingDAO dao;
	
	@Override
	public void init() throws ServletException {
		dao=new BusBookingDAOImpl();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String busno=request.getParameter("busno");
		String busname=request.getParameter("busname");
		String fromcity=request.getParameter("fromcity");
		String tocity=request.getParameter("tocity");
		String time=request.getParameter("time");
		String stationname=request.getParameter("stationname");
		long ticket=Long.parseLong(request.getParameter("ticket"));
		
		BusDetail bd=new BusDetail();
		bd.setBusno(busno);
		bd.setBusname(busname);
		bd.setFromcity(fromcity);
		bd.setTocity(tocity);
		bd.setTime(time);
		bd.setStationname(stationname);
		bd.setTicket(ticket);
		
		dao.saveBusDetail(bd);
		request.getRequestDispatcher("jsp/ShowBus.jsp").forward(request, response);
	}
}
