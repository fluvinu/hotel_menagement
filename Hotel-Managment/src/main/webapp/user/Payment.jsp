<%@page import="org.jsp.entity.BookingDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel</title>
    <style>
      body{
        margin: 0;
        padding: 0;
        background-image: url("http://localhost:8080/Hotel-Managment/image/Owall-Hotel-Seoul-Exterior.jpeg");
        background-repeat:no-repeat;
        background-position: inherit;
        /* background-size: cover; */
        background-attachment: fixed;
        background-size: 100% 100%;
        /* height: 300px; */
        /* position: absolute; */
      }
      a {
        color: white;
      }
      .navbar {
        background-color: rgba(0, 0, 0, 0.5); /* Use RGBA with alpha value less than 1 for transparency */
      }
      .navbar-nav .nav-item a.nav-link {
        color: white; /* Set the text color to white */
      } 
      #btn{
        color: white;
      }
      h1,th,td {
        color: white;
      }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
        <nav class="navbar navbar-expand-lg navbar-light navbar-expand-md">
            <a href="" class="navbar-brand" style="color: white;"> <img src="https://w7.pngwing.com/pngs/927/770/png-transparent-hotel-logo-resort-suite-investment-banking-letter-b-angle-company-text.png" width="50px" style="border-radius: 10px;" alt="No img"> Hotel Booking System</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item active">
                  <a class="nav-link " href="Home2.html">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link " href="HotelList1.html">Hotels</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link " href="BookingHistory.html">Booking History</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="Payment.html">Payment</a>
                  </li>
              </ul>
            </div>
            <ul class="navbar-nav ml-auto"> <!-- Add ml-auto class to push "Contact" to the right -->
                <li class="nav-item">
                  <a class="nav-link" href="#">LogOut</a>
                </li>
              </ul>
        </nav>
        <%
        String message=request.getParameter("msg");
        BookingDetails details=(BookingDetails)session.getAttribute("bookingDetails");
        if(message.equals("payment") && details!=null){
        %>
        <center>
         <h1> Payment Has Done Successfully !! </h1>
         <h2> Your Bookin Detils </h2>
        </center>
        <div class="container">
        	<div class="row mb-3">
        		<div class="col">
        			<i> Hotel Name:</i>
        		</div>
        		<div class="col">
        			<i><%= details.getHotel().getHotelName() %></i>
        		</div>
        	</div>
        </div>
        <%} %>
<!-- Hotel Booking by user -->
<div class="container">
    <h1>Hotel List</h1>
    <form action="">
        <table class="table ">
            <thead>
              <tr>
                <!-- <th scope="col">Id</th> -->
                <th scope="col">Card Number</th>
                <th scope="col">Card Name</th>
                <th scope="col">Expire </th>
                <th scope="col">Price</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <!-- <th scope="row">1</th> -->
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
                <td>Otto</td>
              </tr>
            </tbody>
          </table>
    </form>
</div>
 
</body>
</html>