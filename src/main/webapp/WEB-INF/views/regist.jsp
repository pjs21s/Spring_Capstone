<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/home.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>글쓰기</title>
<!-- CKEditor -->
<script src="https://cdn.ckeditor.com/4.13.0/standard/ckeditor.js"></script>
</head>
<body>
<form method="post">
<div class="form-group">
<label>제목</label>
<input class="form-control" type="text" name ="title" required>
<label>작성자</label>
<input class="form-control" type="text" name ="writer" required>
<label>내용</label>
<textarea class="form-control" name="content" required></textarea>

<button type ="submit" class="btn btn-primary">등록</button>
</div>
</form>

<script>
CKEDITOR.replace('content');
</script>
</body>
</html>


