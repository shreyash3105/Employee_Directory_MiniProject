<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="entities.Employee"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-light bg-info">
		<div class="container-fluid">
			<span class="navbar-brand mb-0 h1">Employment.Inc</span> 
			<a href="Home.jsp" class="btn btn-primary">Home</a>
		</div>
	</nav>
<div class="container">
<div class="container m-5">
    <a href="AddStudent.jsp" class="btn btn-primary">Add Employee Details</a>
    </div>
	<div class="container m-3">
		<table class="table table-info table-striped">
			<thead>
				<tr>
					<th>Employee Id</th>
					<th>Employee Name</th>
					<th>Department</th>
					<th>Mobile No</th>
					<th>Email Id</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<%
				ArrayList<Employee> list = (ArrayList<Employee>) request.getAttribute("liststud");
				for (Employee s : list) {
				%>
				<tr>
					<td>
						<%
						out.print(s.getId());
						%>
					</td>
					<td>
						<%
						out.print(s.getName());
						%>
					</td>
					<td>
						<%
						out.print(s.getDept());
						%>
					</td>
					<td>
						<%
						out.print(s.getMobileNo());
						%>
					</td>
					<td>
						<%
						out.print(s.getEmailId());
						%>
					</td>
				<td>
				<%int id =s.getId(); %>
				<a href="Update.jsp?id=<%out.print(s.getId()); %>" class="btn btn-primary">Update</a>
				<a href="delete?id=<%out.print(s.getId()); %>" class="btn btn-danger">Delete </a>
				</td>

				</tr>


				<%
				}
				%>
			</tbody>
		</table>
	</div>
</div>

<!-- Footer Start -->
	<!-- Footer -->
	<!-- Footer -->
	<footer class="bg-dark text-center text-white">
		<!-- Grid container -->
		<div class="container p-4">
			<!-- Section: Social media -->
			<!-- Section: Social media -->

			<!-- Section: Form -->
			<section class="">
				<form action="">
					<!--Grid row-->
					<div class="row d-flex justify-content-center">
						<!--Grid column-->
						<div class="col-auto">
							<p class="pt-2">
								<strong></strong>
							</p>
						</div>
						<!--Grid column-->

						<!--Grid column-->
						<div class="col-md-5 col-12">
							<!-- Email input -->
							<div class="form-outline form-white mb-4">
								<input type="email" id="form5Example2" class="form-control" />
								<label class="form-label" for="form5Example2"></label>
							</div>
						</div>
						<!--Grid column-->

						<!--Grid column-->
						<div class="col-auto">
							<!-- Submit button -->
							<button type="submit" class="btn btn-outline-light mb-4">
								Search</button>
						</div>
						<!--Grid column-->
					</div>
					<!--Grid row-->
				</form>
			</section>
			<!-- Section: Form -->

			<!-- Copyright -->
			<div class="text-center p-3"
				style="background-color: rgba(0, 0, 0, 0.2);">© 2021
				Copyright: Employment.Inc</div>
			<!-- Copyright -->
	</footer>
	<!-- Footer -->
	<!-- Footer -->
	<!-- <footer class="page-footer sticky-bottom font-small special-color-dark pt-4" style="background-color: #272727"> -->
	<!-- Footer Elements -->
	<!-- <div class="container"></div> -->
	<!-- Footer Elements -->

	<!-- Copyright -->
	<!-- <div class="footer-copyright text-center py-3" style="color: white">
        &copy; 2021 Copyright : Scribble
      </div> -->
	<!-- Copyright -->
	<!-- </footer> -->
	<!-- Footer End -->

</body>
</html>