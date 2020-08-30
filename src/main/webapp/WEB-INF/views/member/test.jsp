<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.rs{
	border: 10px dotted black;
	padding: 30px;
	font-size: 3rem;
}
.rs-msg{
	border: 10px dotted pink;
	padding: 30px;
	font-size: 3rem;
}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
function callByAjax() {
	var form = document.form1;
	
	var num1 = form.num1.value;
	var num2 = form.num2.value;
	
	var action = form.action;
	
	
	$.get(
			'./doplus.mem', {
		num1:num1,
		num2:num2
	},
	function(data) {
		$('.rs').empty().append(data);
	},
	'html'
	);
	

}
</script>

</head>
<body>
	<h1>메인입니다</h1>
	
	<form name="form1" action="${contextPath}/doplus.mem" method="get">
		<div>
			<input type="text" name="num1" placeholder="숫자1"/>
		</div>
		<div>
			<input type="text" name="num2" placeholder="숫자2"/>
		</div>
		<div>
			<input type="submit" value="더하기">
		</div>
		<div>
			<input type="button" value="더하기">
		</div>		
		<div>
			<input onclick="callByAjax();" type="button" value="더하기v2"/>
		</div>
	</form>
	
	<h1>더하기 결과</h1>
	
	<div class="rs"></div>
	
	<h1>더하기 결과 메세지</h1>
	
	<div class="rs-msg"></div>
</body>
</html>