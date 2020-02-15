<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- Plugin CSS -->
<link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet"
	type="text/css">

<!-- Custom styles for this template -->
<link href="/css/freelancer.min.css" rel="stylesheet">
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- Plugin CSS -->
<link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet"
	type="text/css">

<!-- Custom styles for this template -->
<link href="css/freelancer.min.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dostava</title>
</head>
<body>

	<c:if test="${(empty user) || (user.roll != 'dostavljac') }">
		<h3>Forbiden</h3>
		<a href="/EasyFood/index.jsp">Pocetna</a>
	</c:if>

	<c:if test="${user.roll == 'dostavljac' }">

		<nav
			class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase"
			id="mainNav">
		<div class="container">
			<button
				class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded"
				type="button" data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fa fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">


					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
						href="/EasyFood/logout">Izloguj se</a></li>


				</ul>

			</div>
		</div>
		</nav>

		<section id="contact">
		<div class="container" style="margin-top: 150px;">
			<div class="row">

				<table class="table table-bordered">
					<thead>
						<tr>
							<th scope="col">Id narudzbine</th>
							<th scope="col">Vrednost</th>
							<th scope="col">Adresa</th>
							<th scope="col">Kontakt tel</th>
							<th scope="col">Datum</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach items="${dostave}" var="n" varStatus="loop">
							<tr>
								<td>${n.narudzbina.idNarudzbina}</td>
								<td>${n.narudzbina.ukupno}</td>
								<td>${n.narudzbina.adresa}</td>
								<td>${n.narudzbina.korisnik.tel}</td>
								<td>${n.narudzbina.datum}</td>

							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
		</section>



	</c:if>



</body>
</html>