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
    <link rel="icon" type="image/png" sizes="16x16" href="${contextPath}/resources/singer/images/favicon.png">
	    <!-- Custom Stylesheet -->
    <link href="${contextPath}/resources/singer/plugins/summernote/dist/summernote.css" rel="stylesheet">
	<!-- Custom Stylesheet -->
    <link href="${contextPath}/resources/singer/plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css" rel="stylesheet">
    <!-- Page plugins css -->
    <link href="${contextPath}/resources/singer/plugins/clockpicker/dist/jquery-clockpicker.min.css" rel="stylesheet">
    <!-- Color picker plugins css -->
    <link href="${contextPath}/resources/singer/plugins/jquery-asColorPicker-master/css/asColorPicker.css" rel="stylesheet">
    <!-- Date picker plugins css -->
    <link href="${contextPath}/resources/singer/plugins/bootstrap-datepicker/bootstrap-datepicker.min.css" rel="stylesheet">
    <!-- Daterange picker plugins css -->
    <link href="${contextPath}/resources/singer/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/singer/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <link href="${contextPath}/resources/singer/css/style.css" rel="stylesheet">

</head>

<body>
	
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

    
    <!-- 메인 start-->
    <div id="main-wrapper">

        <!--헤더 start-->
		<jsp:include page="../singer/sidebar/header.jsp" />
        <!-- 헤더 end -->
        <!-- 사이드바 start-->
        <jsp:include page="../singer/sidebar/sidebar.jsp" />
        <!--사이드바 end-->
        
        
        
        <!--본문 start-->
		<div class="content-body">
            <div class="row page-titles mx-0">
                <div class="col p-md-0">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">공연 일정</a></li>
                        <li class="breadcrumb-item active"><a href="javascript:void(0)">예약</a></li>
                    </ol>
                </div>
            </div>
            <div class="container-fluid">
           				<h4 class="card-title">Reservation Busking</h4>
                        <label class="m-t-20">공연 예약</label>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Location</h4>
                                
                                <div class="basic-form">
                                    <form>
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <label>도시</label>
                                            <select class="form-control" id="sel1">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-4">
                                            <label>동</label>
                                            <select class="form-control" id="sel1">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                            </select>
                                        </div>
                                        </div>
                                    </form>
                                
                                </div>
                            </div>
                        </div>
                    </div>
                	<div class = "col-12">
	                	<div class="card">
                            <div class="card-body">
	                            
                                <div class = "row">
                                
                                <div class="col-4">
	                                <h5 class="box-title m-t-30">DATE</h5>
	                                <p class="text-muted m-b-20">공연 일자</p>
	                                <div class="input-group">
	                                    <input type="text" class="form-control" id="datepicker-autoclose" placeholder="mm/dd/yyyy">
	                                    <span class="input-group-append"><span class="input-group-text"><i class="mdi mdi-calendar-check"></i></span></span>
                               		</div>
                               	</div>
                            	<div class="col-8">
                            		<h5 class="box-title m-t-30">TIME</h5>
	                                <div class = "row">
	                            		<div class="col-6">
			                                <p class="text-muted m-b-20">공연 시작 시간</p>
		                                    <div class="input-group">
		                                        <input class="form-control" id="single-input" placeholder="hh:mm"> <span class="input-group-append"><span class="input-group-text"><i class="fa fa-clock-o"></i></span></span>
		                                    </div>
			                            </div>
	                            		<div class="col-6">
			                                <p class="text-muted m-b-20">종료 시간</p>
		                                    <div class="input-group clockpicker" data-placement="bottom" data-align="top" data-autoclose="true">
		                                            <input type="text" class="form-control"  placeholder="hh:mm"> <span class="input-group-append"><span class="input-group-text"><i class="fa fa-clock-o"></i></span></span>
		                                    </div>
		                                </div>
	                                </div>    
	                            </div>
	                            </div>
                            </div>
                        </div>
                        
                	</div>
                	<div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="summernote">
                                    <h3>곡소개</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                
                    
                </div>
            </div>
            <!-- #/ container -->
        </div>
        <!--본문 end-->
        
        
        <!--Footer start-->
        <div class="footer">
            <div class="copyright">
                <p>Copyright &copy; Designed & Developed by <a href="${contextPath}/resources/singer/https:/themeforest.net/user/quixlab">Quixlab</a> 2018</p>
            </div>
        </div>
        <!-- Footer end-->
    </div>
    <!-- Main wrapper end-->

    <!--Scripts-->
    <script src="${contextPath}/resources/singer/plugins/common/common.min.js"></script>
    <script src="${contextPath}/resources/singer/js/custom.min.js"></script>
    <script src="${contextPath}/resources/singer/js/settings.js"></script>
    <script src="${contextPath}/resources/singer/js/gleek.js"></script>
    <script src="${contextPath}/resources/singer/js/styleSwitcher.js"></script>

    <script src="${contextPath}/resources/singer/plugins/moment/moment.js"></script>
    <script src="${contextPath}/resources/singer/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>
    <!-- Clock Plugin JavaScript -->
    <script src="${contextPath}/resources/singer/plugins/clockpicker/dist/jquery-clockpicker.min.js"></script>
    <!-- Color Picker Plugin JavaScript -->
    <script src="${contextPath}/resources/singer/plugins/jquery-asColorPicker-master/libs/jquery-asColor.js"></script>
    <script src="${contextPath}/resources/singer/plugins/jquery-asColorPicker-master/libs/jquery-asGradient.js"></script>
    <script src="${contextPath}/resources/singer/plugins/jquery-asColorPicker-master/dist/jquery-asColorPicker.min.js"></script>
    <!-- Date Picker Plugin JavaScript -->
    <script src="${contextPath}/resources/singer/plugins/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
    <!-- Date range Plugin JavaScript -->
    <script src="${contextPath}/resources/singer/plugins/timepicker/bootstrap-timepicker.min.js"></script>
    <script src="${contextPath}/resources/singer/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>

    <script src="${contextPath}/resources/singer/js/plugins-init/form-pickers-init.js"></script>


    <script src="${contextPath}/resources/singer/plugins/summernote/dist/summernote.min.js"></script>
    <script src="${contextPath}/resources/singer/plugins/summernote/dist/summernote-init.js"></script>
</body>

</html>