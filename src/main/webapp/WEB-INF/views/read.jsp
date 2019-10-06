<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<!-- Post Content Column -->
			<form>
			<div class="col-lg-8 form-group">
				<input class="form-control" type="text" name ="bno" value ="${boardVO.bno}" style="display:none;">
				<h1 class="mt-4">${boardVO.title}</h1>
				<p class="lead">by <a href="#">${boardVO.writer}</a></p>
				<p class="text-primary">
					<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}" />
				</p>
				<!-- Preview Image -->
				<img class="img-fluid rounded" src="http://placehold.it/900x300"/>

				<p class="lead" name="content" readonly>${boardVO.content}</p>
				<c:if test="${login.email == boardVO.writer}">
					<button type="submit" class="btn btn-warning" formaction="modify"
						formmethod="get">수정</button>
					<button type="submit" class="btn btn-danger" formaction="remove"
						formmethod="post">삭제</button>
				</c:if>	
					<button type="submit" class="btn btn-primary" formaction="list"
						formmethod="get">목록</button>
				</div>
				</form>
				<div>
				<p>태그</p>
				<span class="badge badge-primary">우울증</span>
				</div>	
				<!-- Comments Form -->
				<div class="card my-4">
					<h5 class="card-header border-0">답변하기</h5>
					<div class="card-body border-0">
						<form>
							<div class="form-group">
								<input class="form-control" type="text" name ="bno" value ="${boardVO.bno}" style="display:none;">
								<input class="form-control" type="text" name ="replyWriter" placeholder="작성자" value="${login.email}" style="display:none;" readonly>
								<textarea class="form-control" name ="replyText">${ReplyVO.replyText}</textarea>
							</div>
							<button type="submit" class="btn btn-primary" formaction="reply/write"
						formmethod="post">답변</button>
						</form>
					</div>
				</div>
			</div>
		</div>
</body>
</html>