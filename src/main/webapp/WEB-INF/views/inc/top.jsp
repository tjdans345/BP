<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />    
    
 <link rel="icon" href="${contextPath}/resources/img/fav-icon.png" type="image/x-icon" />
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Sierra</title>

        <!-- Icon css link -->
        <link href="${contextPath}/resources/css/font-awesome.min.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
        
        <!-- Rev slider css -->
        <link href="${contextPath}/resources/vendors/revolution/css/settings.css" rel="stylesheet">
        <link href="${contextPath}/resources/vendors/revolution/css/layers.css" rel="stylesheet">
        <link href="${contextPath}/resources/vendors/revolution/css/navigation.css" rel="stylesheet">
        
        <!-- Extra plugin css -->
        <link href="${contextPath}/resources/vendors/owl-carousel/owl.carousel.min.css" rel="stylesheet">
        
        <link href="${contextPath}/resources/css/style.css" rel="stylesheet">
        <link href="${contextPath}/resources/css/responsive.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="${contextPath}/resources/https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="${contextPath}/resources/https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        
           <!--================Header Menu Area =================-->
        <header class="main_menu_area">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="${contextPath}/resources/#"><img src="${contextPath}/resources/img/logo.png" alt=""></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav">
                        <li class="nav-item active"><a class="nav-link" href="${contextPath}/index.do">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="${contextPath}/about.do">About Us</a></li>
                        <li class="nav-item"><a class="nav-link" href="${contextPath}/service.do">Services</a></li>
                        <li class="nav-item"><a class="nav-link" href="${contextPath}/portfolio.do">Portfolio</a></li>
                        <li class="nav-item dropdown submenu">
                            <a class="nav-link dropdown-toggle" href="${contextPath}/resources/#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Blog
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li class="nav-item"><a class="nav-link" href="${contextPath}/blog.do">Blog</a></li>
                                <li class="nav-item"><a class="nav-link" href="${contextPath}/singleblog.do">Blog Details</a></li>
                                <li class="nav-item"><a class="nav-link" href="${contextPath}/elements.do">Elements</a></li>
                            </ul>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="${contextPath}/contact.do">Contact</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <!--================End Header Menu Area =================-->