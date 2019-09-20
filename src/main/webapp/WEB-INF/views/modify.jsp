<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false"%>
<%@ include file="/WEB-INF/views/home.jsp" %>
<!DOCTYPE>
<html>
<head>
<title>글수정</title>
</head>
<body>
글 수 정     페 이 지
<form action="modify" method = "post">
    <p><label>글번호</label> <input type="text" name ="bno" value ="${boardVO.bno}" readonly="readonly"></p>
    <p><label>제목</label ><input type="text" name ="title" value ="${boardVO.title}" ></p>
    <p><label>작성자</label> <input type="text" name="writer" value = "${boardVO.writer}"></p>
    <label>내용</label>
    <textarea name=content>${boardVO.content}</textarea><br>
    <button type ="submit" class="btn btn-primary">완료</button>
</form>
</body>
</html>