<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html class="h-100" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Quixlab - Bootstrap Admin Dashboard Template by Themefisher.com</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${contextPath}/resources/singer/images/favicon.png">
    <!-- Pignose Calender -->
    <link href="${contextPath}/resources/singer/plugins/pg-calendar/css/pignose.calendar.min.css" rel="stylesheet">
    <!-- Chartist -->
    <link rel="stylesheet" href="${contextPath}/resources/singer/plugins/chartist/css/chartist.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/singer/plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css">
    <!-- Custom Stylesheet -->
    <link href="${contextPath}/resources/singer/css/style.css" rel="stylesheet">
    
	<style>
	.before_join{
		text-align: center;
		color: purple;
	}
	
	</style>
</head>

<body class="h-100">
       <!-- 헤더 -->
       <jsp:include page="../inc/top.jsp" />
       <!-- 헤더 -->
    
    
        <section class="banner_area2">
            <div class="container">
                <div class="banner_inner_text2">

                </div>
            </div>
        </section>
    <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="loader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
            </svg>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->

    <div class="login-form-bg h-101">
    	<div>
    		<h1 class="before_join">회원가입 종류를 선택해 주세요</h1>
    	</div>
    	<br>
    	<br>
        <div class="container h-100">
            <div class="row justify-content-center h-100">
                <div class="col-xl-6">
                    <div class="form-input-content">
                        <div class="card login-form mb-0">
                            <div class="card-body pt-5">
								
                                  	<a href="${contextPath}/join0.mem" class="btn gradient-9 btn-lg border-0 btn-rounded px-5">일반회원 가입</a>
                                  	
                                	<a href="${contextPath}/join1.mem" class="btn gradient-4 btn-lg border-0 btn-rounded px-5" onclick="">버스커 가입</a>
                                	

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    

    

    <!--**********************************
        Scripts
    ***********************************-->
    <script src="${contextPath}/resources/singer/plugins/common/common.min.js"></script>
    <script src="${contextPath}/resources/singer/js/custom.min.js"></script>
    <script src="${contextPath}/resources/singer/js/settings.js"></script>
    <script src="${contextPath}/resources/singer/js/gleek.js"></script>
    <script src="${contextPath}/resources/singer/js/styleSwitcher.js"></script>
    
    <!-- 푸터  -->
    <jsp:include page="../inc/footer.jsp"/>
    <!-- 푸터  -->
</body>
</html>