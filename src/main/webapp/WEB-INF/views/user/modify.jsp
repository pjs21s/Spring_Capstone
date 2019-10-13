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
				<input class="form-control" type="text" name ="name" value="${login.name}">
				<br>
				<button type ="submit" class="btn btn-secondary">수정</button>
			</div>
		</div>
	</div>
</form>
</body>
</html>