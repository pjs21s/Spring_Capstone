<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<%@ include file="/WEB-INF/views/home.jsp" %>
<!DOCTYPE html>
<html>
<body>
	<c:forEach items="${list}" var="boardVO">
	<div class="box card bg-white rounded">
		<div class="card-body">
			<p class="font-weight-bold"><a
					href='/read${pageMaker.makeSearch(pageMaker.cri.page) }&bno=${boardVO.bno}'>${boardVO.title}</a></p>
			<p class="font-weight-bold">${boardVO.content}</p>
			<p class="text-primary"><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}"/></p>
			<p>${boardVO.viewcnt}</p>
		</div>
	</div>
	</c:forEach>

	<c:if test="${pageMaker.prev}">
		<a href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">«</a>
	</c:if>
	<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }"
		var="idx">
		<c:out value="${pageMaker.cri.page == idx?'':''}" />
		<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
	</c:forEach>
	<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		<a href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">
			» </a>
	</c:if>
	
<button id="newBtn" type="submit" class="btn btn-primary">글쓰기</button>


<script type="text/javascript">
	$(document).ready(
		function() {
			$('#newBtn').on("click", function(evt) {
				self.location = "regist";
			});
		});
</script>
</body>
</html>

