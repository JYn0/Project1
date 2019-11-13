<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Multi Agency - Mini Projectb</title>
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
					<li class="nav-item"><a href="about.jsp" class="nav-link">About</a></li>
					<li class="nav-item"><a href="stats.jsp" class="nav-link">Stats</a></li>
					<li class="nav-item active"><a href="team.jsp" class="nav-link">Team</a></li>
					<li class="nav-item"><a href="player.jsp" class="nav-link">Player</a></li>
					<li class="nav-item cta">
					<c:choose>
						<c:when test="${loginuser != null }">
							<a href="logout.mc" class="nav-link">${loginuser.name }</a>
						</c:when>
						<c:otherwise>
							<a href="login.mc" class="nav-link">LOGIN</a>
						</c:otherwise>
					</c:choose>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->

	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('images/bg_4.jpg');">
		<!--  data-stellar-background-ratio="0.5"> -->
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate pb-5 text-center">
					<h1 class="mb-3 bread">Team</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="main.jsp">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Team <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>


	<section class="ftco-section">
		<div class="container">
			<div class="row d-flex">

				<!-- INTRODUCE KT -->
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="blog-entry justify-content-end">
						<a href="playerlist.mc?id=1" class="block-20"
							style="background-image: url('images/t_kt.png');"> </a>
						<div class="text mt-3 float-right d-block">
							<h3 class="heading">
								<a href="playerlist.mc?id=1">WIZ 소개</a>
							</h3>
						</div>
					</div>
				</div>

				<!-- INTRODUCE -->
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="blog-entry justify-content-end">
						<a href="playerlist.mc?id=2" class="block-20"
							style="background-image: url('images/t_kia.png');"> </a>
						<div class="text mt-3 float-right d-block">
							<h3 class="heading">
								<a href="#">TIGERS 소개</a>
							</h3>
						</div>
					</div>
				</div>

				<!-- INTRODUCE KT -->
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="blog-entry justify-content-end">
						<a href="playerlist.mc?id=3" class="block-20" 
							style="background-image: url('images/t_nc.png');"> </a>
						<div class="text mt-3 float-right d-block">
							<h3 class="heading">
								<a href="#">DINOS 소개</a>
							</h3>
						</div>
					</div>
				</div>

				<!-- INTRODUCE KT -->
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="blog-entry justify-content-end">
						<a href="playerlist.mc?id=4" class="block-20"
							style="background-image: url('images/t_sk.png');"> </a>
						<div class="text mt-3 float-right d-block">
							<h3 class="heading">
								<a href="#">WYVERNS 소개</a>
							</h3>
						</div>
					</div>
				</div>

				<!-- INTRODUCE -->
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="blog-entry justify-content-end">
						<a href="playerlist.mc?id=5" class="block-20"
							style="background-image: url('images/t_samsung.png');"> </a>
						<div class="text mt-3 float-right d-block">
							<h3 class="heading">
								<a href="#">LIONS 소개</a>
							</h3>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="blog-entry justify-content-end">
						<a href="playerlist.mc?id=6" class="block-20"
							style="background-image: url('images/t_doosan.png');"> </a>
						<div class="text mt-3 float-right d-block">
							<h3 class="heading">
								<a href="#">BEARS 소개</a>
							</h3>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="blog-entry justify-content-end">
						<a href="playerlist.mc?id=7" class="block-20"
							style="background-image: url('images/t_lg.png');"> </a>
						<div class="text mt-3 float-right d-block">
							<h3 class="heading">
								<a href="#">TWINS 소개</a>
							</h3>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="blog-entry justify-content-end">
						<a href="playerlist.mc?id=8" class="block-20"
							style="background-image: url('images/t_kiwoom.png');"> </a>
						<div class="text mt-3 float-right d-block">
							<h3 class="heading">
								<a href="#">HEROES 소개</a>
							</h3>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="blog-entry justify-content-end">
						<a href="playerlist.mc?id=9" class="block-20"
							style="background-image: url('images/t_hanhwa.png');"> </a>
						<div class="text mt-3 float-right d-block">
							<h3 class="heading">
								<a href="#">EAGLES 소개</a>
							</h3>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="blog-entry justify-content-end">
						<a href="playerlist.mc?id=10" class="block-20"
							style="background-image: url('images/t_lotte.png');"> </a>
						<div class="text mt-3 float-right d-block">
							<h3 class="heading">
								<a href="#">GIANTS 소개</a>
							</h3>
						</div>
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
						<h2 class="ftco-heading-2">Knights</h2>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</p>
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
									class="text">203 Fake St. Mountain View, San Francisco,
										California, USA</span></li>
								<li><a href="#"><span class="icon icon-phone"></span><span
										class="text">+2 392 3929 210</span></a></li>
								<li><a href="#"><span class="icon icon-envelope"></span><span
										class="text">info@yourdomain.com</span></a></li>
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