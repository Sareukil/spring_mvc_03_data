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
        <hr>학생 검색 결과</hr>
        <table border="1">
            <tr>
                <td>상품번호</td>
                <td>상품이름</td>
                <td>가격</td>
                <td>제조회사</td>
            </tr>
            <c:forEach var="prdList" items="${prdList}">
			<tr>
                <td>${prdList.prdNo}</td>
                <td>${prdList.prdName}</td>
                <td>${prdList.prdPrice}</td>
                <td>${prdList.prdCompany}</td>
            </tr>
			</c:forEach>

        </table>
    </body>
</html>