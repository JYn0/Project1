<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<style>
div{
	text-align: center;
}
table{
	border-color: blue;
	margin: auto;
}

</style>
<div class="">
	<h3>Player Update Page</h3>
	<table>
	<form enctype="multipart/form-data" 
	      action="pupimpl.mc?id=${pup.id }" method="POST">
	<tr><td>ID</td><td><input type="text" name="id" value="${pup.id }" ></td></tr>
	<tr><td>사진</td><td> <input type="file" name="mf"></td></tr>
	<tr><td><input type = "text" name ="imgname" style="visibility:hidden;"></td></tr>
	<tr><td>이름 </td><td><input type="text" name="name" value="${pup.name }"></td></tr>
	<tr><td>포지션</td><td><input type="text" name="position" value="${pup.position }"></td></tr>
	<tr><td>팀</td><td><input type="text" name="team" value="${pup.team }"></td></tr>
	<tr><td>ERA</td><td><input type="text" name="era" value="${pdup.era }"></td></tr>
	<tr><td>GAME</td><td><input type="text" name="game" value="${pdup.game }"></td></tr>
	<tr><td>AVG</td><td><input type="text" name="avg" value="${pdup.avg }"></td></tr>
	<tr><td>HR</td><td><input type="text" name="hr" value="${pdup.hr }"></td></tr>
	<tr><td>YEAR</td><td><input type="text" name="year" value="${pdup.year }"></td></tr>
	<tr><td>WPCT</td><td><input type="text" name="wpct" value="${pdup.wpct }"></td></tr>
	<tr><td>BACKNUM</td><td><input type="text" name="backnum" value="${pdup.backnum }"></td></tr>
	</table><br>
	<input type="submit" value="UPDATE"><br>
	</form>
</div>
