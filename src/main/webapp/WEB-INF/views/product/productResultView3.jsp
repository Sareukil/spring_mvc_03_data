<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>product result view</title>
	</head>
	<body>
		상품번호 : ${productVO.prdNo } <br>
		상품명 : ${productVO.prdName } <br>
		가격 : ${productVO.prdPrice } <br>
		제조회사 : ${productVO.prdCompany } <br>
	</body>
</html>
