<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="container">
		<div class="row">
			<!-- Post Content Column -->
			<form>
				<div class="col-lg-8 form-group">
					<input class="form-control" type="text" name ="bno" value="${boardVO.bno}" style="display:none;">
					<h1 class="mt-4">${boardVO.title}</h1>
					<h6 class="mt-4">조회 ${boardVO.viewcnt}</h6>
					<p class="lead">by ${boardVO.writer}</p>
					<p class="text-primary">
					<small class="text-muted"><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}"/></small>
					</p>
					<p>${boardVO.content}</p>
					<div>
					<c:if test="${login.name == boardVO.writer}">
						<button type="submit" class="btn btn-warning" formaction="modify"
							formmethod="get">수정</button>
						<button type="submit" class="btn btn-danger" formaction="remove"
							formmethod="post">삭제</button>
					</c:if>	
						<button type="submit" class="btn btn-primary" formaction="list"
							formmethod="get">목록</button>
					</div>
					
					<!-- <div class="border-0">
					<a class="btn btn-outline-primary border-0" href="#" role="button"><i class="fas fa-heart"></i></a>
					<a class="btn btn-outline-primary border-0" href="#" role="button"><i class="fa fa-mail-forward"></i></a>
					</div>	 -->
				</div>
			</form>
		</div>
		<!-- Comments Form -->
		<div class="card my-4">
			<h5 class="card-header border-0">답변하기</h5>
				<div class="card-body border-0">
					<form>
						<div class="form-group">
						<input class="form-control" type="text" name="bno" value ="${boardVO.bno}" style="display:none;">
						<input class="form-control" type="text" name="replyWriter" placeholder="작성자" value="${login.name}" style="display:none;" readonly>
						<c:if test="${not empty login}">
						<textarea class="form-control" name="replyText">${ReplyVO.replyText}</textarea>
						</c:if>
						<c:if test="${empty login}">
						<textarea class="form-control" name="replyText" placeholder="로그인 후 이용해주세요.">${ReplyVO.replyText}</textarea>
						</c:if>
						</div>
						<button type="submit" class="btn btn-primary" formaction="reply/write" formmethod="post">답변</button>
					</form>
				</div>
		</div>
		<!-- End Comments Form -->
		<div>
			<c:forEach items="${repList}" var="repList">
				<form>
					<div class="card my-4">
						<h5 class="card-header border-0">${repList.replyWriter}님의 답변</h5>
						<div class="card-body border-0">
							<div class="form-group">
								<small class="text-muted"><fmt:formatDate pattern="yyyy-MM-dd" value="${repList.regDate}"/></small>
								<input type="text" value ="${boardVO.bno}" style="display:none;">
								<input type="text" name="replyNo" value ="${repList.replyNo}" style="display:none;">
								<p class="lead">${repList.replyText}</p>
							</div>
							<c:if test="${login.name == repList.replyWriter}">
							<button type="submit" class="btn btn-danger" formaction="reply/delete" formmethod="post">삭제</button>
							</c:if>
						</div>
					</div>
				</form>
			</c:forEach>
		</div>
	</div>
</body>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</html>