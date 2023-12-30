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

	<nav class="navbar navbar-expand-lg navbar-light bg-light" style="color: green;">
  <a class="navbar-brand" href="#" style="color: green;font-weight: bold;">Online Bus Booking System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="http://localhost:8081/OnlineBusBookingSystem/MainPage.html">Home <span class="sr-only">(current)</span></a>
      </li>
    </ul>
  </div>
</nav>
	
	<%!BusBookingDAO dao;

	public void jspInit() {

		dao=new BusBookingDAOImpl();

	}%>
	
	<%
	List<BusDetail>list=dao.getAllBusDetail();
	Iterator<BusDetail>itr=list.iterator();
	
	application.setAttribute("list", list);
	%>
	 <b><h1 style="background-color: coral;color: black;text-align: center">----Available Bus----</h1></b>
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
				<th>Update</th>
				<th>Delete</th>
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
					<td><a href="${pageContext.request.contextPath}/UpdateData?id=${bus.busid}" class="btn btn-primary" >EDITE</a></td>
					<td><a href="${pageContext.request.contextPath}/DeleteData?id=${bus.busid}" class="btn btn-danger">DELETE</a></td>
				</tr>
			</c:forEach>
		</table>
</body>
</html>