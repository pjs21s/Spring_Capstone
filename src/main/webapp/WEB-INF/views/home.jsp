<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%
request.setCharacterEncoding("UTF-8");
%>
<%@ include file="/WEB-INF/views/header.jsp" %>
<html>
<head>
	<title>쓰담쓰담</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/">쓰담쓰담</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="list">질문하고 답변하기</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">태그별 보기</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">상담센터 보기</a>
      </li>
      <c:if test="${empty login}">
      	<li class="nav-item">
        	<a class="nav-link" href="/user/register">회원가입</a>
      	</li>
      	<li class="nav-item">
        	<a class="nav-link" href="/user/login">로그인</a>
      	</li>
      </c:if>
      
      <c:if test="${not empty login}">
      	<li class="nav-item">
       	<a class="nav-link" href="#">로그아웃</a>
      	</li>
      </c:if>
    </ul>
    <form class="form-inline my-2 my-lg-0">
    	<select class="browser-default custom-select" name="searchType">
		<option value="n"
			<c:out value="${cri.searchType == null?'selected':''}"/>>
			---</option>
		<option value="t"
			<c:out value="${cri.searchType eq 't'?'selected':''}"/>>제목</option>
		<option value="c"
			<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>내용</option>
		<option value="w"
			<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>작성자</option>
		<option value="tc"
			<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
			제목+내용</option>
		<option value="cw"
			<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
			내용+작성자</option>
		<option value="tcw"
			<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
			제목+내용+작성자</option>
		</select>
		<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"  name='keyword' id="keywordInput" value='${cri.keyword }'>
		<button class="btn btn-outline-success my-2 my-sm-0" id="searchBtn" type="submit">찾기</button>
    </form>
  </div>
</nav>
<script type="text/javascript">
	$(document).ready(
		function() {
			$('#searchBtn').on(
				"click",
				function(event) {
					str = "list"
					+ '${pageMaker.makeQuery(1)}'
					+ "&searchType="
					+ $("select option:selected").val()
					+ "&keyword=" + encodeURIComponent($('#keywordInput').val());
					console.log(str);
					self.location = str;
				});
		});
</script>


</body>

</html>
