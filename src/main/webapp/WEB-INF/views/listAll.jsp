<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<%@ include file="/WEB-INF/views/home.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>게시판 목록</title>
</head>
<body>
<form action="regist" method="get">
	<c:forEach items="${list}" var="boardVO">
	<div class="box card bg-white rounded">
		<div class="card-body">
			<p class="font-weight-bold"><a href='/read?bno=${boardVO.bno}'>${boardVO.title}</a></p>
			<p class="font-weight-bold">${boardVO.content}</p>
			<p class="text-primary"><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}"/></p>
			<p>${boardVO.viewcnt}</p>
		</div>
	</div>
	</c:forEach>
<button type="submit" class="btn btn-primary">글쓰기</button>
	
</form>
</body>
</html>