<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<div class="container">
    <!-- For demo purpose -->
	<div class="row text-center mb-5">
        <div class="col-lg-8 mx-auto">
            <h2>많이 읽은 질문</h2>
        </div>
	</div><!-- End -->
        <div class="row">
            <div class="col-lg-7 mx-auto">
                <!-- Timeline -->
                	<c:forEach items="${mainList}" var="boardVO">
                	<div class="bg-white rounded ml-3 p-4 shadow">
                		<a style="color:black;" class="card-link" href='/read?bno=${boardVO.bno}'>
                        <span class="h5 mb-0">${boardVO.title}</span></a>
                        <h6 class="mt-4">조회 ${boardVO.viewcnt}</h6>
						<span class="text-muted">
						<i class="fa fa-clock-o mr-1"></i><fmt:formatDate pattern="yyyy-MM-dd" value="${boardVO.regdate}"/>
						</span>
                        <p class="text-small mt-2 font-weight-light">${boardVO.content}</p>
                    </div>
                    <br>
                	</c:forEach>
                	<!-- End -->
            </div>
        </div>
</div>
</body>
</html>