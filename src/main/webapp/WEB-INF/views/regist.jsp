<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>글쓰기</title>
</head>
<body>
<form method="post">
	<!-- Page Content -->
	<div class="container form-group">
		<div class="row">
			<!-- Post Content Column -->
			<div class="col-lg-8">
			<input class="form-control" type="text" name ="title" placeholder="제목" required>
			<input class="form-control" type="text" name ="writer" placeholder="작성자" value="${login.email}" style="display:none;" readonly>
			<textarea class="form-control" name="content" required>당신의 이야기를 들려주세요</textarea>
			<button type ="submit" class="btn btn-primary">등록</button>
			</div>
		</div>
	</div>
</form>
<script>
CKEDITOR.replace('content');
</script>
</body>
</html>


