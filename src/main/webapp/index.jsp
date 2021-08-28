<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
	
	<style type="text/css">
	.container {
	margin: 50px 100px 50px 100px;
}
	</style>
	
	
</head>
<body>
<nav class="navbar navbar-dark bg-info">
		<div class="container-fluid">
			<span class="navbar-brand mb-3 h1">Employment.Inc</span> 
		</div>
	</nav>
<div style="align-items:center">

</div>

<div class="container">
  <div class="row">
    <div class="col">
    </div>
    <div class="col-3">
<div class="container m-3">
<form action="LoginServlet" method="post">
<div class="row mb-3">
<label class="col2 col-form-label">Username</label>
    <div class="col-sm-10">
<input type="text" name="uname" required/>
</div>
</div>
<div class="row mb-3">
<label class="col2 col-form-label">Password</label>
<div class="col-sm-10">
<input type="password" name="upass" required/>
</div>
</div>
<button type="submit" class="btn btn-primary">Login</button>
</form>
</div>
    </div>
    <div class="col">
    </div>
  </div>
</div>

</body>
</html>