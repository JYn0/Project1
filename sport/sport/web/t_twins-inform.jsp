<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=key"></script>

<style>
#map {
	width: 622px;
	height: 428px;
	border: 3px solid black;
	
}
</style>
<script>
$(document).ready(function () {
	
	var mapContainer = document.getElementById('map'),
	mapOption = {
		center: new kakao.maps.LatLng(37.512256, 127.071938),
		level: 3 // 지도의 확대 레벨
	};
	var map = new kakao.maps.Map(mapContainer, mapOption);
	var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png',    
		imageSize = new kakao.maps.Size(30, 30),
		imageOption = { offset: new kakao.maps.Point(20, 50) }; 
	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
		markerPosition = new kakao.maps.LatLng(37.512256, 127.071938);
	var marker = new kakao.maps.Marker({
		position: markerPosition,
		image: markerImage  
	});
	marker.setMap(map);
});

</script>

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
		style="background-image: url('images/t_lg.png');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate pb-5 text-center">
					<h1 class="mb-3 bread">LG TWINS</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="main.jsp">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a
							href="blog.jsp">Blog <i class="ion-ios-arrow-forward"></i></a></span>
							<span>TWINS 소개
							<i class="ion-ios-arrow-forward"></i>
						</span>
					</p>
				</div>
			</div>
		</div>
	</section>


	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 ftco-animate">
				
					<h2 class="mb-3">LG TWINS</h2>
					
					<div class="mb-3">
						<h5>2019 LEAGUE</h5>
						<span>팀순위 : 4위<br>	승/패/무 : 51-41-1<br>	승률 : 0.554
						<span class="icon-calendar"></span> July 17,2019
						<span class="icon-person"></span> Admin
						</span>
					
						<span >
							<ul	class="ftco-footer-social list-unstyled float-lft">
							<li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
							<li class="ftco-animate"><a href="#"><span class="icon-youtube"></span></a></li>
							</ul>
						</span>
					</div>
					
					
					<h3 class="mb-3">잠실야구장</h3>
					<p>서울 송파구 올림픽로 25 (잠실동 10-1)</p>
					<p>
						<div id="map"></div>
					</p>

					<p>좌우거리: 100m 중앙거리: 125m</p>
					<p>24,427석</p>
					<p>1루(홈) / 3루(원정)</p>
					<p>88서울올림픽에 맞추어 건립된 역사적 의미를 갖는 야구장, LG 트윈스, 두산 베어스 홈 야구 경기장</p>
					
					<h2 class="mb-3 mt-5">Player</h2>
						<div class="">
						<c:forEach var="p" items="${playerlist }">
						<h5>
							<c:if test="${p.team eq 'TWINS' }">
							<img src="images/${p.pic }" width="80px" height="100px">
								${p.name } ${p.position }
							</c:if>
						</h5>
						</c:forEach>
						</div>
				
					<div class="tag-widget post-tag-container mb-5 mt-5">
						<div class="tagcloud">
							<a href="https://www.lgtwins.com/service/html.ncd?view=/pc_twins/twins_main/twins_main" 
								class="tag-cloud-link">LG TWINS</a>
							<a href="https://www.koreabaseball.com/Default.aspx?vote=true"
								class="tag-cloud-link">KBO</a>
						</div>
					</div>

					<div class="about-author d-flex p-4 bg-light">
						<div class="bio mr-5">
							<img src="images/dir_lg.jpg" alt="Image placeholder"
								class="img-fluid mb-4">
						</div>
						<div class="desc">
							<h3>감독 류 중 일</h3>
							<p>대한민국의 야구선수 출신 감독. 2018년부터  LG TWINS 감독을 맡고 있다.<br>
							잠실구장 1호 홈런의 주인공<br> 경북 출신에 삼성에서만 선수로 뛰고 은퇴 후 코치와 감독도 삼성
							</p>
						</div>
					</div>
					
					<div class="about-author d-flex p-4 bg-light">
						<div class="bio mr-5">
							<img src="images/lg_22.jpg" alt="Image placeholder"
								class="img-fluid mb-4">
						</div>
						<div class="desc">
							<h3>주장 김 현 수</h3>
							<p>LG TWINS No.22 <br>
							DOOSAN BEARS (2006~2015) LG TWINS(2016~)
							</p>
						</div>
					</div>
				</div>
				<!-- .col-md-8 -->
				<div class="col-lg-4 sidebar ftco-animate">
					<div class="sidebar-box ftco-animate">
						<div class="categories">
							<h3 class="heading-name">MULTI Agency 소속 팀 (선수) </h3>
							<li><a href="playerlist.mc?id=1">WIZ <span>(10)</span></a></li>
							<li><a href="playerlist.mc?id=2">TIGERS <span>(5)</span></a></li>
							<li><a href="playerlist.mc?id=3">DINOS <span>(3)</span></a></li>
							<li><a href="playerlist.mc?id=4">WYVERNS <span>(3)</span></a></li>
							<li><a href="playerlist.mc?id=5">LIONS <span>(7)</span></a></li>
							<li><a href="playerlist.mc?id=6">BEARS <span>(2)</span></a></li>
							<li><a href="playerlist.mc?id=8">HEROES <span>(4)</span></a></li>
						</div>
					</div>
					
					<div class="sidebar-box ftco-animate">
						<h3 class="heading-name">Sponsor</h3>
						<div class="block-21 mb-4 d-flex">
							<a href="http://www.htb.co.kr/Product_info/Product_info_5.jsp" class="blog-img mr-4" 
								style="background-image: url(images/lg_s1.jpg); width:300px;"></a>
						</div>
						<div class="block-21 mb-4 d-flex">
							<a href="http://www.descente.co.kr/index.do?netFunnelYn=N" class="blog-img mr-4" 
								style="background-image: url(images/lg_s2.png); width:300px;"></a>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</section>
	<!-- .section -->

	<footer class="ftco-footer ftco-footer-2 ftco-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">MULTI AGENCY</h2>
						<p> MULTI AGENCY MULTI AGENCY MULTI AGENCY MULTI AGENCY</p>
						<ul	class="ftco-footer-social list-unstyled float-md-left float-lft">
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
	
    <!-- <script src="js/google-map.js"></script> -->
	<script src="js/main.js"></script>

</body>
</html>