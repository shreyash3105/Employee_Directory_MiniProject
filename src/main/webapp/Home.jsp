<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<style type="text/css">
/* .container {
	margin: 50px 100px 50px 100px;
} */
.slide {
  margin: 40px 70px 40px 70px;
}
.carousel-inner img {
  border-radius: 20px;
}
</style>
</head>
<body>

	<%
	response.addHeader("Cache-Control", "no-cache");
	response.addHeader("Cache-Control", "no-store");
	response.addHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	if (session.getAttribute("uname") == null) {
		response.sendRedirect("index.jsp");
	}
	%>
	<nav class="navbar navbar-light bg-info">
		<div class="container-fluid">
			<span class="navbar-brand mb-0 h1">Employment.Inc</span>
			<div class="">
				<a href="ShowServlet" class="btn btn-primary">Show Employee
					Details</a> <a href="LogOut" class="btn btn-primary">Log out</a>
			</div>
		</div>
	</nav>

	<!-- Carousel Start -->
	<div class="container">
	<div id="carouselExampleControls" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="https://source.unsplash.com/4000x1500/?laptop"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="https://source.unsplash.com/4000x1500/?office"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="https://source.unsplash.com/4000x1500/?laptop,office"
					class="d-block w-100" alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	</div>
	<!-- Carousel End -->

	<div class="container m-2"></div>
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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
		crossorigin="anonymous"></script>
</body>
</html>