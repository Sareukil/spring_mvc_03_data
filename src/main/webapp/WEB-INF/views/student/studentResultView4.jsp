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
		학번 : ${std.stdNo }<br>
		성명 : ${std.stdName }<br>
		학년 : ${std.stdYear }<br>
	</body>
</html>