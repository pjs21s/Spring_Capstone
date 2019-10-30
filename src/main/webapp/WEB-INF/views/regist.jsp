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
			<div>
				<select class="custom-select">
  					<option selected>카테고리</option>
  					<c:forEach items="${categorylist}" var="categorylist">
  						<option value="">${categorylist.categoryname}</option>
  					</c:forEach>
				</select>
			
			</div>
			<div class="col-lg-8">
				<input class="form-control" type="text" name ="title" placeholder="제목" required autofocus>
				
				<input class="form-control" type="text" name ="writer" placeholder="작성자" value="${login.name}" style="display:none;" readonly>
				<textarea class="form-control" name="content" required>당신의 이야기를 들려주세요</textarea>
				<br>
				<button type ="submit" class="btn btn-primary">작성하기</button>
			</div>
		</div>
	</div>
</form>
<script type="text/javascript">
CKEDITOR.replace('content', {
	enterMode:CKEDITOR.ENTER_BR,
});
</script>
</body>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</html>


