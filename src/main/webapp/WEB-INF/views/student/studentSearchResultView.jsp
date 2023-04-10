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
            <th><td>학번</td><td>성명</td><td>학년</td></th>
            <c:forEach var="arrayList" items="${arrayList}">
			<tr><td>${stdNo}</td><td>${stdName}</td><td>${stdYear}</td></tr>
			</c:forEach>

        </table>
    </body>
</html>