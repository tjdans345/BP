<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />    
    
<link rel="icon" href="${contextPath}/resources/main/img/fav-icon.png" type="image/x-icon" />
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>Sierra</title>
	<!-- Icon css link -->
	<link href="${contextPath}/resources/main/css/font-awesome.min.css" rel="stylesheet">
	<!-- Bootstrap -->
	<link href="${contextPath}/resources/main/css/bootstrap.min.css" rel="stylesheet">  
	<!-- Rev slider css -->
	<link href="${contextPath}/resources/main/vendors/revolution/css/settings.css" rel="stylesheet">
	<link href="${contextPath}/resources/main/vendors/revolution/css/layers.css" rel="stylesheet">
	<link href="${contextPath}/resources/main/vendors/revolution/css/navigation.css" rel="stylesheet">
	<!-- Extra plugin css -->
	<link href="${contextPath}/resources/main/vendors/owl-carousel/owl.carousel.min.css" rel="stylesheet">
	<link href="${contextPath}/resources/main/css/style.css" rel="stylesheet">
	<link href="${contextPath}/resources/main/css/responsive.css" rel="stylesheet">
	
	<header class="main_menu_area">
	    <nav class="navbar navbar-expand-lg navbar-light bg-light">
	        <a class="navbar-brand" href="${contextPath}/index.do"><img src="${contextPath}/resources/main/img/logo.png" alt=""></a>
	        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	            <span></span>
	            <span></span>
	            <span></span>
	        </button>
	
	        <div class="collapse navbar-collapse" id="navbarSupportedContent">
	            <ul class="navbar-nav">
	                <li class="nav-item active"><a class="nav-link" href="${contextPath}/index.do">HOME</a></li>
	                <li class="nav-item"><a class="nav-link" href="${contextPath}/about.do">ABOUT US</a></li>
	                <li class="nav-item"><a class="nav-link" href="${contextPath}/singerMain.sin">SINGER</a></li>
	                <li class="nav-item"><a class="nav-link" href="${contextPath}/busking.b">BUSKING</a></li>
	                <li class="nav-item"><a class="nav-link" href="${contextPath}/service.do">SERVICES</a></li>
	                <li class="nav-item"><a class="nav-link" href="${contextPath}/portfolio.do">PORTFOLIO</a></li>
	                <li class="nav-item"><a class="nav-link" href="${contextPath}/contact.do">CONTACT</a></li>
	                
		            <c:choose>
		            	<c:when test="${id == null}">
			                <li class="nav-item dropdown submenu">
			                    <a class="nav-link dropdown-toggle" href="${contextPath}/resources/main/#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			                    Login
			                    </a>
			                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
			                        <li class="nav-item"><a class="nav-link" href="${contextPath}/login.mem">LOGIN</a></li>
			                        <li class="nav-item"><a class="nav-link" href="${contextPath}/elements.do">ELEMENTS</a></li>
			                    </ul>
			                </li>
		                </c:when>
		                <c:otherwise>
		                	<li class="nav-item dropdown submenu">
			                    <a class="nav-link dropdown-toggle" href="${contextPath}/resources/main/#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			                    ${id}님
			                    </a>
			                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">

			                        <li class="nav-item"><a class="nav-link" href="${contextPath}/mypage.my">MY PAGE</a></li>
			                        <li class="nav-item"><a class="nav-link" href="${contextPath}/logout.mem">LOG OUT</a></li>
			                    </ul>
			                </li>
		                </c:otherwise>
		        	</c:choose>
	            </ul>
	        </div>
	    </nav>
	</header>