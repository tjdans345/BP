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

</head>

<body>


    
    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">

        <!--**********************************
            Nav header start
        ***********************************-->
		<jsp:include page="./sidebar/header.jsp"/>
        <!--**********************************
            Nav header end
        ***********************************-->

        <!--**********************************
            Header start
        ***********************************-->

        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

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

            <div class="container-fluid mt-3">
         
                <div class="row">
                	<div class="col-2"></div>
                    <div class="col-5">
                        <div class="card">
                            <div class="card-body">
                                <div class="media align-items-center mb-4">
                                    <img class="mr-3" src="${contextPath}/resources/mypage/images/userimage/${meminfo.profile_img}" width="200" height="200" alt="" style="margin-left:90px;">
                                    <div class="media-body">
                                        <h3 class="mb-0">${meminfo.name}</h3>
                                    </div>
                                </div>
                                <h4>About Me</h4>
                                <ul class="card-profile__info">
                                    <li class="mb-1"><strong class="text-dark mr-4">Mobile</strong> <span>${meminfo.phone}</span></li>
                                    <li><strong class="text-dark mr-4">Email</strong> <span>${meminfo.email}</span></li>
                                </ul>
                            </div> 
                    </div>
                    </div>
                    <div class="col-3">
                        <div class="card gradient-2">
                            <div class="card-body">
                                <h3 class="card-title text-white">Net Profit</h3>
                                <div class="d-inline-block">
                                    <h2 class="text-white">$ 8541</h2>
                                    <p class="text-white mb-0">Jan - March 2019</p>
                                </div>
                                <span class="float-right display-5 opacity-5"><i class="fa fa-money" style="color:green;"></i></span>
                            </div>
                        </div>
                          <div class="card gradient-4">
                            <div class="card-body">
                                <h3 class="card-title text-white">Customer Satisfaction</h3>
                                <div class="d-inline-block">
                                    <h2 class="text-white">99%</h2>
                                    <p class="text-white mb-0">Jan - March 2019</p>
                                </div>
                                <span class="float-right display-5 opacity-5"><i class="fa fa-heart" style="color:lightpink;"></i></span>
                            </div>
                       </div>
                   </div> 
                   <div class="col-2"></div>
                   </div>
					
<%-- 					<div class="row">
                    <div class="col-8">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex w-100 justify-content-between"><h4 class="card-title">리뷰 게시판</h4><small><a href="#">더보기</a></small></div>
                                <div class="basic-list-group">
                                    <div class="list-group">
                                        <a href="#" class="list-group-item list-group-item-action flex-column align-items-start active">
                                            <div class="d-flex w-100 justify-content-between">
                                                <h5 class="mb-1">List group item heading</h5><small>3 days ago</small>
                                            </div>
                                            <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p><small>Donec id elit non mi porta.</small>
                                        </a>
                                        <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                            <div class="d-flex w-100 justify-content-between">
                                                <h5 class="mb-1">List group item heading</h5><small class="text-muted">3 days ago</small>
                                            </div>
                                            <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p><small class="text-muted">Donec id elit non mi porta.</small>
                                        </a>
                                        <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                            <div class="d-flex w-100 justify-content-between">
                                                <h5 class="mb-1">List group item heading</h5><small class="text-muted">3 days ago</small>
                                            </div>
                                            <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p><small class="text-muted">Donec id elit non mi porta.</small>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex w-100 justify-content-between"><h4 class="card-title">포토 게시판</h4><small><a href="#">더보기</a></small></div>
                                <ul class="nav nav-pills mb-3">
                                    <li class="nav-item"><a href="#navpills-1" class="nav-link active" data-toggle="tab" aria-expanded="false">Tab One</a>
                                    </li>
                                    <li class="nav-item"><a href="#navpills-2" class="nav-link" data-toggle="tab" aria-expanded="false">Tab Two</a>
                                    </li>
                                    <li class="nav-item"><a href="#navpills-3" class="nav-link" data-toggle="tab" aria-expanded="true">Tab Three</a>
                                    </li>
                                </ul>
                                <div class="tab-content br-n pn">
                                    <div id="navpills-1" class="tab-pane active">
                                        <div class="row align-items-center">
                                            <div class="col-sm-12 col-md-12 col-xl-12">
                                                <img src="${contextPath}/resources/mypage/images/big/card-4.png" alt="" class="img-fluid thumbnail m-r-15">
                                            </div>
                                        </div>
                                    </div>
                                    <div id="navpills-2" class="tab-pane">
                                        <div class="row align-items-center">
                                            <div class="col-sm-12 col-md-12 col-xl-12">
                                                <img src="${contextPath}/resources/mypage/images/big/card-3.png" alt="" class="img-fluid thumbnail m-r-15">
                                            </div>
                                        </div>
                                    </div>
                                    <div id="navpills-3" class="tab-pane">
                                        <div class="row align-items-center">
                                            <div class="col-sm-12 col-md-12 col-xl-12">
                                                <img src="${contextPath}/resources/mypage/images/big/card-3.png" alt="" class="img-fluid thumbnail m-r-15">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>               
                    </div> --%>
                    
                <div class="row">
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-body">
                                <div class="active-member">
                                    <div class="table-responsive">
                                        <table class="table table-xs mb-0">
                                            <thead>
                                                <tr>
                                                    <th>Customers</th>
                                                    <th>Product</th>
                                                    <th>Country</th>
                                                    <th>Activity</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><img src="${contextPath}/resources/mypage/images/avatar/1.jpg" class=" rounded-circle mr-3" alt="">Sarah Smith</td>
                                                    <td>iPhone X</td>
                                                    <td>
                                                        <span>United States</span>
                                                    </td>
                                                    <td>
                                                        <span>Last Login</span>
                                                        <span class="m-0 pl-3">10 sec ago</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><img src="${contextPath}/resources/mypage/images/avatar/2.jpg" class=" rounded-circle mr-3" alt="">Walter R.</td>
                                                    <td>Pixel 2</td>
                                                    <td><span>Canada</span></td>
                                                    <td>
                                                        <span>Last Login</span>
                                                        <span class="m-0 pl-3">50 sec ago</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><img src="${contextPath}/resources/mypage/images/avatar/3.jpg" class=" rounded-circle mr-3" alt="">Andrew D.</td>
                                                    <td>OnePlus</td>
                                                    <td><span>Germany</span></td>
                                                    <td>
                                                        <span>Last Login</span>
                                                        <span class="m-0 pl-3">10 sec ago</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><img src="${contextPath}/resources/mypage/images/avatar/6.jpg" class=" rounded-circle mr-3" alt=""> Megan S.</td>
                                                    <td>Galaxy</td>
                                                    <td><span>Japan</span></td>
                                                    <td>
                                                        <span>Last Login</span>
                                                        <span class="m-0 pl-3">10 sec ago</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><img src="${contextPath}/resources/mypage/images/avatar/4.jpg" class=" rounded-circle mr-3" alt=""> Doris R.</td>
                                                    <td>Moto Z2</td>
                                                    <td><span>England</span></td>
                                                    <td>
                                                        <span>Last Login</span>
                                                        <span class="m-0 pl-3">10 sec ago</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><img src="${contextPath}/resources/mypage/images/avatar/5.jpg" class=" rounded-circle mr-3" alt="">Elizabeth W.</td>
                                                    <td>Notebook Asus</td>
                                                    <td><span>China</span></td>
                                                    <td>
                                                        <span>Last Login</span>
                                                        <span class="m-0 pl-3">10 sec ago</span>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                    </div>
                    <div class="col-4">
                       <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Activity</h4>
                                <div id="activity">
                                    <div class="media border-bottom-1 pt-3 pb-3">
                                        <img width="35" src="${contextPath}/resources/mypage/images/avatar/1.jpg" class="mr-3 rounded-circle">
                                        <div class="media-body">
                                            <h5>Received New Order</h5>
                                            <p class="mb-0">I shared this on my fb wall a few months back,</p>
                                        </div><span class="text-muted ">April 24, 2018</span>
                                    </div>
                                    <div class="media border-bottom-1 pt-3 pb-3">
                                        <img width="35" src="${contextPath}/resources/mypage/images/avatar/2.jpg" class="mr-3 rounded-circle">
                                        <div class="media-body">
                                            <h5>iPhone develered</h5>
                                            <p class="mb-0">I shared this on my fb wall a few months back,</p>
                                        </div><span class="text-muted ">April 24, 2018</span>
                                    </div>
                                    <div class="media border-bottom-1 pt-3 pb-3">
                                        <img width="35" src="${contextPath}/resources/mypage/images/avatar/2.jpg" class="mr-3 rounded-circle">
                                        <div class="media-body">
                                            <h5>3 Order Pending</h5>
                                            <p class="mb-0">I shared this on my fb wall a few months back,</p>
                                        </div><span class="text-muted ">April 24, 2018</span>
                                    </div>
                                    <div class="media pt-3 pb-3">
                                        <img width="35" src="${contextPath}/resources/mypage/images/avatar/3.jpg" class="mr-3 rounded-circle">
                                        <div class="media-body">
                                            <h5>Facebook Post 30 Comments</h5>
                                            <p class="mb-0">I shared this on my fb wall a few months back,</p>
                                        </div><span class="text-muted ">April 24, 2018</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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

    <!-- Chartjs -->
    <script src="${contextPath}/resources/mypage/plugins/chart.js/Chart.bundle.min.js"></script>
    <!-- Circle progress -->
    <script src="${contextPath}/resources/mypage/plugins/circle-progress/circle-progress.min.js"></script>
    <!-- Datamap -->
    <script src="${contextPath}/resources/mypage/plugins/d3v3/index.js"></script>
    <script src="${contextPath}/resources/mypage/plugins/topojson/topojson.min.js"></script>
    <script src="${contextPath}/resources/mypage/plugins/datamaps/datamaps.world.min.js"></script>
    <!-- Morrisjs -->
    <script src="${contextPath}/resources/mypage/plugins/raphael/raphael.min.js"></script>
    <script src="${contextPath}/resources/mypage/plugins/morris/morris.min.js"></script>
    <!-- Pignose Calender -->
    <script src="${contextPath}/resources/mypage/plugins/moment/moment.min.js"></script>
    <script src="${contextPath}/resources/mypage/plugins/pg-calendar/js/pignose.calendar.min.js"></script>
    <!-- ChartistJS -->
    <script src="${contextPath}/resources/mypage/plugins/chartist/js/chartist.min.js"></script>
    <script src="${contextPath}/resources/mypage/plugins/chartist-plugin-tooltips/js/chartist-plugin-tooltip.min.js"></script>



    <script src="${contextPath}/resources/mypage/js/dashboard/dashboard-1.js"></script>

</body>

</html>