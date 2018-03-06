<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/TLDs/RegisteredStudents.tld" prefix="RegIn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registered Student in Class</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<body>
	<div class="navbar navbar-default "
		style="background-color: #2C3E50; color: white; margin-bottom: 1px; border-bottom: double #ffcc00 3px">
		<div class="container col-md-12 text-center">
			<div class="col-md-12 text-center ">
				<img
					src="http://www.just.edu.jo/race/PublishingImages/just%20logo.png"
					class="pull-left" width="150" height="150">
				<div class="text-center  ">
					<br><br>
					<h2> Jordan University Of Science and Technology</h2>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div style="margin: 0px 40px">
		<table id="table1" class="table table-bordered text-center col-xs-8"
			style="border: solid 2px">
			<RegIn:ClassNum/>
			<tbody>
				<RegIn:CourseHeader/>
			</tbody>
			<tr style="color: red">
				<td>Student Name</td>
				<td>Registered Time</td>
			</tr>
			<RegIn:StudentRegistered/>

		</table>
	</div>
	<div class="navbar-fixed-bottom text-center "
		style="background-color: #2C3E50; color: white; border-top: solid 3px #ffcc00">

		<h5>Jordan University of Science and Technology, All Rights
			Reserved Â© Computer and Information Center</h5>

	</div>
</body>
</html>