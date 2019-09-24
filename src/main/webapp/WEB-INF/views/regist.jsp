<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/home.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>글쓰기</title>
</head>
<body>
<form method = "post">
<div class="form-group">
제목<input class="form-control" type="text" name ="title">
작성자<input class="form-control" type="text" name="writer" size="15">

내용<textarea class="form-control" name="content"></textarea><p>
<button type ="submit" class="btn btn-primary">등록</button>
</div>
</form>
</body>
</html>


