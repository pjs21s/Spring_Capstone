<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/home.jsp" %>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<form method="post">
<div class="form-group">
	이메일 <input class="form-control" type = "email" name = "email"><br>
	비밀번호 <input class="form-control" type = "password" name = "password"><br>
	이름 <input class="form-control" type = "text" name = "name"><br>
	<button type ="submit" class="btn btn-primary">회원가입</button>
</div>
</form>
</body>
</html>