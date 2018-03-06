<%@page import="cache.SessionManager"%>
<%@page import="Session.DeRegisterServlet"%>
<%@page import="Session.ListenerRequest"%>
<%@page import="beans.vertex.ClassStudy"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/TLDs/Registertion.tld" prefix="reg"%>

<html lang="en">
<head>
<title>Registration JUST</title>
<meta charset="utf-8">
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
		style="background-color: #2C3E50; color: white; margin-bottom: 1px">
		<div class="container col-md-12">
			<div class="col-md-12 text-center ">
				<img
					src="https://services.just.edu.jo/sturegistration/images/Logo_En.png"
					class="pull-left" style="margin-left: 50px;">
			</div>
		</div>
	</div>

	<reg:RegHeader sessionId="12"></reg:RegHeader>

	<ul class="list-group nav text-left navbar-left col-xs-2 pull-left"
		style="margin-left: 20px; display: inline;">
		<li class="list-group-item active" name="list1">Register By :</li>
		<a href="#" class="list-group-item">Available
			Courses </a>
		<a href="../../JUST_Project/LogoutServlet"  class="list-group-item">Exit</a>
	</ul>

	<div class="container col-xs-9 pull-right text-left"
		style="margin-right: 40px; display: inline;">
		<div>
			<div class="alert alert-warning text-center" style="color: red;">
				<strong>Warning: </strong> don't use exit choice before you complete
				registration process
			</div>
			<div class="panel panel-heading" style="border: 1px solid red;">
				<!-- 				<reg:Semester />  -->
			</div>
			<div class="col-xs-12" style="border: solid 1px red;">
				<table id="table1" class="table table-bordered text-center "
					style="margin-right: 50px; margin-left: 5px;">
					<caption class="text-center">Registered Courses</caption>

					<thead id="RegHead"
						style="background-color: black; color: white; border: 1px solid #2C3E50;">
						<tr>
							<th>Line Number</th>
							<th>Course Symbol</th>
							<th>Hours</th>
							<th>Course Name</th>
							<th>Class ID</th>
							<th>Time</th>
							<th>Days</th>
							<th>Hall</th>
							<th>Instructor</th>
							<th>Credit</th>
						</tr>
					</thead>
					<tbody id="RegBody">
						<reg:RegCourse />
					</tbody>
				</table>
			</div>
			<br> <br>
			<div  id="reg">
				<div class="col-md-12" style="margin-top: 10px;">
					<div class="row ">
						<div class="col-xs-1 text-left pull-left"
							style="background-color: red;">Cancel</div>
						<div class="col-xs-1 text-left pull-left"
							style="background-color: yellow;">Closed</div>
						<div class="col-xs-1 text-left pull-left"
							style="background-color: green;">Available</div>
					</div>
					<form action="../../JUST_Project/RegisterationServlet"
						method="post">
						<div class="form-group btn-md pull-left" style="margin-top: 10px;">
							<button type="submit" class="btn btn-default" id="register">Register</button>
						</div>

						<table class="table table-bordered" id="AvailableCourses"
							style="border: solid 2px red">
							<thead>
								<tr style="background-color: black; color: white;">
									<th class="col-xs-3">Course</th>
									<th class="col-xs-1">Class Id</th>
									<th class="col-xs-3">Time</th>
									<th class="col-xs-2">Days</th>
									<th class="col-xs-3">Instructor</th>
									<th class="col-xs-1">Capacity</th>
									<th class="col-xs-1">Registered Student</th>
									<th class="col-xs-1">Choice</th>
								</tr>
							</thead>
							<tbody>
								<reg:AvailableCourse />
							</tbody>
						</table>
					</form>
				</div>
				<br> <br>
			</div>
		</div>
	</div>

	<div class="navbar-fixed-bottom text-center "
		style="background-color: #2C3E50; color: white; border-top: double 10px #ffcc00">

		<h5>Jordan University of Science and Technology, All Rights
			Reserved Â© Computer and Information Center</h5>

	</div>
	<script type="text/javascript">
		$("input:checkbox").click(
				function() {
					if ($(this).is(":checked")) {
						var group = "input:checkbox[class='"
								+ $(this).attr("class") + "']";
						$(group).prop("checked", false);
						$(this).prop("checked", true);
					} else {
						$(this).prop("checked", false);
					}
				});
		function colors() {
			var tb = document.getElementById('AvailableCourses');
			for (var i = 1, row; row = tb.rows[i]; i++) {
				if (row.cells.length == 8) {
					if (row.cells[5].innerText == row.cells[6].innerText)
						row.cells[1].style.background = 'yellow';
					if (row.cells[5].innerText > row.cells[6].innerText)
						row.cells[1].style.background = 'green';
				}
				if (row.cells.length == 7) {
					if (row.cells[4].innerText == row.cells[5].innerText)
						row.cells[0].style.background = 'yellow';
					if (row.cells[4].innerText > row.cells[5].innerText)
						row.cells[0].style.background = 'green';
				}
			}
		}
		function deleteRow(r) {
			var i = r.parentNode.parentNode.rowIndex;
			document.getElementById("table1").deleteRow(i);
		}
		function showReg() {
			$("#reg").show();
		}
	</script>
</body>
</html>