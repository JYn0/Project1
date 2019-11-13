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
					<li class="nav-item"><a href="team.jsp" class="nav-link">Team</a></li>
					<li class="nav-item active"><a href="player.jsp" class="nav-link">Player</a></li>
					<li class="nav-item cta">
					<c:choose>
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
		style="background-image: url('images/homeplate.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate pb-5 text-center">
					<h1 class="mb-3 bread">Player</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="main.jsp">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Player <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>


	<div class="ccenter" 
		style="border: 2px solid red; height: auto; max-width: auto">

		

		<c:choose>
		<c:when test="${loginuser.ulevel == 0 }">
			<c:choose>
			<c:when test="${ccenter == null }">
				<a href="allplayerlist.mc"><input type="button" value="선수"
					class="btn btn-black py-3 px-4"></a>
				<a href="allteam.mc"><input type="button" value="팀"
					class="btn btn-black py-3 px-4"></a>
				<h3>List</h3>
				
					<c:forEach var="p" items="${playerlist }">
						<h5>
							<a href="playerdetail.mc?id=${p.id }"> ${p.id } </a>
							${p.name } ${p.team } ${p.position }
						</h5>
					</c:forEach>
					<c:forEach var="t" items="${tlist }">
						<h5>
							<a href=""> ${t.id } </a>${t.tname }
						</h5>
					</c:forEach>
			</c:when>
			<c:otherwise>
				<jsp:include page="${ccenter }.jsp"></jsp:include>
			</c:otherwise>
			</c:choose>
		</c:when>
		
		
		<c:when test="${loginuser.ulevel == 1 }">
			<c:choose>
			<c:when test="${ccenter == null }">
				<a href="allplayerlist.mc"><input type="button" value="선수"
					class="btn btn-black py-3 px-4"></a>
				<a href="allteam.mc"><input type="button" value="팀"
					class="btn btn-black py-3 px-4"></a>
				<h3>List</h3>
				
					<c:forEach var="p" items="${playerlist }">
						<h5>
							${p.id }
							${p.name } ${p.team } ${p.position }
						</h5>
					</c:forEach>
					<c:forEach var="t" items="${tlist }">
						<h5>
							<a href=""> ${t.id } </a>${t.tname }
						</h5>
					</c:forEach>
			</c:when>
			<c:otherwise>
				<jsp:include page="${ccenter }.jsp"></jsp:include>
			</c:otherwise>
			</c:choose>
		</c:when>
		
		<c:otherwise>
			<c:choose>
			<c:when test="${ccenter == null }">
				<a href="allplayerlist.mc"><input type="button" value="선수"
					class="btn btn-black py-3 px-4"></a>
				<a href="allteam.mc"><input type="button" value="팀"
					class="btn btn-black py-3 px-4"></a>
				<h3>List</h3>
					<c:forEach var="p" items="${playerlist }">
						<h5>
							${p.id } 
							${p.name } ${p.team } ${p.position }
						</h5>
					</c:forEach>
					<c:forEach var="t" items="${tlist }">
						<h5>
							<a href=""> ${t.id } </a>${t.tname }
						</h5>
					</c:forEach>
			</c:when>
			<c:otherwise>
				<jsp:include page="${ccenter }.jsp"></jsp:include>
			</c:otherwise>
			</c:choose>
		</c:otherwise>
		
		
		</c:choose>

	</div>
	
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
	<script src="js/main.js"></script>
</body>
</html>