<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>학생 검색 결과</title>
	</head>
	<body>
		<h3>학생 검색 결과</h3>
		<!-- 테이블 형태로 검색 결과 출력 : 학번, 성명, 학년  -->
		<!-- JSTL / EL  -->
		<table border="1">
			<tr>
				<th>학번</th>
				<th>이름</th>
				<th>학년</th>
			</tr>
			<c:forEach var="std" items="${stdList }">
				<tr>
					<td>${std.stdNo }</td>
					<td>${std.stdName }</td>
					<td>${std.stdYear}</td>
				</tr>
			</c:forEach>
		</table>
		
	</body>
</html>