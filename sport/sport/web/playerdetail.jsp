<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
body {
	text-align: center;
}
img {
	display: block;
	margin: 0px auto;
	width: 300px;
	height: 300px;
}
table {
	border-color: blue;
	margin: auto;
}
tr, td {
	color: black;
	font-size: 30px;
	align-content: center;
}
a {
	color: black;
	font-size: 30px;
	align-content: center;
}
</style>
</head>
<body>
	<br>
	<c:choose>
		<c:when test="${p.position eq 'P' }">
			<img src="images/${p.pic }">
			<br>
			<table border="1">
				<tr>
					<td>ID</td>
					<td>${p.id }</td>
				</tr>
				<tr>
					<td>NAME</td>
					<td>${p.name }</td>
				</tr>
				<tr>
					<td>TEAM</td>
					<td>${p.team }</td>
				</tr>
				<tr>
					<td>POSITION</td>
					<td>${p.position }</td>
				</tr>
				<tr>
					<td>GAME</td>
					<td>${pd.game }</td>
				</tr>
				<tr>
					<td>YEAR</td>
					<td>${pd.year }</td>
				</tr>
				<tr>
					<td>WPCT</td>
					<td>${pd.wpct }</td>
				</tr>
				<tr>
					<td>ERA</td>
					<td>${pd.era }</td>
				</tr>
				<tr>
					<td>BACKNUM</td>
					<td>${pd.backnum }</td>
				</tr>
			</table>
		</c:when>
		<c:when test="${p.position eq 'H'}">
			<img src="images/${p.pic }">
			<br>
			<table border="1">
				<tr>
					<td>ID</td>
					<td>${p.id }</td>
				</tr>
				<tr>
					<td>NAME</td>
					<td>${p.name }</td>
				</tr>
				<tr>
					<td>TEAM</td>
					<td>${p.team }</td>
				</tr>
				<tr>
					<td>POSITION</td>
					<td>${p.position }</td>
				</tr>
				<tr>
					<td>GAME</td>
					<td>${pd.game }</td>
				</tr>
				<tr>
					<td>AVG</td>
					<td>${pd.avg }</td>
				</tr>
				<tr>
					<td>HR</td>
					<td>${pd.hr }</td>
				</tr>
				<tr>
					<td>YEAR</td>
					<td>${pd.year }</td>
				</tr>
				<tr>
					<td>BACKNUM</td>
					<td>${pd.backnum }</td>
				</tr>
			</table>

		</c:when>
		<c:otherwise>
			<img src="images/${p.pic }">
			<br>
			<table border="1">
				<tr>
					<td>ID</td>
					<td>${p.id }</td>
				</tr>
				<tr>
					<td>NAME</td>
					<td>${p.name }</td>
				</tr>
				<tr>
					<td>TEAM</td>
					<td>${p.team }</td>
				</tr>
				<tr>
					<td>POSITION</td>
					<td>${p.position }</td>
				</tr>
				<tr>
					<td>GAME</td>
					<td>${pd.game }</td>
				</tr>
				<tr>
					<td>AVG</td>
					<td>${pd.avg }</td>
				</tr>
				<tr>
					<td>HR</td>
					<td>${pd.hr }</td>
				</tr>
				<tr>
					<td>YEAR</td>
					<td>${pd.year }</td>
				</tr>
				<tr>
					<td>BACKNUM</td>
					<td>${pd.backnum }</td>
				</tr>
			</table>
		</c:otherwise>
	</c:choose>
	
	
<%-- 	<c:choose>
	<c:when test="${loginuser.ulevel == 0 }"> --%>
	
	<a href="padd.mc">선수 등록</a>
	<a href="pdel.mc?id=${p.id }">선수 삭제</a>
	<a href="pupdate.mc?id=${p.id }">선수 수정</a>
	<a href="allplayerlist.mc">뒤로 가기</a>
	<%-- </c:when>
	</c:choose> --%>

</body>
</html>
