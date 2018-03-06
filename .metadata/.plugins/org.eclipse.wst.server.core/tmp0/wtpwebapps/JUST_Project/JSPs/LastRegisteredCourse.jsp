<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/TLDs/LastRegistered.tld" prefix="LastReg"%>

<html lang="en">
<head>
<title>Registered Courses</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="navbar navbar-default "
		style="background-color: #2C3E50; color: white; margin-bottom: 1px; border-bottom: double 10px #ffcc00">
		<div class="container col-md-12">
			<div class="col-md-12 text-center ">
				<img
					src="https://services.just.edu.jo/stuservices/images/Logo_En.png"
					class="pull-left" style="margin-left: 50px;">
			</div>
		</div>
	</div>
	<LastReg:StudentHeader />
	<LastReg:Semester />

	<div style="border: 1px solid; margin-left: 20px; margin-right: 20px">
		<div class="alert alert-warning text-center"
			style="color: red; border: solid 1px red; margin: 20px">
			<strong>Dear Students: </strong> you should check you email before
			begining the add/drop process or regesieration .<br>In case of
			internal laboratory(zero hours) linked to course youm must register
			the laboratory
		</div>
		<div style="margin-right: 20px">
			<table id="table1" class="table table-bordered text-center"
				style="margin-left: 10px; border: solid 1px red">
				<caption class="text-center">Last Registered Courses</caption>

				<tbody style="margin-right: 20px">

					<tr
						style="background-color: black; color: white; border: 1px solid #2C3E50;">
						<td>Line Number</td>
						<td>Course Symbol</td>
						<td>Section</td>
						<td>Course Name</td>
						<td>Hours</td>
						<td>Days</td>
						<td>Time</td>
						<td>Hall</td>
						<td>Instructor</td>
						<td>Office</td>
						<td>Status</td>
					</tr>
					<LastReg:LastRegistered/>

				</tbody>
			</table>
		</div>
	</div>

	<div class="navbar-fixed-bottom text-center "
		style="background-color: #2C3E50; color: white; border-top: double 10px #ffcc00">

		<h5>Jordan University of Science and Technology, All Rights
			Reserved © Computer and Information Center</h5>

	</div>
</body>
</html>
</html>