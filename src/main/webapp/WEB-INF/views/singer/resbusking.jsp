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
	var Ca = /\+/g; //공백이 + 가 되는것을 다시 변환
	
	$("#loc1").change(function(){
		var loc1 = $("#loc1").val();
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
		    		var loc2 = decodeURIComponent(data[i].loc2.replace(Ca," ")); //디코딩
			        $('#loc2').append("<option value="+loc2+">"+loc2+"</option>");
				}
		    	$('#loc3').append("<option value='0'>선택해주세요</option>");
		    	$('#loc3').attr('disabled',true);
		    },
			error:function(data){
				alert("실패!");    	  
		    }
		});
	});
	
	$("#loc2").change(function(){
		var loc1 = $("#loc1").val();
		var loc2 = $("#loc2").val();
		$('#loc3').removeAttr('disabled');
		$.ajax({
			url:"loc3.b",
			type:'POST',
			data: {loc1 : loc1, loc2 : loc2},
			dataType : "json",
				
			success:function(data){ 
				$('#loc3').html("");
				//$('#loc3').append("<option value='0'>선택해주세요</option>");
				for(i=0;i<data.length;i++){
					var loc3 = decodeURIComponent(data[i].loc3.replace(Ca," ")); //디코딩
					$('#loc3').append("<option value="+loc3+">"+loc3+"</option>");
				}
			},
			error:function(data){
				alert("실패!");    	  
			}
		});
	});
	
 	$("#date").change(function() {
		var date = $("#date").val();
		$.ajax({
			url:"date.b",
			trpe:'POST',
			data: {date : date},
			dataType : "json",
			
			success:function(data){
				alert("성공!");  

				for(i=10;i<=23;i++){
				$('#s'+i).removeAttr('disabled');
				$('#e'+i).removeAttr('disabled');
				}
				
				for(i=0;i<data.length;i++){
				$('#s'+data[i].stime).attr('disabled',true);
				$('#e'+data[i].stime).attr('disabled',true);
				}
				/* 
				
				$('#stime').html("");
				for(i=0;i<data.length;i++){
					$('#stime').append("<option value="+data[i].stime+">"+data[i].stime+"</option>");
				} */
			},
			error:function(data){
				alert("실패!");   

			}
		});
	}); 
 	
 	$("#stime").change(function() {
 		var date = $("#date").val();
 		var stime = $("#stime").val();
		$.ajax({
			url:"date.b",
			trpe:'POST',
			data: {date : date},
			dataType : "json",
			success:function(data){
				for(i=10;i<=23;i++){
				$('#e'+i).removeAttr('disabled');
				}
				
				
				for(i=0;i<data.length;i++){
				$('#e'+data[i].stime).attr('disabled',true);
				}
				
				for(i=10;i<stime;i++){
					$('#e'+i).attr('disabled',true);
				}
				
			},
			error:function(data){
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
			                                <p class="text-muted m-b-20">공연 일자</p>
		                                    <div class="form-group">
		                                        <input type="date" class="form-control" name = "date"id = "date">
		                                    </div>
			                            </div>
			                            <div class="col-4">
			                                <p class="text-muted m-b-20">시작시간</p>
		                                    <select class="form-control" name="stime" id="stime">
			                            		<option value="10" id="s10">10:00</option>
			                            		<option value="11" id="s11">11:00</option>
			                            		<option value="12" id="s12">12:00</option>
			                            		<option value="13" id="s13">13:00</option>
			                            		<option value="14" id="s14">14:00</option>
			                            		<option value="15" id="s15">15:00</option>
			                            		<option value="16" id="s16">16:00</option>
			                            		<option value="17" id="s17">17:00</option>
			                            		<option value="18" id="s18">18:00</option>
			                            		<option value="19" id="s19">19:00</option>
			                            		<option value="20" id="s20">20:00</option>
			                            		<option value="21" id="s21">21:00</option>
			                            		<option value="22" id="s22">22:00</option>
			                            	</select>
			                            </div>
                                            
	                            		<div class="col-4">
			                                <p class="text-muted m-b-20">종료 시간</p>
		                                    <div class="form-group">		                                    
		                                    <select class="form-control" name="etime" id="etime">
			                            		<option value="10" id="e10">10:59</option>
			                            		<option value="11" id="e11">11:59</option>
			                            		<option value="12" id="e12">12:59</option>
			                            		<option value="13" id="e13">13:59</option>
			                            		<option value="14" id="e14">14:59</option>
			                            		<option value="15" id="e15">15:59</option>
			                            		<option value="16" id="e16">16:59</option>
			                            		<option value="17" id="e17">17:59</option>
			                            		<option value="18" id="e18">18:59</option>
			                            		<option value="19" id="e19">19:59</option>
			                            		<option value="20" id="e20">20:59</option>
			                            		<option value="21" id="e21">21:59</option>
			                            		<option value="22" id="e22">22:59</option>
			                            		<option value="23" id="e23">22:59</option>
			                            	</select>
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