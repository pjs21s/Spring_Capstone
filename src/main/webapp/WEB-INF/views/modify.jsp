<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false"%>
<%@ include file="/WEB-INF/views/home.jsp" %>
<!DOCTYPE>
<html>
<head>
<title>글수정</title>
</head>
<body>
글수정 페이지

<form action="modify" method="post">
<div class="form-group">
글번호<input class="form-control" type="text" name ="bno" value ="${boardVO.bno}" readonly="readonly"></p>
제목<input class="form-control" type="text" name ="title" value ="${boardVO.title}" ></p>
작성자<input class="form-control" type="text" name="writer" value = "${boardVO.writer}"></p>
내용
<textarea class="form-control" name=content>${boardVO.content}</textarea><br>
<button type ="submit" class="btn btn-primary">완료</button>
</div>
</form>
</body>
</html>