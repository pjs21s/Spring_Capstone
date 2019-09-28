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
 	<input class="form-control" placeholder="이메일" type ="email" name ="email" required>
	<input class="form-control" placeholder="비밀번호" type ="password" name ="password" required>
	<button type="submit" class="btn btn-primary">로그인</button>
</div>
</form>

<script>
var msg = "${msg}";
if(msg === "Registered"){
	alert("회원가입이 완료되었습니다. 로그인해주세요.")
}
</script>
</body>
</html>