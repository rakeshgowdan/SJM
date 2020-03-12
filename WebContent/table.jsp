<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>List of Students</title>
<style>

</style>

</head>
<body>

	<div id="pricing" class="container">
	<br><br>
		<h3>List Of Students Enrolled For Courses</h3>
			<br><br>
				<table class="table table-bordered table-striped ">
					<tr class="header">
						<th scope="col"><b>Student ID</b></th>
						
						<th scope="col"><b>View</b></th>
					</tr>
					<%
						List<String> id = (List<String>) request.getAttribute("sid");
						//System.out.println("from jsp" + id);
						//System.out.println("from jsp" + request.getAttribute("sid"));
						if (id != null) {
							for (String s : id) {
					%>
					<tr>
						<td><%=s%></td>
						<td><form action="AppliedJob" method="post">
								<a href="viewDashboard?id=<%=s%>">YES</a>
							</form>
					</tr>
					<%
						}
						}
					%>
				</table>
			</div>
		
	
</body>
</html>