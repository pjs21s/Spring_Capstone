<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/home.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style>
input {font-size: 3rem;}
</style>
</head>
<body>

<form method="post">
<div class="form-group">

	<input class="form-control" placeholder="이메일" name="email" type="email" required>

	<input type="password" class="form-control" placeholder="비밀번호" name="password" required>

	<input type="text" class="form-control" placeholder="이름" name="name" required>

	<button type ="submit" class="btn btn-primary">회원가입</button>
</div>
</form>

</body>
</html>