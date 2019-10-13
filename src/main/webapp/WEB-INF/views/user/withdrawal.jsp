<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<form method="post">
	<div class="container form-group">
		<div class="row">
			<div class="col-lg-8">
				<input class="form-control" type="text" name ="email" value="${login.email}" readonly>
				<input class="form-control" type="text" name ="password" value="${login.password}" readonly>
				<br>
				<button type ="submit" class="btn btn-danger">탈퇴</button>
			</div>
		</div>
	</div>
</form>
</body>
</html>