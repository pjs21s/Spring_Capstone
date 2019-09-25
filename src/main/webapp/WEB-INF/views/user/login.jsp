<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/home.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<form action="${path}/user/loginPost" method="post">
<div class="form-group">
	<label>이메일</label>
 	<input class="form-control" type ="email" name ="email" required>
	<label>비밀번호</label>
	<input class="form-control" type ="password" name ="password" required>
	<button type ="submit" class="btn btn-primary">로그인</button>
</div>
</form>
</body>
</html>