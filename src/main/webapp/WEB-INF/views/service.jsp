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
                    <h2>Services</h2>
                    <p>See what we do best</p>
                </div>
            </div>
        </section>
        <!--================End Banner Area =================-->
        
        <!--================End Banner Area =================-->
        <section class="service_feature">
            <div class="container">
                <div class="row feature_inner">
                    <div class="col-lg-4 col-sm-6">
                        <div class="feature_item">
                            <div class="f_icon">
                                <img src="${contextPath}/resources/img/icon/f-icon-1.png" alt="">
                            </div>
                            <h4>Brand Identity</h4>
                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. </p>
                            <a class="more_btn" href="${contextPath}/resources/#">Read More</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="feature_item">
                            <div class="f_icon">
                                <img src="${contextPath}/resources/img/icon/f-icon-2.png" alt="">
                            </div>
                            <h4>Online Marketing</h4>
                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. </p>
                            <a class="more_btn" href="${contextPath}/resources/#">Read More</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="feature_item">
                            <div class="f_icon">
                                <img src="${contextPath}/resources/img/icon/f-icon-3.png" alt="">
                            </div>
                            <h4>Social Media</h4>
                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. </p>
                            <a class="more_btn" href="${contextPath}/resources/#">Read More</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="feature_item">
                            <div class="f_icon">
                                <img src="${contextPath}/resources/img/icon/f-icon-4.png" alt="">
                            </div>
                            <h4>Video Support</h4>
                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. </p>
                            <a class="more_btn" href="${contextPath}/resources/#">Read More</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="feature_item">
                            <div class="f_icon">
                                <img src="${contextPath}/resources/img/icon/f-icon-5.png" alt="">
                            </div>
                            <h4>Fast Support</h4>
                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. </p>
                            <a class="more_btn" href="${contextPath}/resources/#">Read More</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="feature_item">
                            <div class="f_icon">
                                <img src="${contextPath}/resources/img/icon/f-icon-6.png" alt="">
                            </div>
                            <h4>Download test</h4>
                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. </p>
                            <a class="more_btn" href="${contextPath}/resources/#">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Banner Area =================-->
        
        <!--================Circle Chart Area =================-->
        <section class="circle_chart_area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-sm-6">
                        <div class="circle_progress circular style-polygon" data-percentage="75" data-thickness="3" data-reverse="true" data-empty-fill="transparent" data-start-color="#987dff" data-end-color="#7acaff">
                            <div class="circle_progress_inner">
                                <strong></strong>
                                <span class="percentage"></span>
                                <h4>Hard work</h4>
                            </div> 
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="circle_progress circular style-polygon" data-percentage="83" data-thickness="3" data-reverse="true" data-empty-fill="transparent" data-start-color="#987dff" data-end-color="#7acaff">
                            <div class="circle_progress_inner">
                                <strong></strong>
                                <span class="percentage"></span>
                                <h4>Creativity</h4>
                            </div> 
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="circle_progress circular style-polygon" data-percentage="25" data-thickness="3" data-reverse="true" data-empty-fill="transparent" data-start-color="#987dff" data-end-color="#7acaff">
                            <div class="circle_progress_inner">
                                <strong></strong>
                                <span class="percentage"></span>
                                <h4>Good luck</h4>
                            </div> 
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="circle_progress circular style-polygon" data-percentage="95" data-thickness="3" data-reverse="true" data-empty-fill="transparent" data-start-color="#987dff" data-end-color="#7acaff">
                            <div class="circle_progress_inner">
                                <strong></strong>
                                <span class="percentage"></span>
                                <h4>Development</h4>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Circle Chart Area =================-->
        
        <!--================Service Solution Area =================-->
        <section class="service_solution_area p_100">
            <div class="container">
                <div class="row s_solution_inner">
                    <div class="col-lg-6">
                        <div class="s_solution_item">
                            <div class="l_title">
                                <img src="${contextPath}/resources/img/icon/title-icon.png" alt="">
                                <h6>Discover the features</h6>
                                <h2>Simple solutions for complicated times</h2>
                            </div>
                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul.Cras ex mauris, ornare eget pretium sit amet, dignissim et turpis. Nunc nec maximus dui, vel suscipit dolor. Donec elementum velit a orci facilisis rutrum. Nam convallis vel erat id dictum. Sed ut risus in orci convallis viverra a eget nisi. Aenean pellentesque elit vitae eros dignissim ultrices. </p>
                            <div id="accordion" role="tablist" class="solution_collaps">
                                <div class="card">
                                    <div class="card-header" role="tab" id="headingOne">
                                        <h5 class="mb-0">
                                            <a data-toggle="collapse" href="${contextPath}/resources/#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            Cras ex mauris, ornare eget pretium sit amet, dignissim et turpis
                                            <i class="minus">-</i>
                                            <i class="plus">+</i>
                                            </a>
                                        </h5>
                                    </div>

                                    <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                                        <div class="card-body">
                                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" role="tab" id="headingTwo">
                                        <h5 class="mb-0">
                                            <a class="collapsed" data-toggle="collapse" href="${contextPath}/resources/#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                            Sed dapibus nunc vulputate mi fringilla, eu consequat
                                            <i class="minus">-</i>
                                            <i class="plus">+</i>
                                            </a>
                                        </h5>
                                    </div>
                                    <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                                        <div class="card-body">
                                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" role="tab" id="headingThree">
                                        <h5 class="mb-0">
                                            <a class="collapsed" data-toggle="collapse" href="${contextPath}/resources/#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                            Curabitur eu libero sed erat viverra gravida at id ex
                                            <i class="minus">-</i>
                                            <i class="plus">+</i>
                                            </a>
                                        </h5>
                                    </div>
                                    <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                                        <div class="card-body">
                                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Service Solution Area =================-->
        
        <!--푸터-->
		<jsp:include page="./inc/footer.jsp" />
		<!--푸터-->
		
    </body>
</html>