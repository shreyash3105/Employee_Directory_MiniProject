<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="entities.Employee"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
	<style type="text/css">
	input{
	margin-bottom: 10px;}
	</style>
</head>
<body>
<nav class="navbar navbar-light bg-info">
		<div class="container-fluid">
			<span class="navbar-brand mb-0 h1">Employment.Inc</span> 
		</div>
	</nav>
	<div class="container m-5 row align-items-center" >
<div style="border : 2px black solid">
<div class="container m-4">
<form action="UpdateServlet" method="post">
<input type="hidden" name="id" value="<% out.print(request.getParameter("id"));%>"/>
<div class="row mb-3">
<label class="col-sm-2 col-form-label">Enter Name</label>
    <div class="col-sm-6">
<input type="text" name="name"  placeholder=" " class="form-control" required/>
</div>
</div>
<div class="row mb-3">
<label class="col-sm-2 col-form-label">Enter Department Name</label>
    <div class="col-sm-6">
<input type="text" name="dept"  placeholder=" " class="form-control" required/>
</div>
</div>
<div class="row mb-3">
<label class="col-sm-2 col-form-label">Enter Mobile No</label>
    <div class="col-sm-6">
<input type="text" name="mobileNo"  placeholder=" " class="form-control" required/>
</div>
</div>
<div class="row mb-3">
<label class="col-sm-2 col-form-label">Enter Email Id</label>
    <div class="col-sm-6">
<input type="email" name="emailId"  placeholder=" " class="form-control" required/>
</div>
</div>
<button type="submit" class="btn btn-primary">Update</button>
</form>
</div>
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