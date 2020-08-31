<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />       
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<table border="1" align="center" style="margin-top: 2em;">
	<tr>
		<td>ID</td>	
		<td>페이지 이동</td>
	</tr>
	<c:forEach var="list" items="${singerList}">
	<tr>
		<td width="35">${list.id}</td> 
		<td><input type="button" onclick="location.href='${contextPath}/user.sin?id=${list.id}'" value="페이지이동" /></td>
	</tr>
	</c:forEach>
	</table>










</body>
</html>