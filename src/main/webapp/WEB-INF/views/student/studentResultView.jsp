<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>student result view</title>
	</head>
	<body>
		학번 : ${stdNo }<br>
		성명 : ${stdName }<br>
		학년 : ${stdYear }<br>
		
		<br>
		url을 통한 데이터 전달<br>
		<a href="/project/student/studentDetailView/${stdNo}">${stdNo }</a><br>
		<a href="/project/student/studentDetailView2/${stdNo}/${stdName}/${stdYear}">${stdNo }</a>
		
	</body>
</html>