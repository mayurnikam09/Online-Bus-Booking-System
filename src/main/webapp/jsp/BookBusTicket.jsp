<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Form</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/cosmo/bootstrap.min.css" />
    <script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" ></script>

</head>
	<body>
		<div align="center">
    	<h1>--Book Bus Ticket--</h1><hr>
    	<div class="col-sm-4">
    	<form action="UpdateAllData" method="get">
 
      
		<div alight="left">
            <tr>
                <label class="form-label" >Bus Id</label>
                <input type="text" class="form-control" placeholder="Bus Id" value="${requestScope.bus.busid}" name="id" readonly="readonly"/>
            </tr>
         </div>
            
           <div alight="left">
          
            <tr>
                 <label class="form-label" >Bus No</label>
                <td><input type="text" class="form-control" placeholder="Bus No" value="${requestScope.bus.busno}" name="fname"/></td>
            </tr>
            </div>
            
            <div alight="left">
          
            <tr>
                 <label class="form-label" >Bus Name</label>
                <td><input type="text" class="form-control" placeholder="Bus Name" value="${requestScope.bus.busname}" name="mname"/></td>
            </tr>
            </div>
            
            <div alight="left">
          
            <tr>
                 <label class="form-label" >From City</label>
                <td><input type="text" class="form-control" placeholder="From City" value="${requestScope.bus.fromcity}" name="lname"/></td>
            </tr>
            </div>
            
            
            <div alight="left">
          
            <tr>
                 <label class="form-label" >To City</label>
                <td><input type="text" class="form-control" placeholder="To City" value="${requestScope.bus.tocity}" name="course"/></td>
            </tr>
            </div>
            
            <div alight="left">
          
            <tr>
                 <label class="form-label" >Station Name</label>
                <td><input type="text" class="form-control" placeholder="Station Name" value="${requestScope.bus.stationname}" name="gender"/></td>
            </tr>
            </div>
            
            <div alight="left">
          
            <tr>
                 <label class="form-label" >Bus Time</label>
                <td><input type="text" class="form-control" placeholder="Bus Time" value="${requestScope.bus.time}" name="mno"/></td>
            </tr>
            </div>
           
           <div alight="left">
          
            <tr>
                 <label class="form-label" >Bus Ticket</label>
                <td><input type="text" class="form-control" placeholder="Bus Ticket" value="${requestScope.bus.ticket}" name="address"/></td>
            </tr>
            </div>
            
           <div alight="left">
          
            <tr>
                 <label class="form-label" >Email</label>
                <td><input type="text" class="form-control" placeholder="Email" value="${requestScope.stud.email}" name="email"/></td>
            </tr>
            </div>
            
            
             <div alight="left">
          
            <tr>
                 <label class="form-label" >Registration Date</label>
                <td><input type="text" class="form-control" placeholder="Address" value="${requestScope.stud.date}" name="date"/></td>
            </tr>
            </div>
<br>
            <tr>
            <td colspan="2"><button type="submit" class="btn btn-info">UPDATE</button> </td>
            </tr>
            <br><br>
        </table>
    </form>
</div>
</body>
</html>