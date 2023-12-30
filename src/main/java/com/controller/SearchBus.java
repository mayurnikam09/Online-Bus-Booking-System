package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BusBookingDAO;
import com.dao.BusBookingDAOImpl;
import com.model.BusDetail;


@WebServlet("/SearchBus")
public class SearchBus extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BusBookingDAO dao;
	@Override
	public void init() throws ServletException {
		dao=new BusBookingDAOImpl();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String fromcity=request.getParameter("fromcity");
		String tocity=request.getParameter("tocity");
		
		System.out.println(fromcity);
		System.out.println(tocity);
		ArrayList<BusDetail>list=new ArrayList<BusDetail>();
		List<BusDetail>bus=dao.SearchBusDetail(fromcity, tocity);
		list.addAll(bus);
		//out.print(list);
		//Iterator<BusDetail>itr=list.iterator();
		
		request.getRequestDispatcher("jsp/SearchBusShow.jsp").forward(request, response);
	}

}
