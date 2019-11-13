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
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center: new kakao.maps.LatLng(37.299760, 127.009744), // 지도의 중심좌표
		level: 3 // 지도의 확대 레벨
	};
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png', // 마커이미지의 주소입니다    
		imageSize = new kakao.maps.Size(30, 30), // 마커이미지의 크기입니다
		imageOption = { offset: new kakao.maps.Point(20, 50) }; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

	// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
		markerPosition = new kakao.maps.LatLng(37.299760, 127.009744); // 마커가 표시될 위치입니다
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
		position: markerPosition,
		image: markerImage // 마커이미지 설정 
	});

	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	/* var center = new daum.maps.LatLng(35.185938, 129.210729); // 경도 ,위도
	var container = document.getElementById('map');
	var options = {
		center: center,
		level: 5
	};

	var map = new daum.maps.Map(container, options); */

	$('#home').click(function () {
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center: center, // 지도의 중심좌표
			level: 3 // 지도의 확대 레벨
		};
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png', // 마커이미지의 주소입니다    
			imageSize = new kakao.maps.Size(50, 50), // 마커이미지의 크기입니다
			imageOption = { offset: new kakao.maps.Point(20, 50) }; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

		// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
			markerPosition = center; // 마커가 표시될 위치입니다
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			position: markerPosition,
			image: markerImage // 마커이미지 설정 
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
	});

	$('#b').click(function(){

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
 		mapOption = { 
        	center: new kakao.maps.LatLng(37.300372, 127.009376), // 지도의 중심좌표
        	level: 10 // 지도의 확대 레벨
   		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
 
		// 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [
    	{
        	title: 'Wiz', 
       		latlng: new kakao.maps.LatLng(37.299749, 127.009728)
   		},
   		{
        	title: 'Champions', 
        	latlng: new kakao.maps.LatLng(35.168212, 126.889220)
    	},
   		{
        	title: '잠실', 
        	latlng: new kakao.maps.LatLng(37.512305, 127.071923)
 		},
    	{
       		title: '고척',
    	    latlng: new kakao.maps.LatLng(37.498360, 126.867231)
		},
		{
        	title: '문학', 
        	latlng: new kakao.maps.LatLng(37.436855, 126.693303)
 		},
		];

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png"; 
		
    
		for (var i = 0; i < positions.length; i ++) {
    
    		// 마커 이미지의 이미지 크기 입니다
   			var imageSize = new kakao.maps.Size(50, 50); 
    
  			// 마커 이미지를 생성합니다    
  			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    
   			// 마커를 생성합니다
    		var marker = new kakao.maps.Marker({
     			map: map, // 마커를 표시할 지도
        		position: positions[i].latlng, // 마커를 표시할 위치
       			title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
       		 	image : markerImage // 마커 이미지 
   			 });
		}
	});


	$('#wiz').click(function () {
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center: new kakao.maps.LatLng(37.299760, 127.009744), // 지도의 중심좌표
			level: 3 // 지도의 확대 레벨
		};
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png', // 마커이미지의 주소입니다    
			imageSize = new kakao.maps.Size(30, 30), // 마커이미지의 크기입니다
			imageOption = { offset: new kakao.maps.Point(20, 50) }; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

		// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
			markerPosition = new kakao.maps.LatLng(37.299760, 127.009744); // 마커가 표시될 위치입니다
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			position: markerPosition,
			image: markerImage // 마커이미지 설정 
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
	});

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
		style="background-image: url('images/t_kt.png');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate pb-5 text-center">
					<h1 class="mb-3 bread"> 飛上  2019, 승리의 kt wiz!</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="main.jsp">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a
							href="blog.jsp">Blog <i class="ion-ios-arrow-forward"></i></a></span>
							<span>WIZ 소개
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
				
					<h2 class="mb-3">KT WIZ</h2>
					
					<div class="mb-3">
						<h5>2019 LEAGUE</h5>
						<span>팀순위 : 6위<br>	승/패/무 : 45-49-1<br>	승률 : 0.479
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
					
					
					<h3 class="mb-3">수원 KT WIZ 파크</h3>
					<p>경기도 수원시 장안구 경수대로 893(조원동) 수원 케이티 위즈 파크 (구: 경기도 수원시 장안구 조원동 775)</p>
					<p>
						<div id="map"></div>
						<button id="wiz">Wiz Park</button>
						<button id="b">Baseball Park</button>
					</p>

					<p>좌우거리: 98m 중앙거리: 120m</p>
					<p>22,035석(만석기준 20,800석)</p>
					<p>1루(홈) / 3루(원정)</p>
					<p>5G 스타디움</p>
					
					
					<h2 class="mb-3 mt-5">Player</h2>
						<div class="">
						<c:forEach var="p" items="${playerlist }">
						<h5>
							<c:if test="${p.team eq 'WIZ' }">
							<img src="images/${p.pic }" width="80px" height="100px">
								${p.name } ${p.position }
								<a href="playerdetail.mc?id=${p.id }">more </a>
								<%-- <c:choose>
								<c:when test="${pdd.team eq p.team }">
									 ${pdd.backnum }
								</c:when>
								</c:choose>
									 --%>
								
							</c:if>
							
						</h5>
						</c:forEach>
						</div>
				
					<div class="tag-widget post-tag-container mb-5 mt-5">
						<div class="tagcloud">
							<a href="http://www.ktwiz.co.kr/sports/site/baseball/main.do" 
								class="tag-cloud-link">kt wiz</a>
							<a href="https://www.koreabaseball.com/Default.aspx?vote=true"
								class="tag-cloud-link">KBO</a>
						</div>
					</div>

					<div class="about-author d-flex p-4 bg-light">
						<div class="bio mr-5">
							<img src="images/dir_kt.jpg" alt="Image placeholder"
								class="img-fluid mb-4">
						</div>
						<div class="desc">
							<h3>감독 이 강 철</h3>
							<p>대한민국의 야구선수 출신 감독. 2019년부터 kt wiz 감독을 맡고 있다.
							해태  타이거즈19, 삼성 라이온즈16, KIA 타이거즈13,19.</p>
						</div>
					</div>
					
					<div class="about-author d-flex p-4 bg-light">
						<div class="bio mr-5">
							<img src="images/kt_61.jpg" alt="Image placeholder"
								class="img-fluid mb-4">
						</div>
						<div class="desc">
							<h3>주장 유 한 준</h3>
							<p>kt wiz No.61 <br>
							현대 유니콘스 (2004~2007) 상무(2007~2009) 넥센 히어로즈 (2008~2015) kt wiz (2016~)
							</p>
						</div>
					</div>
					
					<div class="about-author d-flex p-4 bg-light">
						<div class="bio mr-5">
							<img src="images/kt_6.jpg" alt="Image placeholder"
								class="img-fluid mb-4">
						</div>
						<div class="desc">
							<h3>부장 박 경 수</h3>
							<p>kt wiz No.6 <br>
							2016~2018 주장
							</p>
						</div>
					</div>
				</div>
				<!-- .col-md-8 -->
				<div class="col-lg-4 sidebar ftco-animate">
					<div class="sidebar-box ftco-animate">
						<div class="categories">
							<h3 class="heading-name">MULTI Agency 소속 팀 (선수) </h3>
							<li><a href="playerlist.mc?id=2">TIGERS <span>(5)</span></a></li>
							<li><a href="playerlist.mc?id=3">DINOS <span>(3)</span></a></li>
							<li><a href="playerlist.mc?id=4">WYVERNS <span>(3)</span></a></li>
							<li><a href="playerlist.mc?id=5">LIONS <span>(7)</span></a></li>
							<li><a href="playerlist.mc?id=6">BEARS <span>(2)</span></a></li>
							<li><a href="playerlist.mc?id=7">TWINS <span>(1)</span></a></li>
							<li><a href="playerlist.mc?id=8">HEROES <span>(4)</span></a></li>
						</div>
					</div>
					
					
					<div class="sidebar-box ftco-animate">
						<h3 class="heading-name">Sponsor</h3>
						<div class="block-21 mb-4 d-flex">
							<a href="http://www.suwon.go.kr/index.do" class="blog-img mr-4" 
								style="background-image: url(images/kt_s1.gif); width:150px;"></a>
						</div>
						<div class="block-21 mb-4 d-flex">
							<a href="https://www.samsung.com/sec/" class="blog-img mr-4" 
								style="background-image: url(images/kt_s2.jpg); width:150px;"></a>
						</div>
						<div class="block-21 mb-4 d-flex">
							<a href="https://www.ktestate.com/" class="blog-img mr-4" 
								style="background-image: url(images/kt_s3.jpg); width:170px;"></a>
						</div>
						<div class="block-21 mb-4 d-flex">
							<a href="https://www.hyundai.com/kr/ko" class="blog-img mr-4" 
								style="background-image: url(images/kt_s4.jpg); width:170px;"></a>
						</div>
						<div class="block-21 mb-4 d-flex">
							<a href="http://www.ottogi.co.kr/main/main.asp" class="blog-img mr-4" 
								style="background-image: url(images/kt_s5.jpg); width:170px;"></a>
						</div>
						<div class="block-21 mb-4 d-flex">
							<a href="http://www.jparkisland.co.kr/web/main/main.html" class="blog-img mr-4" 
								style="background-image: url(images/kt_s6.gif); width:170px;"></a>
						</div>
						<div class="block-21 mb-4 d-flex">
							<a href="https://www.daishin.com/g.ds?p=3979&v=2983&m=4027" class="blog-img mr-4" 
								style="background-image: url(images/kt_s7.gif); width:170px;"></a>
						</div>
						<div class="block-21 mb-4 d-flex">
							<a href="https://www.bccard.com/app/card/MainActn.do" class="blog-img mr-4" 
								style="background-image: url(images/kt_s8.gif); width:170px;"></a>
						</div>
						<div class="block-21 mb-4 d-flex">
							<a href="https://tirebank.com/" class="blog-img mr-4" 
								style="background-image: url(images/kt_s9.png); width:170px;"></a>
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