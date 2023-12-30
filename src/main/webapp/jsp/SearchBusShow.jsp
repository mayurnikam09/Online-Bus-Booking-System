<%@page import="com.model.BusDetail"%>
<%@page import="com.dao.BusBookingDAOImpl"%>
<%@page import="com.dao.BusBookingDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Data</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="css/table.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	
</head>
<body>

	<%!BusBookingDAO dao;

	public void jspInit() {

		dao=new BusBookingDAOImpl();

	}%>
	
	<%
	String fromcity=request.getParameter("fromcity");
	String tocity=request.getParameter("tocity");
	List<BusDetail>list=dao.SearchBusDetail(fromcity, tocity);
	Iterator<BusDetail>itr=list.iterator();
	
	application.setAttribute("list", list);
	%>
	 <b><h1 style="background-color: coral;color: black;text-align: center">----Available Bus----</h1></b>
	 <div class="container">
		<table class="table table-striped table-dark" style="text-align: center;">
			<tr>
				<th>BUS ID</th>
				<th>BUS NO</th> 
				<th>BUS NAME</th>
				<th>FROM CITY</th>
				<th>TO CITY</th>
				<th>STATION NAME</th>
				<th>TIME</th>
				<th>TICKET PRICE</th>
				<th>Book Ticket</th>
			</tr>

			<c:forEach var="bus" items="${applicationScope.list }">
				<tr>
					<td><c:out value="${bus.busid}"></c:out></td>
					<td><c:out value="${bus.busno}"></c:out></td>
					<td><c:out value="${bus.busname}"></c:out></td>
					<td><c:out value="${bus.fromcity}"></c:out></td>
					<td><c:out value="${bus.tocity}"></c:out></td>
					<td><c:out value="${bus.stationname}"></c:out></td>
					<td><c:out value="${bus.time}"></c:out></td>
					<td><c:out value="${bus.ticket}"></c:out></td>
					<td><a href="${pageContext.request.contextPath}/http://localhost:8081/OnlineBusBookingSystem/jsp/BookBusTicket.jsp?id=${bus.busid}" class="btn btn-primary" >BOOK</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>