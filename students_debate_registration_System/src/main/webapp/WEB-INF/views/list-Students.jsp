<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
		<head>
			<!-- Required meta tags -->
			<meta charset="utf-8">
			<meta name="viewport"
				content="width=device-width, initial-scale=1, shrink-to-fit=no">

			<!-- Bootstrap CSS -->
			<link rel="stylesheet"
				href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
				integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
				crossorigin="anonymous">

			<title>Students Directory</title>
		</head>

		<body>
			<div class="container">
				<h3>Students Directory</h3>
				<hr>

					<!-- BUTTONS -->
					<div class="d-flex mb-3">
						<div class="p-2">
							<a href="/StudentManagement/student/showFormForAdd"
								class="btn btn-primary btn-sm mb-3"> Add Student </a>
						</div>

						<div class="p-2">
							<a href="/StudentManagement/student/print"
								class="btn btn-primary btn-sm mb-3 ">Print Details</a>
						</div>

						<div class="ms-auto p-2">
							<a href="/StudentManagement/logout"
								class="btn btn-primary btn-sm mb-3 "> Logout </a>
						</div>
					</div>

					<!-- TABLE -->
					<table class="table table-bordered table-striped">
						<thead class="thead-dark">
							<tr>
								<th>Student Id</th>
								<th>FirstName</th>
								<th>LastName</th>
								<th>Course</th>
								<th>Country</th>
								<th>Action</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach items="${studentjsp}" var="tempStudent">
								<tr>
									<td><c:out value="${tempStudent.id}" /></td>
									<td><c:out value="${tempStudent.firstName}" /></td>
									<td><c:out value="${tempStudent.lastName}" /></td>
									<td><c:out value="${tempStudent.course}" /></td>
									<td><c:out value="${tempStudent.country}" /></td>
									<td>
										<!-- Add button/links -->
										<a href="/StudentManagement/student/viewStudent?studentId=${tempStudent.id}"
											class="btn btn-info btn-sm"> View Details </a> 
										<a href="/StudentManagement/student/showFormForUpdate?studentId=${tempStudent.id}"
											class="btn btn-primary btn-sm"> Update </a>
										<a href="/StudentManagement/student/delete?studentId=${tempStudent.id}"
											class="btn btn-danger btn-sm"
											onclick="if (!(confirm('Are you sure you want to delete this Student?'))) return false">
											Delete </a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
			</div>
		</body>
	</html>



