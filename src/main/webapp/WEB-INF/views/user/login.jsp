<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/home.jsp" %>
<html>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form method="post">
<div class="form-group">
	이메일 <input class="form-control" type ="email" name ="email">
	비밀번호 <input class="form-control" type ="password" name ="password">
	<button type ="submit" class="btn btn-primary">로그인</button>
</div>
</form>
</body>
</html>