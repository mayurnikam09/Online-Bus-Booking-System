<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Bus</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/cosmo/bootstrap.min.css" />
    <script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" ></script>

</head>
	<body style="background-image: url('img/addbus.jpg');background-repeat: no-repeat;width: 100%">
		<div align="center">
    	<h1 style="color: green;">--Add Bus Information--</h1><hr>
    	<div class="col-sm-4">
    	<form action="http://localhost:8081/OnlineBusBookingSystem/AddBusDetail" method="get">
 
      
           <div alight="left">
          
            <tr>
                 <label class="form-label" >Bus No</label>
                <td><input type="text" class="form-control" placeholder="Bus No" name="busno"/></td>
            </tr>
            </div>
            
            <div alight="left">
          
            <tr>
                 <label class="form-label" >Bus Name</label>
                <td><input type="text" class="form-control" placeholder="Bus Name" name="busname"/></td>
            </tr>
            </div>
            
            <div alight="left">
          
            <tr>
                 <label class="form-label" >From City</label>
                <td><input type="text" class="form-control" placeholder="From City" name="fromcity"/></td>
            </tr>
            </div>
            
            
            <div alight="left">
          
            <tr>
                 <label class="form-label" >To City</label>
                <td><input type="text" class="form-control" placeholder="To City"  name="tocity"/></td>
            </tr>
            </div>
            
            <div alight="left">
          
            <tr>
                 <label class="form-label" >Time</label>
                <td><input type="text" class="form-control" placeholder="Time"  name="time"/></td>
            </tr>
            </div>
            
            <div alight="left">
          
            <tr>
                 <label class="form-label" >Station Name</label>
                <td><input type="text" class="form-control" placeholder="Station Name"  name="stationname"/></td>
            </tr>
            </div>
           
           <div alight="left">
          
            <tr>
                 <label class="form-label" >Ticket</label>
                <td><input type="text" class="form-control" placeholder="Ticket" name="ticket"/></td>
            </tr>
            </div>
            
<br>
            <tr>
            <td colspan="2"><button type="submit" class="btn btn-info">ADD BUS</button> </td>
            </tr>
            <br><br>
        </table>
    </form>
</div>
</body>
</html>