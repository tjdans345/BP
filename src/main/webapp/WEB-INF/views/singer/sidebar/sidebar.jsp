<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">

.nk-sidebar .metismenu .has-arrow:after {

    width: 0em;
    height: 0em;
    border-width: 0px;


}

</style>

	<!--**********************************
            Nav header start
        ***********************************-->
        <div class="nav-header">
            <div class="brand-logo">
                <a href="${contextPath}/BP/index.do">
                    <b class="logo-abbr"><img src="${contextPath}/resources/singer/images/logo.png" alt=""> </b>
                    <span class="logo-compact"><img src="${contextPath}/resources/singer/images/logo-compact.png" alt=""></span>
                    <span class="brand-title">
                        <img src="${contextPath}/resources/singer/images/logo-text.png" alt="">
                    </span>
                </a>
            </div>
        </div>
        <!--**********************************
            Nav header end
        ***********************************-->	
		
		
   <!--**********************************
            Sidebar start
        ***********************************-->
        <div class="nk-sidebar">           
            <div class="nk-nav-scroll">
                <ul class="metismenu" id="menu">
                    
                    <li>
                        <a class="has-arrow" href="${contextPath}/BP/singerMain.sin" aria-expanded="false">
                            <i class="icon-speedometer menu-icon"></i><span class="nav-text">메인페이지</span>
                        </a>
                    </li>
                    <li>
                        <a class="has-arrow" href="#" aria-expanded="false">
                            <i class="icon-globe-alt menu-icon"></i><span class="nav-text">공연일정</span>
                        </a>
                    </li>    
                    
                    <li>
                        <a class="has-arrow" href="${contextPath}/BP/resbusking.b" aria-expanded="false">
                            <i class="icon-envelope menu-icon"></i> <span class="nav-text">버스킹 예약(only Singer)</span>
                        </a>
                    </li>
                    <li>
                        <a class="has-arrow" href="${contextPath}/resources/singer/javascript:void()" aria-expanded="false">
                            <i class="icon-screen-tablet menu-icon"></i><span class="nav-text">공지 사항</span>
                        </a>
                    </li>
                    <li>
                        <a class="has-arrow" href="${contextPath}/resources/singer/javascript:void()" aria-expanded="false">
                            <i class="icon-graph menu-icon"></i> <span class="nav-text">팬 관리</span>
                        </a>
                     
                    </li>
                   
                    <li>
                        <a class="has-arrow" href="${contextPath}/resources/singer/javascript:void()" aria-expanded="false">
                            <i class="icon-grid menu-icon"></i><span class="nav-text">방명록</span>
                        </a>
                       
                    </li>
                    <li>
                        <a href="${contextPath}/resources/singer/widgets.html" aria-expanded="false">
                            <i class="icon-badge menu-icon"></i><span class="nav-text">Widget</span>
                        </a>
                    </li>
                    <li class="nav-label">Forms</li>
                    <li>
                        <a class="has-arrow" href="${contextPath}/resources/singer/javascript:void()" aria-expanded="false">
                            <i class="icon-note menu-icon"></i><span class="nav-text">Forms</span>
                        </a>
                       
                    </li>
                    <li class="nav-label">Table</li>
                    <li>
                        <a class="has-arrow" href="${contextPath}/resources/singer/javascript:void()" aria-expanded="false">
                            <i class="icon-menu menu-icon"></i><span class="nav-text">Table</span>
                        </a>
                       
                    </li>
                    <li class="nav-label">Pages</li>
                    <li>
                        <a class="has-arrow" href="${contextPath}/resources/singer/javascript:void()" aria-expanded="false">
                            <i class="icon-notebook menu-icon"></i><span class="nav-text">Pages</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="${contextPath}/resources/singer/page-login.html">Login</a></li>
                            <li><a href="${contextPath}/resources/singer/page-register.html">Register</a></li>
                            <li><a href="${contextPath}/resources/singer/page-lock.html">Lock Screen</a></li>
                            <li><a class="has-arrow" href="${contextPath}/resources/singer/javascript:void()" aria-expanded="false">Error</a>
                                <ul aria-expanded="false">
                                    <li><a href="${contextPath}/resources/singer/page-error-404.html">Error 404</a></li>
                                    <li><a href="${contextPath}/resources/singer/page-error-403.html">Error 403</a></li>
                                    <li><a href="${contextPath}/resources/singer/page-error-400.html">Error 400</a></li>
                                    <li><a href="${contextPath}/resources/singer/page-error-500.html">Error 500</a></li>
                                    <li><a href="${contextPath}/resources/singer/page-error-503.html">Error 503</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <!--**********************************
            Sidebar end
        ***********************************-->  
    