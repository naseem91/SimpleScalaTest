<%@page import="javax.swing.text.Document"%>
<%@page import="cache.SessionManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Login Registeration JUST</title>
<meta charset="utf-8">	<listener>
	
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body onload="colors()">
	<div class="navbar navbar-default "
		style="background-color: #2C3E50; color: white; margin-bottom: 1px; border-bottom: double 10px #ffcc00">
		<div class="container col-md-12">
			<div class="col-md-12 text-center ">
				<img
					src="https://services.just.edu.jo/sturegistration/images/Logo_En.png"
					class="pull-left" style="margin-left: 50px;">
			</div>
		</div>
	</div>
	<br>

	<div class="container">
		<form class=" form-horizontal col-sm-4"
			style="margin-top: 5px; margin-bottom: 20px; margin-right: 300px; margin-left: 350px; background-color: #2C3E50"
			action="../../JUST_Project/SessionServlet">
			<div class="form-group col-sm-12 pull-left">
				<label for="studid" class="control-label pull-left"
					style="color: white">Student No.</label> <br> <br> <input
					type="text" class="col-xs-1 form-control" id="studid" name="studid">
			</div>
			<div class="form-group col-sm-12 pull-left">
				<label for="pass" class="control-label pull-left"
					style="color: white">Password</label> <br> <br> <input
					type="password" class="col-xs-1 form-control " id="pass" name="pass">
			</div>
			<div class="form-group btn-md pull-right" style="margin-right: 145px">
				<button type="submit" class="btn btn-default "
					style="background-color: #ffcc00">Login</button>
			</div>
		</form>
	</div>
	<div class="navbar-fixed-bottom text-center "
		style="background-color: #2C3E50; color: white; border-top: double 6px #ffcc00">

		<h5>Jordan University of Science and Technology, All Rights
			Reserved © Computer and Information Center</h5>
	</div>


</body>
</html>