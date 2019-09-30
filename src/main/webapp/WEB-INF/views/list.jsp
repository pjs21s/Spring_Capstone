<%@ page language="java" contentType="text/HTML;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<%@ include file="/WEB-INF/views/home.jsp"%>
<!DOCTYPE html>
<html>
<body>
	<div class="container-fluid gedf-wrapper">
		<c:forEach items="${list}" var="boardVO">
			<!--- \\\\\\\Post-->
			<div class="card gedf-card">
				<div class="card-header">
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
				<div class="card-body">
					<div class="text-muted h7 mb-2">
						<p class="text-primary"><fmt:formatDate pattern="yyyy-MM-dd" value="${boardVO.regdate}"/></p>
					</div>
					<a class="card-link" href='/read${pageMaker.makeSearch(pageMaker.cri.page) }&bno=${boardVO.bno}'>
						<h5 class="card-title">${boardVO.title}</h5>
					</a>

					<p class="card-text">${boardVO.content}</p>
				</div>
				<div class="card-footer">
					<a href="#" class="card-link"><i class="fa fa-gittip"></i>좋아요</a>
					<a href="#" class="card-link"><i class="fa fa-comment"></i>
						답변</a> <a href="#" class="card-link"><i
						class="fa fa-mail-forward"></i>공유</a>
				</div>
			</div>
			<!-- Post /////-->
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
	<button id="newBtn" type="submit" class="btn btn-primary">글쓰기</button>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#newBtn').on("click", function(evt) {
				self.location = "regist";
			});
		});
	</script>
</body>
</html>

