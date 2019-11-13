<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<style>
#addpage{
	text-align: center;
}
table{
	border-color: blue;
	margin: auto;
}

</style>

<div id="addpage">
	<h1>Player Add Page</h1>
	<table>
	<form enctype="multipart/form-data" 
	      action="paddimple.mc" method="POST">
	<tr><td>ID</td><td><input type="text" name="id"></td></tr>
	<td>사진</td>                         <td><input type="file" name="mf"></td></tr>
	<td>이름</td> <td><input type="text" name="name"></td></tr>
	<td>포지션</td><td><input type="text" name="position"></td></tr>
	<td>팀</td><td><input type="text" name="team"></td></tr>
	<td>ERA</td><td><input type="text" name="era"></td></tr>
	<td>GAME</td><td><input type="text" name="game"></td></tr>
	<td>AVG</td><td><input type="text" name="avg"></td></tr>
	<td>HR</td><td><input type="text" name="hr"></td></tr>
	<td>YEAR</td><td><input type="text" name="year"></td></tr>
	<td>WPCT</td><td><input type="text" name="wpct"></td></tr>
	<td>BACKNUM</td><td><input type="text" name="backnum"></td></tr>
	</table>
	<input type="submit" value="REGISTER"><br>
	</form>
</div>