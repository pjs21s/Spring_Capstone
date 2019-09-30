<%@ page language="java" contentType="text/HTML;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ include file="/WEB-INF/views/home.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>글읽기</title>
</head>
<body>
	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<!-- Post Content Column -->
			<div class="col-lg-8">
				<!-- Title -->
				<h1 class="mt-4">${boardVO.title}</h1>
				<!-- Author -->
				<p class="lead">
					by <a href="#">${boardVO.writer}</a>
				</p>
				<hr>
				<!-- Date/Time -->
				<p class="text-primary">
					<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}" />
				</p>
				<hr>
				<!-- Preview Image -->
				<img class="img-fluid rounded" src="http://placehold.it/900x300"
					alt="">
				<hr>
				<!-- Post Content -->
				<p class="lead" name=content readonly="readonly">${boardVO.content}</p>
				<form>
					<button type="submit" class="btn btn-warning" formaction="modify"
						formmethod="get">수정</button>
					<button type="submit" class="btn btn-danger" formaction="remove"
						formmethod="post">삭제</button>
					<button type="submit" class="btn btn-primary" formaction="list"
						formmethod="get">목록</button>
				</form>
				<p>태그</p>
				<!-- Comments Form -->
				<div class="card my-4">
					<h5 class="card-header">답변하기</h5>
					<div class="card-body">
						<form>
							<div class="form-group">
								<textarea class="form-control" rows="3"></textarea>
							</div>
							<button type="submit" class="btn btn-primary">답변</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>