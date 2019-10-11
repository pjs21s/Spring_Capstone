<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<div class="container py-5">
    <!-- For demo purpose -->
	<div class="row text-center mb-5">
        <div class="col-lg-8 mx-auto">
            <h1 class="display-4">많이 읽은 질문</h1>
        </div>
	</div><!-- End -->
        <div class="row">
            <div class="col-lg-7 mx-auto">
                <!-- Timeline -->
                <ul>
                	<c:forEach items="${mainList}" var="boardVO">
                	<li class="bg-white rounded ml-3 p-4 shadow">
                        <a class="card-link" href='/read${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${boardVO.bno}'>
                        <h2 class="h5 mb-0">${boardVO.title}</h2></a>
                        <h6 class="mt-4">조회 ${boardVO.viewcnt}</h6>
						<span class="small text-gray"><i class="fa fa-clock-o mr-1"></i>${boardVO.regdate}</span>
                        <p class="text-small mt-2 font-weight-light">${boardVO.content}</p>
                    </li>
                	</c:forEach>                   
                </ul><!-- End -->
            </div>
        </div>
</div>
</body>
</html>