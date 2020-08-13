<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />   
        
    
        <div class="nk-sidebar">           
            <div class="nk-nav-scroll">
                <ul class="metismenu" id="menu">
                    <li>
                        <a class="has-arrow" href="${contextPath}/resources/mypage/javascript:void()" aria-expanded="false">
                            <i class="icon-speedometer menu-icon"></i><span class="nav-text">회원정보</span>
                        </a>
                        <ul aria-expanded="false">
                       	    <li><a href="${contextPath}/info.my">회원정보</a></li>
                            <li><a href="${contextPath}/edit.my">회원정보 수정</a></li>
                            <li><a href="${contextPath}/del.my">회원 탈퇴하기</a></li>
                        </ul>
                    </li>
                    <li class="mega-menu mega-menu-sm">
                        <a class="has-arrow" href="${contextPath}/resources/mypage/javascript:void()" aria-expanded="false">
                            <i class="icon-globe-alt menu-icon"></i><span class="nav-text">좋아요</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="${contextPath}/likesin.my">가수</a></li>
                            <li><a href="${contextPath}/likecon.my">공연</a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="${contextPath}/chat.my" aria-expanded="false">
                            <i class="icon-envelope menu-icon"></i> <span class="nav-text">1:1채팅</span>
                        </a>
                    </li>
                    <li>
                        <a class="has-arrow" href="${contextPath}/sup.my" aria-expanded="false">
                            <i class="icon-screen-tablet menu-icon"></i><span class="nav-text">포인트 충전하기</span>
                        </a>
                    </li>
 <%--                    <li>
                        <a class="has-arrow" href="${contextPath}/resources/mypage/javascript:void()" aria-expanded="false">
                            <i class="icon-graph menu-icon"></i> <span class="nav-text">Charts</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="${contextPath}/resources/mypage/chart-flot.html">Flot</a></li>
                            <li><a href="${contextPath}/resources/mypage/chart-morris.html">Morris</a></li>
                            <li><a href="${contextPath}/resources/mypage/chart-chartjs.html">Chartjs</a></li>
                            <li><a href="${contextPath}/resources/mypage/chart-chartist.html">Chartist</a></li>
                            <li><a href="${contextPath}/resources/mypage/chart-sparkline.html">Sparkline</a></li>
                            <li><a href="${contextPath}/resources/mypage/chart-peity.html">Peity</a></li>
                        </ul>
                    </li>
                    <li class="nav-label">UI Components</li>
                    <li>
                        <a class="has-arrow" href="${contextPath}/resources/mypage/javascript:void()" aria-expanded="false">
                            <i class="icon-grid menu-icon"></i><span class="nav-text">UI Components</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="${contextPath}/resources/mypage/ui-accordion.html">Accordion</a></li>
                            <li><a href="${contextPath}/resources/mypage/ui-alert.html">Alert</a></li>
                            <li><a href="${contextPath}/resources/mypage/ui-badge.html">Badge</a></li>
                            <li><a href="${contextPath}/resources/mypage/ui-button.html">Button</a></li>
                            <li><a href="${contextPath}/resources/mypage/ui-button-group.html">Button Group</a></li>
                            <li><a href="${contextPath}/resources/mypage/ui-cards.html">Cards</a></li>
                            <li><a href="${contextPath}/resources/mypage/ui-carousel.html">Carousel</a></li>
                            <li><a href="${contextPath}/resources/mypage/ui-dropdown.html">Dropdown</a></li>
                            <li><a href="${contextPath}/resources/mypage/ui-list-group.html">List Group</a></li>
                            <li><a href="${contextPath}/resources/mypage/ui-media-object.html">Media Object</a></li>
                            <li><a href="${contextPath}/resources/mypage/ui-modal.html">Modal</a></li>
                            <li><a href="${contextPath}/resources/mypage/ui-pagination.html">Pagination</a></li>
                            <li><a href="${contextPath}/resources/mypage/ui-popover.html">Popover</a></li>
                            <li><a href="${contextPath}/resources/mypage/ui-progressbar.html">Progressbar</a></li>
                            <li><a href="${contextPath}/resources/mypage/ui-tab.html">Tab</a></li>
                            <li><a href="${contextPath}/resources/mypage/ui-typography.html">Typography</a></li>
                        <!-- </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="${contextPath}/resources/mypage/javascript:void()" aria-expanded="false">
                            <i class="icon-layers menu-icon"></i><span class="nav-text">Components</span>
                        </a>
                        <ul aria-expanded="false"> -->
                            <li><a href="${contextPath}/resources/mypage/uc-nestedable.html">Nestedable</a></li>
                            <li><a href="${contextPath}/resources/mypage/uc-noui-slider.html">Noui Slider</a></li>
                            <li><a href="${contextPath}/resources/mypage/uc-sweetalert.html">Sweet Alert</a></li>
                            <li><a href="${contextPath}/resources/mypage/uc-toastr.html">Toastr</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="${contextPath}/resources/mypage/widgets.html" aria-expanded="false">
                            <i class="icon-badge menu-icon"></i><span class="nav-text">Widget</span>
                        </a>
                    </li>
                    <li class="nav-label">Forms</li>
                    <li>
                        <a class="has-arrow" href="${contextPath}/resources/mypage/javascript:void()" aria-expanded="false">
                            <i class="icon-note menu-icon"></i><span class="nav-text">Forms</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="${contextPath}/resources/mypage/form-basic.html">Basic Form</a></li>
                            <li><a href="${contextPath}/resources/mypage/form-validation.html">Form Validation</a></li>
                            <li><a href="${contextPath}/resources/mypage/form-step.html">Step Form</a></li>
                            <li><a href="${contextPath}/resources/mypage/form-editor.html">Editor</a></li>
                            <li><a href="${contextPath}/resources/mypage/form-picker.html">Picker</a></li>
                        </ul>
                    </li>
                    <li class="nav-label">Table</li>
                    <li>
                        <a class="has-arrow" href="${contextPath}/resources/mypage/javascript:void()" aria-expanded="false">
                            <i class="icon-menu menu-icon"></i><span class="nav-text">Table</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="${contextPath}/resources/mypage/table-basic.html" aria-expanded="false">Basic Table</a></li>
                            <li><a href="${contextPath}/resources/mypage/table-datatable.html" aria-expanded="false">Data Table</a></li>
                        </ul>
                    </li>
                    <li class="nav-label">Pages</li>
                    <li>
                        <a class="has-arrow" href="${contextPath}/resources/mypage/javascript:void()" aria-expanded="false">
                            <i class="icon-notebook menu-icon"></i><span class="nav-text">Pages</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="${contextPath}/resources/mypage/page-login.html">Login</a></li>
                            <li><a href="${contextPath}/resources/mypage/page-register.html">Register</a></li>
                            <li><a href="${contextPath}/resources/mypage/page-lock.html">Lock Screen</a></li>
                            <li><a class="has-arrow" href="${contextPath}/resources/mypage/javascript:void()" aria-expanded="false">Error</a>
                                <ul aria-expanded="false">
                                    <li><a href="${contextPath}/resources/mypage/page-error-404.html">Error 404</a></li>
                                    <li><a href="${contextPath}/resources/mypage/page-error-403.html">Error 403</a></li>
                                    <li><a href="${contextPath}/resources/mypage/page-error-400.html">Error 400</a></li>
                                    <li><a href="${contextPath}/resources/mypage/page-error-500.html">Error 500</a></li>
                                    <li><a href="${contextPath}/resources/mypage/page-error-503.html">Error 503</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li> --%>
                </ul>
            </div>
        </div>
