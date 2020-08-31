<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<c:set var="contextPath" value="${pageContext.request.contextPath}" />    
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
       <!-- 헤더 -->
       <jsp:include page="../inc/top.jsp" />
       <!-- 헤더 -->    
       
       
    
       
       
           
       
    </head>
    <body>
     
        
        <!--================Banner Area =================-->
        <section class="banner_area">
            <div class="container">
                <div class="banner_inner_text">
                    <h2>Busking</h2>
                    <p>버스킹 일정</p>
                </div>
            </div>
        </section>
        <!--================End Banner Area =================-->
        
        <!--================Blog Main Area =================-->
        <section class="blog_main_area p_100">
            <div class="container">
                <div class="row">
                
                <div id="map" style="width:100%;height:350px;"></div>
                <div class="col-lg-12">
                
                <a href="">전체 공연 보기(지난공연보기 )</a>
                
                
                </div>
                
                
                
                    <div class="col-lg-9">
                        <div class="blog_main_inner">


<%-- 
							
                            <c:if test="${resBisking == null }">
                             <h3>공연 예정이 없습니다.</h3>
                            </c:if>

 --%>                            
                            <c:forEach var="resBusking" items="${resBusking }">
                            <div class="blog_main_item">
                                <div class="blog_img">
                                    <img class="img-fluid" src="${contextPath}/resources/main/img/blog/blog-1.jpg" alt="">
                                    <div class="blog_date">
                                        <h4><fmt:formatDate value="${resBusking.date}" pattern="dd "/></h4>
                                        <h5><fmt:formatDate value="${resBusking.date}" pattern="MM.yyyy E"/>요일</h5>
                                    </div>
                                </div>
                                <div class="blog_text">
                                    <a href="#"><h4>${resBusking.sid } 공연자  | ${resBusking.loc1} ${resBusking.loc2} ${resBusking.loc3}</h4></a>
                                    <div class="blog_author">
                                        ${resBusking.stime}:00~${resBusking.etime}:59
                                    </div>
                                    <p>공연 소개 ? </p>
                                    <a class="more_btn" href="#">Read More</a>
                                </div>
                            </div>
                            
                            </c:forEach >
       
                            
                            <%-- 
                            <div class="blog_main_item">
                                <div class="blog_img">
                                    <img class="img-fluid" src="${contextPath}/resources/main/img/blog/blog-2.jpg" alt="">
                                    <div class="blog_date">
                                        <h4>29</h4>
                                        <h5>October, 2017</h5>
                                    </div>
                                </div>
                                <div class="blog_text">
                                    <a href="#"><h4>Let us introduce you the best apps</h4></a>
                                    <div class="blog_author">
                                        <a href="#">By Lore Papp-Dinea</a>
                                        <a href="#">Design</a>
                                    </div>
                                    <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. </p>
                                    <a class="more_btn" href="#">Read More</a>
                                </div>
                            </div>
                             --%>
                            
                            
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="blog_right_sidebar">
                            <aside class="r_widget search_widget">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search" aria-label="Search">
                                    <span class="input-group-btn">
                                        <button class="btn btn-secondary" type="button"><i class="fa fa-search"></i></button>
                                    </span>
                                </div>
                            </aside>
                            <aside class="r_widget categories_widget">
                                <div class="r_w_title">
                                    <h3>Categories</h3>
                                </div>
                                <ul>
                                    <li><a href="#">Vestibulum maximus</a></li>
                                    <li><a href="#">Nisi eu lobortis pharetra</a></li>
                                    <li><a href="#">Orci quam accumsan</a></li>
                                    <li><a href="#">Auguen pharetra massa</a></li>
                                    <li><a href="#">Tellus ut nulla</a></li>
                                    <li><a href="#"> Etiam egestas viverra </a></li>
                                </ul>
                            </aside>
                            <aside class="r_widget insta_widget">
                                <div class="r_w_title">
                                    <h3>Instagram</h3>
                                </div>
                                <ul>
                                    <li><a href="https://www.instagram.com/?hl=en">
                                        <img class="img-fluid" src="${contextPath}/resources/main/img/instagram/right-instagram/r-in-1.jpg" alt="">
                                    </a></li>
                                    <li><a href="https://www.instagram.com/?hl=en">
                                        <img class="img-fluid" src="${contextPath}/resources/main/img/instagram/right-instagram/r-in-2.jpg" alt="">
                                    </a></li>
                                    <li><a href="https://www.instagram.com/?hl=en">
                                        <img class="img-fluid" src="${contextPath}/resources/main/img/instagram/right-instagram/r-in-3.jpg" alt="">
                                    </a></li>
                                    <li><a href="https://www.instagram.com/?hl=en">
                                        <img class="img-fluid" src="${contextPath}/resources/main/img/instagram/right-instagram/r-in-4.jpg" alt="">
                                    </a></li>
                                    <li><a href="https://www.instagram.com/?hl=en">
                                        <img class="img-fluid" src="${contextPath}/resources/main/img/instagram/right-instagram/r-in-5.jpg" alt="">
                                    </a></li>
                                    <li><a href="https://www.instagram.com/?hl=en">
                                        <img class="img-fluid" src="${contextPath}/resources/main/img/instagram/right-instagram/r-in-6.jpg" alt="">
                                    </a></li>
                                </ul>
                            </aside>
                            <aside class="r_widget tag_widget">
                                <div class="r_w_title">
                                    <h3>Tags</h3>
                                </div>
                                <ul>
                                    <li><a href="#">branding</a></li>
                                    <li><a href="#">identity</a></li>
                                    <li><a href="#">design</a></li>
                                    <li><a href="#">inspiration</a></li>
                                    <li><a href="#">web design</a></li>
                                    <li><a href="#">video</a></li>
                                    <li><a href="#">photography</a></li>
                                </ul>
                            </aside>
                            <aside class="r_widget quote_widget">
                                <div class="r_w_title">
                                    <h3>Quote</h3>
                                </div>
                                <img src="${contextPath}/resources/main/img/icon/quote-icon.png" alt="">
                                <p>Vivamus in urna eu enim porttitor consequat. Proin vitae pulvinar libero. Proin ut hendrerit metus. Aliquam erat volut pat. Donec fermen tum convallis.</p>
                            </aside>
                            <aside class="r_widget add_widget">
                                <div class="r_w_title">
                                    <h3>Add</h3>
                                </div>
                                <img class="img-fluid" src="${contextPath}/resources/main/img/add.jpg" alt="">
                            </aside>
                        </div>
                    </div>
                </div>
                <nav aria-label="Page navigation example" class="pagination_area">
                    <ul class="pagination">
                        <li class="page-item active"><a class="page-link" href="#">01.</a></li>
                        <li class="page-item"><a class="page-link" href="#">02.</a></li>
                        <li class="page-item"><a class="page-link" href="#">03.</a></li>
                        <li class="page-item"><a class="page-link" href="#">04.</a></li>
                    </ul>
                </nav>
            </div>
        </section>
        <!--================End Blog Main Area =================-->
        
        <!--푸터-->
		<jsp:include page="../inc/footer.jsp" />
		<!--푸터-->   
       
       
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7d70450b31867bf622687771a20f2ad3&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('부산광역시 수영구 광안2동 281-12', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">버스킹존</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>
       
		
    </body>
</html>