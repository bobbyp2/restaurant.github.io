
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang = "en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
</head>
<body class="container-solid" background="restrobg.png"
	style="color: white;">
<h1 style="color: tomato; font-size: 50px;" colspan ="1">
	<center>
		WELCOME TO GESBK
				RESTAURANT</center>
</h1>
	<%
	
		String c_name = null;
		if (request.getSession().getAttribute("Current_User_Name")== null) {
			response.sendRedirect("login.jsp");
		} else {
			c_name = request.getSession().getAttribute("Current_User_Name").toString().toUpperCase();
		}
	%>
	<div class="container-fluid">
	 <div class="row">
    <div class = "col-sm-3">
    <a href="home.jsp">Home</a>
      </div>
        <div class="col-sm-3" style="font-size:20px;">
         <a href="adddetails.jsp">ADD Inventory</a>
       </div>
       <div class="col-sm-3" style="font-size:20px;">
      <a href="display.jsp">Edit And Display of Inventory</a>
       </div>
       <div class="col-sm-3" style="font-size:20px;">
         <div class="dropdown">
           <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"style="float:right"><%=c_name%>
           <span class="caret"></span></button>
            <ul class="dropdown-menu">
             <li class = "dropdown-item"><a href="#"onclick="changePassword();">Change Password</a></li>
             <li class = "dropdown-item"><a href="LogoutController">Logout</a></li>
            </ul>
         </div>
      </div>
   </div>
</div>


<b><h2>Welcome to Add  inventory Details</h2>
<form autocomplete="off" action="addproductController" method="post" style="margin-top:2%;margin-right:40%; margin-left:15%; color:white; font-size:20px;">
<div class = "form-group">
 <label for="exampleInputEmail1">Enter the inventory id:</label>
<input type="text" class = "form-control" placeholder = "Enter Product Id" name="inventoryid" />
</div>
<br/>
 <div class = "form-group">
<label>Enter inventory Name:</label>
<input type="text" class="form-control" placeholder = "Enter the Product Name" name="inventoryname" />
</div><br/>
<div class = "form-group">
<label> Enter creation date:</label>
<input type="Date" class="form-control" placeholder = "Enter Product Creation Date"name="creationdate" />
</div><br/>
<div class = "form-group">
<label> Enter Start date:</label>
<input type="Date" class="form-control" placeholder = "Enter Start Date" name="startdate" />
</div><br/>
<div class = "form-group">
<label> Enter End date:</label>
<input type="Date" class="form-control" placeholder = "Enter End Date" name="enddate" />
</div><br/>
<div class = "form-group">
<label> Enter Total Stock:</label>
<input type="text" class="form-control" placeholder = "Enter Total Stock" name="totalstock" />
</div><br/>
    <button type="submit" class="btn btn-info">Submit</button><br/>
 </form>
 </b>
</body>
</html>