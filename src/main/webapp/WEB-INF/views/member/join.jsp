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
    <div id="preloader">
        <div class="loader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
            </svg>
        </div>
    </div>
    <div class="login-form-bg h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100">
                <div class="col-xl-6">
                    <div class="form-input-content">
                        <div class="card login-form mb-0">
                            <div class="card-body pt-5">                                
                                    <a class="text-center" href="index.html"> <h4>SIGN UP</h4></a>
                           		<form action="${contextPath}/addMember.mem" class="mt-5 mb-5 login-input">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="id" placeholder="아이디" required>
							            <button type="submit" class="btn btn-dark m-t-20">중복 확인</button>
                                    </div>                                
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="name" placeholder="이름" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" name="password" placeholder="비밀번호" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" name="password1" placeholder="비밀번호 확인" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="phone" placeholder="전화번호" required>
                                    </div>                                     
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="email" placeholder="이메일" required>
                                    </div> 

									<div class="form-group">
										<label class="mr-sm-2">성별</label>
										<div class="form-group">
											<label class="radio-inline mr-3"><input type="radio" name="gender" value="남성">남성</label>
											<label class="radio-inline mr-3"><input type="radio" name="gender" value="여성">여성</label>															
										</div>
									</div>
									<div class="form-group">
	                                    <label class="mr-sm-2">지역</label>
	                                    <select name="location" class="custom-select mr-sm-2" id="inlineFormCustomSelect">
	                                        <option selected="selected">지역을 선택하세요</option>
	                                        <option value="서울">서울</option>
	                                        <option value="부산">부산</option>
	                                        <option value="대구">대구</option>
	                                    </select>
                                    </div>
                                    <div class="form-group"></div>                                    
                                    <button type="submit" class="btn login-form__btn submit w-100">Sign in</button>
                                </form>
                                    <p class="mt-5 login-form__footer">계정이 있으신가요? <a href="${contextPath}/login.mem" class="text-primary">로그인 하기 </a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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