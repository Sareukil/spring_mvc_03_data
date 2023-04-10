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
        <h3>학생 검색</h3>
		<form method="post" action="/project/product/productSearch">
			<select id="type" name="type">
				<option value="">검색 조건 선택</option>
				<option value="no">상품번호</option>
				<option value="name">상품이름</option>
				<option value="price">가격</option>
				<option value="company">제조회사</option>
			</select>
			<input type="text" name="keyword">
			<input type="submit" value="검색">
		</form>

    </body>
</html>