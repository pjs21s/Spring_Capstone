<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false"%>
<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE>
<html>
<head>
<title>글수정</title>
</head>
<body>
글수정 페이지
<form action="modify" method="post">
<div class="form-group">
글번호<input class="form-control" type="text" name ="bno" value ="${boardVO.bno}" readonly="readonly">
제목<input class="form-control" type="text" name ="title" value ="${boardVO.title}" >
작성자<input class="form-control" type="text" name="writer" value = "${boardVO.writer}">
내용
<textarea class="form-control" name=content>${boardVO.content}</textarea>
<button type ="submit" class="btn btn-primary">완료</button>
</div>
</form>
<script>
CKEDITOR.replace('content');
</script>
</body>
</html>