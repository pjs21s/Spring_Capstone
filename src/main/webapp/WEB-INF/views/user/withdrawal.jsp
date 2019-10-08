<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<form method="post">
<input type="text" name="email" value="${login.email}">
<input type="text" name="password" value="${login.password}">
<button type="submit">탈퇴</button>
</form>
</body>
</html>