<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/home.jsp" %>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<form method="post">
<div class="form-group">
	<label for="validationCustom01">이메일</label>
	<input class="form-control" id="validationCustom01" placeholder="이메일" name="email" type="email" required>
      
    <label for="validationCustom02">비밀번호</label>
	<input type="password" class="form-control" id="validationCustom02" placeholder="비밀번호" name="password" required>
      
    <label for="validationCustom03">이름</label>
	<input type="text" class="form-control" id="validationCustom03" placeholder="비밀번호" name="name" required>

	<button type ="submit" class="btn btn-primary">회원가입</button>
</div>
</form>
</body>
</html>