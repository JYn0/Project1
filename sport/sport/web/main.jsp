<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Multi Agency - Mini Projectb</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900" rel="stylesheet">

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
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="main.jsp"><span>MULTI Agency</span></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="main.jsp" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="about.jsp" class="nav-link">About</a></li>
	          <li class="nav-item"><a href="stats.jsp" class="nav-link">Stats</a></li>
	          <li class="nav-item"><a href="team.jsp" class="nav-link">Team</a></li>
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
    
    <div class="hero-wrap js-fullheight" style="background-image: url('images/main1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-end" data-scrollax-parent="true">
          <div class="col-md-7 ftco-animate mt-5" data-scrollax=" properties: { translateY: '70%' }">
            <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">The Best Agency</h1>
            <p class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"> The chances are fifty fifty. I hold all the cards. Cheer up!</p>
						<p class="d-flex align-items-center">
							<a href="https://vimeo.com/45830194" class="icon-video popup-vimeo d-flex justify-content-center align-items-center mr-3">
    						<span class="ion-ios-play"></span>
    					</a>
						</p>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section ftco-no-pb ftco-no-pt">
    	<div class="container">
	    	<div class="row">
					<div class="col-md-12">
						<div class="game-wrap-1 ftco-animate p-4">
							<div class="row p-2">
								<div class="col-md-6 pb-4 pb-lg-0 col-lg-3">
									<div class="text d-flex">
										<div class="team-logo d-flex">
											<div class="img" style="background-image: url(images/baseball-glove.png);"></div>
											<div class="img img-2" style="background-image: url(images/baseball-bat.png);"></div>
										</div>
										<div class="team-name pl-3">
											<h3><span>PITCHER</span> <span>HITTER</span></h3>
										</div>
									</div>
								</div>
								<div class="col-md-6 pb-4 pb-lg-0 col-lg-3">
									<div class="text">
										<div class="img"></div>
										<h3 class="league">KOREA BASEBALL</h3>
										<span>2019 SEASON</span>
									</div>
								</div>
								<div class="col-md-6 pb-4 pb-lg-0 col-lg-4">
									<div class="text">
										<div id="timer" class="d-flex mb-0">
										  <div class="time" id="days"></div>
										  <div class="time pl-3" id="hours"></div>
										  <div class="time pl-3" id="minutes"></div>
										  <div class="time pl-3" id="seconds"></div>
										</div>
									</div>
								</div>
								<div class="col-md-6 pb-4 pb-lg-0 col-lg-2">
									<div class="text">
										<p class="mb-0"><a href="#" class="btn btn-primary py-3">LOGIN</a></p>
									</div>
								</div>
							</div>
		        </div>
					</div>
	    	</div>
	    </div>
    </section>
		
		<section class="ftco-section">
		</section>

		<section class="ftco-section ftco-game-schedule ftco-no-pt">
			<div class="container">
				<div class="row">
					<div class="col-md-12 heading-section ftco-animate mb-4">
          	<span class="subheading">TEAM</span>
					</div>
				</div>
				<div class="row ftco-animate">
					<div class="col-md-12 carousel-game-schedule owl-carousel">
						<div class="item">
							<div class="game-schedule">
		          	<div class="sport-team d-flex align-items-center">
	          			<div class="img logo" style="background-image: url(images/ktEmblem.PNG);"></div>
									<div class="pl-4 desc">
										<span class="venue">Home @ Wiz Park</span>
										<h4 class="team-name">KT WIZ</h4>
										<span class="date">수원 2013</span>
									</div>
		          	</div>
		          </div>
	          </div>
	          <div class="item">
							<div class="game-schedule">
		          	<div class="sport-team d-flex align-items-center">
	          			<div class="img logo" style="background-image: url(images/t_kia.png);"></div>
									<div class="pl-4 desc">
										<span class="venue">Home @ Champions Field</span>
										<h4 class="team-name">KIA TIGERS</h4>
										<span class="date">광주 2001</span>
									</div>
		          	</div>
		          </div>
	          </div>
	          <div class="item">
							<div class="game-schedule">
		          	<div class="sport-team d-flex align-items-center">
	          			<div class="img logo" style="background-image: url(images/ncEmblem.jpg);"></div>
									<div class="pl-4 desc">
										<span class="venue">Home @ NC Park</span>
										<h4 class="team-name">NC DINOS</h4>
										<span class="date">창원 2011</span>
									</div>
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
              <p> MULTI AGENCY MULTI AGENCY MULTI AGENCY MULTI AGENCY</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">Teheran-ro 212 GANGNAM SEOUL, KOREA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+82 02-3429-5114</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">multi_agency@multia.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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
  <script src="https://maps.googleapis.com/maps/api/js?key=key&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>