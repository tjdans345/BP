<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />   
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Quixlab - Bootstrap Admin Dashboard Template by Themefisher.com</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${contextPath}/resources/mypage/images/favicon.png">
    <!-- Pignose Calender -->
    <link href="${contextPath}/resources/mypage/plugins/pg-calendar/css/pignose.calendar.min.css" rel="stylesheet">
    <!-- Chartist -->
    <link rel="stylesheet" href="${contextPath}/resources/mypage/plugins/chartist/css/chartist.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/mypage/plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css">
    <!-- Custom Stylesheet -->
    <link href="${contextPath}/resources/mypage/css/style.css" rel="stylesheet">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<style type="text/css">
.rounded-circle{
width:200px;}
</style>
</head>

<body>


    
    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">

  		<jsp:include page="./sidebar/header.jsp"/>

        <!--**********************************
            Sidebar start
        ***********************************-->
        <jsp:include page="./sidebar/sidebar.jsp" />
        <!--**********************************
            Sidebar end
        ***********************************-->

        <!--**********************************
            Content body start
        ***********************************-->
                     <div class="content-body">
            <!-- row -->

            <div class="container-fluid">
                <div class="row justify-content-center">
                	<div class="col-3"></div>
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="form-validation">
                                    <form class="form-valide" action="#" method="post">
                                       <div class="text-center">
                                    	<img alt="" class="rounded-circle mt-4" src="${contextPath}/resources/mypage/images/userimage/${meminfo.profile_img}">
                               		   </div>
                               		   <input type="hidden" name = "userimage" value="">
								   	   <input type="file" id="img_file" name="userimage_new" onclick="click" accept=""/><br><br>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-id">아이디<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-id" name="val-id" placeholder="${meminfo.id}" readonly>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-username">이름<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-username" name="val-username" placeholder="${meminfo.name}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-password">비밀번호<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="password" class="form-control" id="val-password" name="val-password" placeholder="${meminfo.password}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-confirm-password">비밀번호 확인<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="password" class="form-control" id="val-confirm-password" name="val-confirm-password" placeholder="${meminfo.password}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">이메일<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                 <input type="text" class="form-control" id="val-email" name="val-email" placeholder="${meminfo.email}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-number">연락처<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-number" name="val-number" placeholder="${meminfo.phone}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-skill">지역<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6"> 
                                            	<c:if test="${meminfo.location == 'seoul'}">                                         	
                                                <select class="form-control" id="val-skill" name="val-skill">
                                                    <option value="seoul" selected="selected">서울</option>
                                                    <option value="busan">부산</option>
                                                    <option value="daegu">대구</option>
                                                </select>
                                                </c:if>
                                                <c:if test="${meminfo.location == 'busan'}">                                          	
                                                <select class="form-control" id="val-skill" name="val-skill">
                                                    <option value="seoul">서울</option>
                                                    <option value="busan" selected="selected">부산</option>
                                                    <option value="daegu">대구</option>
                                                </select>
                                                </c:if>
                                                <c:if test="${meminfo.location == 'daegu'}">                                          	
                                                <select class="form-control" id="val-skill" name="val-skill">
                                                    <option value="seoul">서울</option>
                                                    <option value="busan">부산</option>
                                                    <option value="daegu" selected="selected"> 대구</option>
                                                </select>
                                                </c:if>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-8 ml-auto">
                                                <button type="submit" class="btn btn-primary">Submit</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                  <div class="col-3"></div>
                </div>
            </div>
            <!-- #/ container -->
        </div>
        <!--**********************************
            Content body end
        ***********************************-->
        
        
        <!--**********************************
            Footer start
        ***********************************-->
        <div class="footer">
            <div class="copyright">
                <p>Copyright &copy; Designed & Developed by <a href="${contextPath}/resources/mypage/https:/themeforest.net/user/quixlab">Quixlab</a> 2018</p>
            </div>
        </div>
        <!--**********************************
            Footer end
        ***********************************-->
    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->

    <!--**********************************
        Scripts
    ***********************************-->
    <script src="${contextPath}/resources/mypage/plugins/common/common.min.js"></script>
    <script src="${contextPath}/resources/mypage/js/custom.min.js"></script>
    <script src="${contextPath}/resources/mypage/js/settings.js"></script>
    <script src="${contextPath}/resources/mypage/js/gleek.js"></script>
    <script src="${contextPath}/resources/mypage/js/styleSwitcher.js"></script>
    
    <script src="${contextPath}/resources/mypage/plugins/validation/jquery.validate.min.js"></script>
    <script src="${contextPath}/resources/mypage/plugins/validation/jquery.validate-init.js"></script>


</body>

</html>