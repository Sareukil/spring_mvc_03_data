<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>studentForm</title>
	</head>
	<body>
		<h3>학생 정보 등록</h3>
		<form method="post" action="/project/student/newStudent4">
			학번 <input type="text" name="stdNo"><br>
			성명 <input type="text" name="stdName"><br>
			학년 <input type="text" name="stdYear"><br><br>
			<input type="submit" value="등록"> 
			<input type="reset" value="취소">
		</form>
	</body>
</html>