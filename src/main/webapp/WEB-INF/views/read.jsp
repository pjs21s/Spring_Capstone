<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false"%>
<%@ include file="/WEB-INF/views/home.jsp" %>
<!DOCTYPE html> 
<html>
<head>
<title>글읽기</title>
</head>
<body>
<form>
<div class="form-group">
<p>글번호<input class="form-control" type="text" name ="bno" value ="${boardVO.bno}" readonly="readonly"></p>
<p>제목<input class="form-control" type="text" name ="title" value ="${boardVO.title}" readonly="readonly"></p>
<p>작성자<input class="form-control" type="text" name="writer" value = "${boardVO.writer}"readonly="readonly"></p>
</div>
<p>내용<textarea class="form-control" name=content readonly="readonly">${boardVO.content}</textarea><br></p>
<button type="submit" class="btn btn-warning" formaction="modify" formmethod="get">수정</button>
<button type="submit" class="btn btn-danger" formaction="remove" formmethod="post">삭제</button>
<button type="submit" class="btn btn-primary" formaction="list" formmethod="get">목록</button>
</form>
<p>태그</p>
<p>댓글</p>

</body>
</html>