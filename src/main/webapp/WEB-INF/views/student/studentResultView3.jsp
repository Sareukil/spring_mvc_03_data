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
		학번 : ${studentVO.stdNo }<br>
		성명 : ${studentVO.stdName }<br>
		학년 : ${studentVO.stdYear }<br>
	</body>
</html>