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
	          <li class="nav-item"><a href="main.jsp" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="about.jsp" class="nav-link">About</a></li>
	          <li class="nav-item active"><a href="stats.jsp" class="nav-link">Stats</a></li>
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
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/blockchain.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate pb-5 text-center">
            <h1 class="mb-3 bread">Stats</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="main.jsp">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Stats <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
		
		<section class="ftco-section">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
					 <h2 class="mb-4">Team Table</h2>
					 <a href="teamgrade.mc"><input type="button" value="2018" id="2018"></a>
					 <table class="table table-league">
					 <thead>
					 	<tr>
					 		<th>TEAM</th><th>grade</th><th>WIN</th><th>LOSE</th><th>TIE</th>
					 	</tr>
					 </thead>
					 <tbody>
					 	<c:forEach var="th" items="${thlist}">
						<tr>
						<c:if test="${th.year eq '2018'}">
							<td>${th.team }</td><td>${th.grade }</td><td>${th.wgame }</td>
							<td>${th.lgame }</td><td>${th.tgame }</td>
						</c:if>
						</tr>
						</c:forEach>
					</tbody>
					</table>
					</div>
					<div id="chartcontainer" style="min-width: 500px; height: 400px; margin: 0 auto"></div>
				</div>
			</div>
		</section>


    <footer class="ftco-footer ftco-footer-2 ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Knights</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
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
  
  <script src="https://code.highcharts.com/highcharts.js"></script>
  <script src="https://code.highcharts.com/modules/exporting.js"></script>
  <script src="https://code.highcharts.com/modules/export-data.js"></script>
  
  
  <script>
  function chart1(){
  Highcharts.chart('chartcontainer', {
	    chart: {
	        type: 'column'
	    },
	    title: {
	        text: 'All Team'
	    },
	    subtitle: {
	        text: 'Win Lose Tie'
	    },
	    xAxis: {
	        categories: [
	            'WIZ',
	            'TIGERS',
	            'DINOS',
	            'WYVERNS',
	            'LIONS',
	            'BEARS',
	            'TWINS',
	            'HEROES'
	        ],
	        crosshair: true
	    },
	    yAxis: {
	        min: 0,
	        title: {
	            text: 'G'
	        }
	    },
	    tooltip: {
	        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
	       /*  pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
	            '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>', */
	        footerFormat: '</table>',
	        shared: true,
	        useHTML: true
	    },
	    plotOptions: {
	        column: {
	            pointPadding: 0.2,
	            borderWidth: 0
	        }
	    },
	    series: /* [{
	    	 name: "WIN",
	         data: pdata1
	    },{
	    	 name: "LOSE",
	         data: pdata1
	    },{
	    	 name: "TIE",
	         data: pdata1
	    }]  */
	    	
	    	  [{
	        name: 'Win',
	        data: [59, 70, 58, 78, 68, 93, 68, 75]

	    }, {
	        name: 'Lose',
	        data: [82, 74, 85, 65, 72, 51, 75, 69]

	    }, {
	        name: 'Tie',
	        data: [3, 0, 1, 1, 4, 0, 1, 0]

	    }]  
	});
  	};
  	
  	$(document).ready(function(){
		chart1();
});
  </script>
    
  </body>
</html>