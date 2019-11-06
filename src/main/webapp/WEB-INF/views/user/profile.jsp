<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-offset-2 col-md-8 col-lg-offset-3 col-lg-6">
    	 <div class="well profile">
            <div class="col-sm-12">
                <div class="col-xs-12 col-sm-8">
                    <h2>${login.email}</h2>
                   <span>기여도 : ${login.userpoint}</span>
                    <!-- <button class="btn btn-success btn-block"><span class="fa fa-plus-circle"></span> Follow </button>
                    <p><strong>전공:</strong>
                        <span class="badge badge-primary">Html5</span> 
                    </p> -->
                </div>             
            </div>            
            <div class="col-xs-12 divider text-center">
                <!-- <div class="col-xs-12 col-sm-4 emphasis">
                    <h2><strong> 20,7K </strong></h2>                    
                    <p><small>답변현황</small></p>
                    
                </div>
                <div class="col-xs-12 col-sm-4 emphasis">
                    <h2><strong>245</strong></h2>                    
                    <p><small>포인트</small></p>
                </div> -->
                <div class="col-xs-12 col-sm-4 emphasis">
                    <div class="btn-group dropup btn-block">
                      <button type="button" class="btn btn-primary"><span class="fa fa-gear"></span>더보기</button>
                      <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span class="caret"></span>
                      </button>
                      <ul class="dropdown-menu" role="menu">
                        <li><a class="dropdown-item" href="modify">회원정보 수정</a></li>
                        <li><a class="dropdown-item" href="withdrawal">회원탈퇴</a></li>
                      </ul>
                    </div>
                </div>
            </div>
    	 </div>                 
		</div>
	</div>
</div>
</body>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</html>