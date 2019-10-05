<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%
request.setCharacterEncoding("UTF-8");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!-- Google fonts -->
<link href="https://fonts.googleapis.com/css?family=Montserrat|Nanum+Gothic&display=swap&subset=korean" rel="stylesheet">
<title>쓰담쓰담</title>
<style>
body{
font-family: 'Montserrat', 'Nanum Gothic', sans-serif;
}
</style>

<script src="https://cdn.ckeditor.com/4.13.0/standard/ckeditor.js"></script>
<!-- Font Awesome -->
<script src="https://kit.fontawesome.com/ef7acdcbd0.js" crossorigin="anonymous"></script>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/" style="font-weight:bold;">쓰담쓰담</a>
  <button class="navbar-toggler border-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="list">질문하고 답변하기</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="centerlist">상담센터 보기</a>
		<c:if test="${empty login}">
      	<li class="nav-item active">
        	<a class="nav-link" href="/user/register">회원가입</a>
      	</li>
      	<li class="nav-item active">
        	<a class="nav-link" href="/user/login">로그인</a>
      	</li>    
      	</c:if>  
		<c:if test="${not empty login}">
      	<li class="nav-item active">
       	<a class="nav-link" href="/user/logout">로그아웃</a>
      	</li>
      	<li>${login.email}</li>
      	</c:if>
      	<li class="nav-item active">
       	<a class="nav-link" href="/user/profile">프로필</a>
      	</li>
      	<li class="nav-item">
       	<a href="/regist" class="btn btn-primary">질문하기</a>
      	</li>
    </ul>
    
    
  </div>
</nav>

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>