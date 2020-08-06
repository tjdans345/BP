<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
       <!-- 헤더 -->
       <jsp:include page="./inc/top.jsp" />
       <!-- 헤더 -->
       
    </head>
    <body>
        
        
        <!--================Banner Area =================-->
        <section class="banner_area">
            <div class="container">
                <div class="banner_inner_text">
                    <h2>Portfolio</h2>
                    <p>See our best work</p>
                </div>
            </div>
        </section>
        <!--================End Banner Area =================-->
        
        <!--================Portfolio Area =================-->
        <section class="portfolio_area">
            <div class="container">
                <div class="portfolio_filter">
                    <ul>
                        <li class="active" data-filter="*"><a href="#">All</a></li>
                        <li data-filter=".brand"><a href="#">Brand identity</a></li>
                        <li data-filter=".design"><a href="#">Design</a></li>
                        <li data-filter=".arc"><a href="#">Architecture</a></li>
                        <li data-filter=".photo"><a href="#">Photography</a></li>
                    </ul>
                </div>
            </div>
            <div class="ms_portfolio_inner">
                <div class="ms_p_item wd_25 brand arc photo">
                    <img src="${contextPath}/resources/${contextPath}/resources/img/portfolio/ms-portfolio/ms-p-1.jpg" alt="">
                </div>
                <div class="ms_p_item wd_25 brand arc photo">
                    <img src="${contextPath}/resources/img/portfolio/ms-portfolio/ms-p-2.jpg" alt="">
                </div>
                <div class="ms_p_item wd_50 brand">
                    <img src="${contextPath}/resources/img/portfolio/ms-portfolio/ms-p-3.jpg" alt="">
                </div>
                <div class="ms_p_item wd_25 brand arc photo">
                    <img src="${contextPath}/resources/img/portfolio/ms-portfolio/ms-p-4.jpg" alt="">
                </div>
                <div class="ms_p_item wd_25 brand arc photo">
                    <img src="${contextPath}/resources/img/portfolio/ms-portfolio/ms-p-5.jpg" alt="">
                </div>
                <div class="ms_p_item wd_50">
                    <img src="${contextPath}/resources/img/portfolio/ms-portfolio/ms-p-6.jpg" alt="">
                </div>
                <div class="ms_p_item wd_25 design arc">
                    <img src="${contextPath}/resources/img/portfolio/ms-portfolio/ms-p-7.jpg" alt="">
                </div>
                <div class="ms_p_item wd_25 design arc">
                    <img src="${contextPath}/resources/img/portfolio/ms-portfolio/ms-p-8.jpg" alt="">
                </div>
                <div class="ms_p_item wd_25 design arc">
                    <img src="${contextPath}/resources/img/portfolio/ms-portfolio/ms-p-9.jpg" alt="">
                </div>
                <div class="ms_p_item wd_25 design arc">
                    <img src="${contextPath}/resources/img/portfolio/ms-portfolio/ms-p-10.jpg" alt="">
                </div>
            </div>
        </section>
        <!--================End Portfolio Area =================-->
        
        <!--푸터-->
		<jsp:include page="./inc/footer.jsp" />
		<!--푸터-->
		
    </body>
</html>