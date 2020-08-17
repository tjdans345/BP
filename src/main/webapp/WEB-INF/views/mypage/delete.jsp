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
    <!-- Custom Stylesheet -->
    <link href="${contextPath}/resources/mypage/css/style.css" rel="stylesheet">

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
            Content body start
        ***********************************-->
        <div class="content-body">
            <div class="container-fluid">
                <!-- row -->
                <div class="row">
                	<div class="col-4"></div>
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">회원탈퇴하기</h4>
                                <div class="bootstrap-modal">
                                    <!-- Large modal -->
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-sm">탈퇴하기</button>
                                    <div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
                                        <div class="modal-dialog modal-sm">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title">비밀번호를 입력하세요</h5>
                                                    <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
                                                    </button>
                                                </div>
                                                <input type="password" class="modal-body" id="pwd">
                                                <form action="${contextPath}/del.my">
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                                                    <button type="submit" class="btn btn-primary">탈퇴하기</button>
                                                    <div style="color:red;">${msg}</div>
                                                </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4"></div>
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
                <p>Copyright &copy; Designed & Developed by <a href="https://themeforest.net/user/quixlab">Quixlab</a> 2018</p>
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

</body>

</html>