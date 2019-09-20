<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/home.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>글쓰기</title>
</head>
<body>
<form method = "post"> 
<p><label>제목</label><input type="text" name ="title"></p>
<p><label>작성자</label><input type="text" name="writer" size="15">
</p>
<label>내용</label><p>
<textarea name="content"></textarea><p>
<button type ="submit" class="btn btn-primary">등록</button>
</form>
</body>
</html>


