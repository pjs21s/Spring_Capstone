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
						<form:form modelAttribute="userVO" method="post">
							<div class="form-group row">
								<div class="col-md-6 offset-md-4">
									<form:input path="email" class="form-control" name="email" placeholder="이메일"/>
									<form:errors path="email"/>
								</div>
							</div>

							<div class="form-group row">
								<div class="col-md-6 offset-md-4">
									<form:input path="password" type="password" id="password" class="form-control" name="password" placeholder="비밀번호"/>
									<form:errors path="password"/>
								</div>
							</div>
							
							<div class="form-group row">
								<div class="col-md-6 offset-md-4">
									<form:input path="name" type="text" id="name" class="form-control" name="name" placeholder="이름"/>
									<form:errors path="name"/>
								</div>
							</div>

							<div class="col-md-6 offset-md-4">
								<button type="submit" class="btn btn-primary">회원가입</button>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</html>