<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>



<!DOCTYPE html>
<html lang="en">
<head>
<title>Multi Agency - Mini Project</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900"
	rel="stylesheet">

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="main.jsp"><span>MULTI Agency</span></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="main.jsp" class="nav-link">Home</a></li>
					<li class="nav-item active"><a href="about.jsp" class="nav-link">About</a></li>
					<li class="nav-item"><a href="stats.jsp" class="nav-link">Stats</a></li>
					<li class="nav-item"><a href="team.jsp" class="nav-link">Team</a></li>
					<li class="nav-item"><a href="player.jsp" class="nav-link">Player</a></li>
					<li class="nav-item cta"><c:choose>
							<c:when test="${loginuser != null }">
								<a href="logout.mc" class="nav-link">${loginuser.name }</a>
							</c:when>
							<c:otherwise>
								<a href="login.mc" class="nav-link">LOGIN</a>
							</c:otherwise>
						</c:choose></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->

	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('images/baseballsmoking.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate pb-5 text-center">
					<h1 class="mb-3 bread">About Us</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="main.jsp">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>About us <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>


	<section class="ftco-section services-section bg-light">
		<div class="container">
			<div class="row d-flex">
				<div
					class="col-md-6 col-lg-3 d-flex align-self-stretch ftco-animate">
				</div>

				<div
					class="col-md-6 col-lg-3 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services d-flex">
						<div class="icon">
							<span class="flaticon-lockers"></span>
						</div>
						<div class="media-body">
							<h3 class="heading mb-3">Professional Player</h3>
							<p>Professional Baseball Player Agency</p>
						</div>
					</div>
				</div>

				<div
					class="col-md-6 col-lg-3 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services d-flex">
						<div class="icon">
							<span class="flaticon-strategy"></span>
						</div>
						<div class="media-body">
							<h3 class="heading mb-3">Analysis</h3>
							<p>Analysis Game</p>
						</div>
					</div>
				</div>
				<div
					class="col-md-6 col-lg-3 d-flex align-self-stretch ftco-animate">
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-no-pt ftco-no-pb ftco-counter img"
		id="section-counter">
		<div class="container">
			<div class="row d-flex">
				<div class="col-md-6 d-flex">
					<div class="img d-flex align-self-stretch"
						style="background-image: url(images/kbhhr.jpg); width:500px;"></div>
				</div>
				<div class="col-md-6 pl-lg-5 py-5">
					<div class="row justify-content-start pb-3">
						<div class="col-md-12 heading-section ftco-animate">
							<h2 class="mb-4">Agency Mission &amp; Vision</h2>
							<p>ALL STAR GAME</p>
							<p>GOLDEN GLOVE</p>
							<p>FAN FESTA</p>
							<p>EVENT</p>
							<p>NATIONAL ATHLETE</p>
							<p>CHEER TEAM</p>
							<p>RECORD</p>
							<p>GLOBAL</p>
							<p>
								<a href="uregister.jsp" class="btn btn-primary py-3 px-4">REGISTER</a>
								<a href="main.jsp" class="btn btn-black py-3 px-4">HOME</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



	<section class="ftco-section ftco-no-pt ftco-no-pb ftco-counter img"
		id="section-counter">
		<div class="container">
			<div class="row d-flex">

				<div class="col-md-6 pl-lg-5 py-5">
					<div class="row justify-content-start pb-3">
						<div class="col-md-12 heading-section ftco-animate">
							<h2 class="mb-4">About the Agency</h2>
							<p>About our Agency...</p>
						</div>
					</div>
					<div class="row">
						<div
							class="col-md-6 justify-content-center counter-wrap ftco-animate">
							<div class="block-18 text-center py-3 bg-light mb-4">
								<div class="text">
									<strong class="number" data-number="56">0</strong> <span>Player</span>
								</div>
							</div>
						</div>
						<div
							class="col-md-6 justify-content-center counter-wrap ftco-animate">
							<div class="block-18 text-center py-3 bg-light mb-4">
								<div class="text">
									<strong class="number" data-number="2">0</strong> <span>Staff</span>
								</div>
							</div>
						</div>
						<div
							class="col-md-6 justify-content-center counter-wrap ftco-animate">
							<div class="block-18 text-center py-3 bg-light mb-4">
								<div class="text">
									<strong class="number" data-number="10">0</strong> <span>Team</span>
								</div>
							</div>
						</div>
						<div
							class="col-md-6 justify-content-center counter-wrap ftco-animate">
							<div class="block-18 text-center py-3 bg-light mb-4">
								<div class="text">
									<strong class="number" data-number="17">0</strong> <span>Senior</span>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6 d-flex">
					<div class="img d-flex align-self-stretch"
						style="background-image: url(images/wiz_img_13.jpg);"></div>
				</div>

			</div>
		</div>
	</section>


	<section class="ftco-section testimony-section"
		style="background-image: url(images/bg_2.jpg);"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3">
				<div
					class="col-md-7 text-center heading-section heading-section-white ftco-animate">
					<span class="subheading">Expert</span>
					<h2 class="mb-4">Best Staff</h2>
				</div>
			</div>
			<div class="row ftco-animate justify-content-center">
				<div class="col-md-7">
					<div class="carousel-testimony owl-carousel ftco-owl">
						<div class="item">
							<div class="testimony-wrap text-center py-4 pb-5">
								<div class="user-img mb-4"
									style="background-image: url(images/person_1.jpg)">
									<span
										class="quote d-flex align-items-center justify-content-center">
										<i class="icon-quote-left"></i>
									</span>
								</div>
								<div class="text p-3">
									<p class="mb-4">Staff1</p>
									<p class="name">Hwang Sung Min</p>
									<span class="position">Staff</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap text-center py-4 pb-5">
								<div class="user-img mb-4"
									style="background-image: url(images/jyn0.jpg)">
								</div>
								<div class="text p-3">
									<p class="mb-4">Staff2</p>
									<p class="name">Kim Ji Yeon</p>
									<span class="position">Staff</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-no-pb contact-section">
		<div class="container">
			<div class="row d-flex contact-info">
				<div class="col-md-3 d-flex">
					<div class="align-self-stretch box p-4 text-center">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="icon-map-signs"></span>
						</div>
						<h3 class="mb-3">Address</h3>
						<p>Teheran-ro 212 GANGNAM SEOUL, KOREA</p>
					</div>
				</div>
				<div class="col-md-3 d-flex">
					<div class="align-self-stretch box p-4 text-center">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="icon-phone2"></span>
						</div>
						<h3 class="mb-3">Contact Number</h3>
						<p>
							<a href="tel://1234567920">+82 02-3429-5114</a>
						</p>
					</div>
				</div>
				<div class="col-md-3 d-flex">
					<div class="align-self-stretch box p-4 text-center">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="icon-paper-plane"></span>
						</div>
						<h3 class="mb-3">Email Address</h3>
						<p>
							<a href="mailto:info@yoursite.com">multi_agency@multia.com</a>
						</p>
					</div>
				</div>
				<div class="col-md-3 d-flex">
					<div class="align-self-stretch box p-4 text-center">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="icon-globe"></span>
						</div>
						<h3 class="mb-3">Website</h3>
						<p>
							<a href="main.jsp">Home</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-subscribe img"
		style="background-image: url(images/bg_1.jpg);">
		<div class="overlay">
			<div class="container">
				<div class="row d-flex justify-content-center">
					<div
						class="col-md-10 text-wrap text-center heading-section heading-section-white ftco-animate">
						<h2>Subcribe to our upcoming match</h2>
						<div class="row d-flex justify-content-center mt-4 mb-4">
							<div class="col-md-10">
								<form action="#" class="subscribe-form">
									<div class="form-group d-flex">
										<input type="text" class="form-control"
											placeholder="Enter email address"> <input
											type="submit" value="Subscribe" class="submit px-3">
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<footer class="ftco-footer ftco-footer-2 ftco-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">MULTI AGENCY</h2>
						<p> MULTI AGENCY MULTI AGENCY MULTI AGENCY MULTI AGENCY.</p>
						<ul
							class="ftco-footer-social list-unstyled float-md-left float-lft">
							<li class="ftco-animate"><a href="#"><span
									class="icon-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-instagram"></span></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Have a Questions?</h2>
						<div class="block-23 mb-3">
							<ul>
								<li><span class="icon icon-map-marker"></span><span
									class="text">Teheran-ro 212 GANGNAM SEOUL, KOREA</span></li>
								<li><a href="#"><span class="icon icon-phone"></span><span
										class="text">+82 02-3429-5114</span></a></li>
								<li><a href="#"><span class="icon icon-envelope"></span><span
										class="text">multi_agency@multia.com</span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">

					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="icon-heart color-danger" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=key&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
</html>