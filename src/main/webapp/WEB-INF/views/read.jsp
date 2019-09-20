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
<p><label>글번호</label> <input type="text" name ="bno" value ="${boardVO.bno}" readonly="readonly"></p>

<p><label>제목</label> <input type="text" name ="title" value ="${boardVO.title}" readonly="readonly"></p>

<p><label>작성자</label> <input type="text" name="writer" value = "${boardVO.writer}"readonly="readonly"><p>

<label>내용</label> <textarea name=content  readonly="readonly">${boardVO.content}</textarea><br>

<button type="submit" class="btn" formaction="modify" formmethod="get">수정</button>

<button type="submit" class="btn" formaction="remove" formmethod="post">삭제</button>

<button type="submit" class="btn" formaction="listAll" formmethod="get">목록</button>
</form>
</body>
</html>