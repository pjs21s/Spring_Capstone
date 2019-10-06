<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<div class="cotainer">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header border-0" style="font-weight:bold;">회원가입</div>
					<div class="card-body">
						<form method="post">
							<div class="form-group row">
								<div class="col-md-6 offset-md-4">
									<input type="text" id="email_address" class="form-control"
										name="email" placeholder="이메일" required autofocus>
								</div>
							</div>

							<div class="form-group row">
								<div class="col-md-6 offset-md-4">
									<input type="password" id="password" class="form-control"
										name="password" placeholder="비밀번호" required>
								</div>
							</div>
							
							<div class="form-group row">
								<div class="col-md-6 offset-md-4">
									<input type="text" id="name" class="form-control"
										name="name" placeholder="이름" required>
								</div>
							</div>

							<div class="col-md-6 offset-md-4">
								<button type="submit" class="btn btn-primary">회원가입</button>
							</div>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</html>