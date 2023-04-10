<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 정보</title>
	</head>
	<body>
		상품번호 : ${prdNo }<br>
		상품명 : ${prdName }<br>
		가격 : ${prdPrice }<br>
		제조회사 : ${prdCompany }<br>
		
		<br>
		url을 통한 데이터 전달<br>
		<a href="/project/product/productDetailView/${ prdNo }">${ prdNo }</a><br>
		<a href="/project/product/productDetailView2/${ prdNo }/${ prdName }/${ prdPrice }/${prdCompany}">${ prdNo }</a>
	</body>
</html>
