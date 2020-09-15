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
<script type="text/javascript">

	$(document).ready(function(){
		$("#editbtn").click(function(){
			var pass = $("#password").val();
			var pass2 = $("#newpassword").val();
			var pass3 = $("#newpasswordck").val();
			
			if(pass!="" && pass2!="" && pass3!=""){
				if(confirm("수정하시겠습니까?")){
					document.form.action="${contextPath}/passedit2.my";
					document.form.submit();
				}
			}else{
				if(pass==""){
					alert("현재 비밀번호를 입력하세요.");
					document.form.password.focus();
					return;
				}
				if(pass2==""){
					alert("변경하실 비밀번호를 입력하세요.");
					document.form.password2.focus();
					return;
				}
				if(pass3==""){
					alert("변경하실 비밀번호 확인을 입력하세요.");
					document.form.password3.focus();
					return;
				}
			}	
		});
		
		
	});
	
	/* $(function(){
		var c_pwd = RegExp(/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/);
		$('#newpassword').keyup(function(){
			if(!c_pwd.test($("#newpassword").val())){
				$('span[name=c_pwd]').text('');
				$('span[name=c_pwd]').html("<span style='color:red;'><i class='fa fa-remove'>최소 8자리 숫자, 문자, 특수문자 각각 1개 이상 포함</i></span>");
		 	}else{
				$('span[name=c_pwd]').text('');
		  		$('span[name=c_pwd]').html("<span style='color:blue;'><i class='fa fa-check'></i></span>");
		  	}
			$('span[name=c_pwd2]').text('');
	  	});
		$("#newpassword").blur(function() { 
			if(!c_pwd.test($("#newpassword").val())){
				 $("#newpassword").val("");
			}
		});

		$('#newpasswordck').keyup(function(){
			if($('#newpassword').val()!=$('#newpasswordck').val()){
		    	$('span[name=c_pwd2]').text('');
		    	$('span[name=c_pwd2]').html("<span style='color:red;'><i class='fa fa-remove'></i></span>");
			}else{
		    	$('span[name=c_pwd2]').text('');
		    	$('span[name=c_pwd2]').html("<span style='color:blue;'><i class='fa fa-check'></i></span>");
		  	}
		}); 
		$("#newpasswordck").blur(function() {
			if($('#newpassword').val()!=$('#newpasswordck').val()){
				$("#newpasswordck").val("");
			}
		});
	});	 */


</script>
<c:if test="${msg!=null && msg!=''}">
	<script type="text/javascript">
		window.alert('${msg}');
	</script>
</c:if>


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
                                    <form class="form-valide" method="post" name="form">
                                   	    <div class="text-center">
                                  			 <img src="${contextPath}/resources/mypage/images/userimage/${meminfo.profile_img}" class="rounded-circle" alt="">
                                   			 <h5>${meminfo.id}</h5><br>
                                		</div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-password">현재 비밀번호<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="password" class="form-control" id="password" name="password"  placeholder="현재 비밀번호 입력 " value="">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-password">변경할 비밀번호<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="password" class="form-control" id="newpassword" name="password2" placeholder="변경할 비밀번호 입력" value="">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-confirm-password">변경할 비밀번호 확인<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="password" class="form-control" id="newpasswordck" name="password3" placeholder="변경할 비밀번호 재확인">
                                            </div>
                                        </div>      
                                        <div class="form-group row">
                                            <div class="col-lg-8 ml-auto">
                                                <button type="button" class="btn btn-primary" id="editbtn">수정</button>
                                                <button type="reset" class="btn btn-primary">취소</button>
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
    
<%--     <script src="${contextPath}/resources/mypage/plugins/validation/jquery.validate.min.js"></script>
    <script src="${contextPath}/resources/mypage/plugins/validation/jquery.validate-init.js"></script>
 --%>

</body>

</html>