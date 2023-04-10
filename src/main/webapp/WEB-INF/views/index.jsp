<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	index 페이지 입니다. <br>
	
	<!-- showInfo 요청 링크 추가 -->
	<a href="/project/showInfo">showInfo 페이지로 이동</a><br>	
	<a href="<c:url value='/showInfo'/>">showInfo 페이지로 이동</a><br>	
	<a href="<c:url value='/showInfo2'/>">showInfo2 페이지로 이동</a><br>
	<a href="<c:url value='/showInfo3'/>">showInfo3 페이지로 이동</a><br>
	<a href="<c:url value='/mem/showInfo4'/>">showInfo4로 요청 showInfoView2페이지로 이동</a><br>
	<a href="<c:url value='/mem/showInfo5'/>">showInfo5 로 요청 showInfoView2페이지로 이동</a><br><br>		
	<hr>
	<a href="<c:url value='/student/studentForm'/>">학생 등록 폼</a><br>
	<a href="<c:url value='/student/studentForm2'/>">학생 등록 폼2</a><br>
	<a href="<c:url value='/student/studentForm3'/>">학생 등록 폼3</a><br>
	<a href="<c:url value='/student/studentForm4'/>">학생 등록 폼4</a><br>
	<a href="<c:url value='/student/studentSearch'/>">학생 등록 폼4</a><br>
	
	<hr>
	<a href="/project/bookInfo">bookInfo 페이지로 이동</a><br>
	<a href="/project/bookInfo2">bookInfoMVView 페이지로 이동</a><br>
	<a href="<c:url value='/book/bookInfo3'/>">bookInfo3로 요청 bookInfoView2 페이지 이동</a> <br>
	<a href="<c:url value='/book/bookInfo4'/>">bookInfo4로 요청 bookInfoView2 페이지 이동</a> <br>
	
	<hr>
	<a href="<c:url value='/product/productForm'/>">상품 정보 등록 폼</a><br>
	<a href="<c:url value='/product/productForm2'/>">상품 정보 등록 폼2</a><br>	
	<a href="/project/product/productForm3">상품 등록 폼3</a><br>
	<a href="/project/product/prdSearch">상품 검색</a><br>
	
</body>
</html>