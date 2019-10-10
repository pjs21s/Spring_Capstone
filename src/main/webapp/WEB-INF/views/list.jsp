<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/header.jsp"%>
<!DOCTYPE html>
<html>
<body>
	<div class="container-fluid gedf-wrapper">
		<div><i class="fas fa-check"></i> 시간순으로 보기 <i class="fas fa-check"></i> 많이 읽은 순으로 보기 <i class="fas fa-check"></i> 좋아요 순으로 보기</div>
		<c:forEach items="${list}" var="boardVO">
			<!--Post-->
			<div class="card gedf-card border-0">
				<div class="card-header border-0">
					<div class="d-flex justify-content-between align-items-center">
						<div class="d-flex justify-content-between align-items-center">
							<div class="ml-2">
								<div class="h5 m-0">${boardVO.writer}</div>
							</div>
						</div>
						<div>
							<div class="dropdown">
								<button class="btn btn-link dropdown-toggle" type="button"
									id="gedf-drop1" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">
									<i class="fa fa-ellipsis-h"></i>
								</button>
								<div class="dropdown-menu dropdown-menu-right"
									aria-labelledby="gedf-drop1">
									<div class="h6 dropdown-header">설정</div>
									<a class="dropdown-item" href="#">저장</a> 
									<a class="dropdown-item" href="#">신고</a>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="card-body border-0">
					<div class="text-muted h7 mb-2">
						<small class="text-muted"><fmt:formatDate pattern="yyyy-MM-dd" value="${boardVO.regdate}"/></small>
					</div>
					<a class="card-link" href='/read${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${boardVO.bno}'>
						<p style="font-weight:bold;">${boardVO.title}</p></a>
					<span class="d-inline-block text-truncate">${boardVO.content}</span>
				</div>
			</div>
			<!--Post-->
			<br>
		</c:forEach>

	</div>
	<div class="container-fluid gedf-wrapper">
	<nav aria-label="Page navigation">
		<ul class="pagination">
			<c:if test="${pageMaker.prev}">
				<li class="page-item"><a class="page-link"
					href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li class="page-item"><c:out
						value="${pageMaker.cri.page == idx?'':''}" /> <a
					class="page-link" href="list${pageMaker.makeSearch(idx)}">${idx}</a></li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li class="page-item"><a class="page-link"
					href="list${pageMaker.makeSearch(pageMaker.endPage +1) }"> <span
						aria-hidden="true">&raquo;</span>
				</a></li>
			</c:if>
		</ul>
	</nav>
	</div>
	<div class="container-fluid gedf-wrapper">
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
		<input class="form-control mr-sm-2" type="search" placeholder="찾으실게 있으신가요?" aria-label="Search"  name='keyword' id="keywordInput" value='${cri.keyword }'>
		<button class="btn btn-outline-success my-2 my-sm-0 border-0" id="searchBtn" type="submit"><i class="fas fa-search"></i></button>
    </form>
    </div>
<script>
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
<%@ include file="/WEB-INF/views/footer.jsp" %>
</html>

