<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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

			<title>View Student Details</title>
		</head>

		<body>
			<div class="container">

				<h3 class="d-flex justify-content-center">Student Details</h3>
				<hr>
		
				<div class="row">
					<span class="h4 mb-4 col-3">Student Id :  </span>
					<span class = "h4 mb-4">${StudentUI.id}</span>
				</div>
		
				<br>
				<div class="row">
					<span class="h4 mb-4 col-3">First Name :  </span> 
					<span class = "h4 mb-4" >${StudentUI.firstName}</span>
				</div>
				<br>
		
				<div class="row">
					<span class="h4 mb-4 col-3">Last Name :  </span>
		 			<span class="h4 mb-4"> ${StudentUI.lastName}</span>
		 		</div>
		 		<br>
		 
		 		<div class="row">
					<span class="h4 mb-4 col-3">Course :  </span> 
					<span class="h4 mb-4" >${StudentUI.course}</span>
				</div>
				<br>
		
				<div class="row">
					<span class="h4 mb-4 col-3">Country :  </span>
					<span class="h4 mb-4">${StudentUI.country}</span>
				</div>
				<hr>
				
				<a href="/StudentManagement/student/list">Back to Students List</a>
			</div>
		</body>
	</html>