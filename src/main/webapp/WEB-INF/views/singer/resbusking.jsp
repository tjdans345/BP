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

<!-- <script> $(document).ready(function() { $('#summernote').summernote(); }); </script>
 -->
 
 
 
<script type="text/javascript"	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
  $("#loc1").change(function(){
	  var loc1 = $("#loc1").val();
	  
	  /* 
	  if(loc1==0){
	  $('#loc2').attr('disabled', 'disabled');
	  }else{
	  $('#loc2').removeAttr('disabled');
	  }
	   */
	   $('#loc2').removeAttr('disabled');
		  
	   
	   
	  $.ajax({
	      url:"loc2.b",
	      type:'POST',
	      data: {loc1 : loc1},
		  dataType : "json",
		
	      success:function(data){
	    	  $('#loc2').html("");
	    	  $('#loc2').append("<option value='0'>선택해주세요</option>");
	    	  for(i=0;i<data.length;i++){
	    		  var loc2 = decodeURIComponent(data[i].loc2); 
		          $('#loc2').append("<option value="+loc2+">"+loc2+"</option>");
		          }
	      },
	      error:function(date){
	    	  alert("실패!");    	  
	      }
	});
  });
  
  $("#loc2").change(function(){

	  $('#loc3').removeAttr('disabled');
	  
	  var loc1 = $("#loc1").val();
	  console.log(loc1)
	  var loc2 = $("#loc2").val();
	  $.ajax({
	      url:"loc3.b",
	      type:'POST',
	      data: {loc1 : loc1, loc2 : loc2},
		  dataType : "json",
		
	      success:function(data){ 
	    	  $('#loc3').html("");
	    	  $('#loc3').append("<option value='0'>선택해주세요</option>");
	    	  for(i=0;i<data.length;i++){
	    		  var loc3 = decodeURIComponent(data[i].loc3); 
		          $('#loc3').append("<option value="+loc3+">"+loc3+"</option>");
		          }
	      },
	      error:function(date){
	    	  alert("실패!");    	  
	      }
	});
  });
  
  
  
});
</script>










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
                        <form action="${contextPath}/insertbusking.b" method="post">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Location</h4>
                                
                                <div class="basic-form">
                                    
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <label>도시</label>
                                            <select class="form-control" name="loc1" id = "loc1">
                                                <option value="0">선택해주세요</option>
                                                <c:forEach var = "Loc1List" items="${Loc1List }">
                                                <option value="${Loc1List.loc1}">${Loc1List.loc1}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        
                                        
                                        <div class="col-lg-4">
                                            <label>동</label>
                                            <select class="form-control" name="loc2" id = "loc2" disabled="disabled">
                                                <option value="0">선택해주세요</option>
                                                
                                            </select>
                                        </div>
                                        <div class="col-lg-4">
                                            <label>버스킹 존</label>
                                            <select class="form-control" name = "loc3" id = "loc3" disabled="disabled">
                                                <option value="0">선택해주세요</option>
                                            </select>
                                        </div>
                                        </div>
                                    
                                
                                </div>
                            </div>
                        </div>
                    </div>
                	<div class = "col-12">
	                	<div class="card">
                            <div class="card-body">
	                            
                                <div class = "row">
                                
                                <div class="col-12">
	                                <h5 class="box-title m-t-30">DATE</h5>
	                                
	                                <div class = "row">
	                            		<div class="col-4">
			                                <p class="text-muted m-b-20">공연 시작 시간</p>
		                                    <div class="form-group">
		                                        <input type="datetime-local" class="form-control" name = "stime">
		                                    </div>
			                            </div>
			                            
			                            
	                            		<div class="col-4">
			                                <p class="text-muted m-b-20">종료 시간</p>
		                                    <div class="form-group">
		                                        <input type="datetime-local" class="form-control" name = "etime" >
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
                            
                           		<!-- <input type="text" class="form-control" placeholder="제목" name = "subject"><br>
                                <textarea id="summernote" class="summernote"> 곡 소개 </textarea><br> -->
                                <div class="text-right">
                                    <button type="submit" class="btn btn-info">Submit</button>
<!--                                     <button type="reset" class="btn btn-dark">Reset</button> -->
                                </div>
                            </div>
                        </div>
                    </div>
                
                    
                </div>
                
                </form>
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