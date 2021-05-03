<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>



</head>

<body>
    
        <div class="sidebar_toggle"><i class="icon-close icons"></i></div>
        <div class="pcoded-inner-navbar main-menu">
            <div class="" >
                <div class="main-menu-header">
                    <img class="img-80 img-radius" src="../upload/host/pic${member.memberId}.jpg" onerror="this.src='../upload/host/pic0.jpg';" alt="User-Profile-Image">
                    <div class="user-details">
                        <span id="more-details">${member.name}</span>
                    </div>
                </div>
                <!-- <div class="main-menu-content">
                    <ul>
                        <li class="more-details">
                            <a href="user-profile.html"><i class="ti-user"></i>호스트 신청하기</a>
                            <a href="form-elements-component.html"><i class="ti-settings"></i>비밀번호 수정</a>
                            <a href="index.html"><i class="ti-layout-sidebar-left"></i>로그아웃</a>
                        </li>
                    </ul>
                </div> -->
            </div>
            <div class="p-15 p-b-0">
                <form class="form-material">
                    <div class="form-group form-primary">
                        <input type="text" name="footer-email" class="form-control">
                        <span class="form-bar"></span>
                        <label class="float-label"><i class="fa fa-search m-r-10"></i>호스트 찾기</label>
                    </div>
                </form>
            </div>
            <div class="pcoded-navigation-label">전체</div>
            <ul class="pcoded-item pcoded-left-item">
                <li class="">
                    <a href="${pageContext.request.contextPath}/mypage/enter.do" class="waves-effect waves-dark">
                        <span class="pcoded-micon"><i class="ti-home"></i><b>D</b></span>
                        <span class="pcoded-mtext">요약</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                </li>
                <li class="">
                    <a href="${pageContext.request.contextPath}/mypage/interest.do" class="waves-effect waves-dark">
                        <span class="pcoded-micon"><i class="ti-layers"></i><b>D</b></span>
                        <span class="pcoded-mtext">관심 호스트 목록</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                </li>
            </ul>
            
            <!-- <div class="pcoded-navigation-label">UI Element</div>
            <ul class="pcoded-item pcoded-left-item">
                <li class="pcoded-hasmenu">
                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                        <span class="pcoded-micon"><i class="ti-layout-grid2-alt"></i><b>BC</b></span>
                        <span class="pcoded-mtext">Basic</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                    <ul class="pcoded-submenu">
                        <li class=" ">
                            <a href="breadcrumb.html" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                <span class="pcoded-mtext">Breadcrumbs</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                        <li class=" ">
                            <a href="button.html" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                <span class="pcoded-mtext">Button</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                        <li class="">
                            <a href="accordion.html" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                <span class="pcoded-mtext">Accordion</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                        <li class=" ">
                            <a href="tabs.html" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                <span class="pcoded-mtext">Tabs</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                        <li class=" ">
                            <a href="color.html" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                <span class="pcoded-mtext">Color</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                        <li class=" ">
                            <a href="label-badge.html" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                <span class="pcoded-mtext">Label Badge</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                        <li class=" ">
                            <a href="tooltip.html" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                <span class="pcoded-mtext">Tooltip And Popover</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                        <li class=" ">
                            <a href="typography.html" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                <span class="pcoded-mtext">Typography</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                        <li class=" ">
                            <a href="notification.html" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                <span class="pcoded-mtext">Notifications</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul> -->
            <div class="pcoded-navigation-label">계정 관리</div>
            <ul class="pcoded-item pcoded-left-item">
                <li class="">
                    <a href="form-elements-component.html" class="waves-effect waves-dark">
                        <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
                        <span class="pcoded-mtext">비밀번호 수정</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                </li>
                <li class="">
                    <a href="${pageContext.request.contextPath}/mypage/secession.do" class="waves-effect waves-dark">
                        <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
                        <span class="pcoded-mtext">회원탈퇴</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                </li>
            </ul>
            <div class="pcoded-navigation-label">사용 내역</div>
            <ul class="pcoded-item pcoded-left-item">
                <li class="">
                    <a href="${pageContext.request.contextPath}/mypage/contactHistory.do" class="waves-effect waves-dark">
                        <span class="pcoded-micon"><i class="ti-receipt"></i><b>B</b></span>
                        <span class="pcoded-mtext">컨택 내역</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                </li>
                <li class="">
                    <a href="${pageContext.request.contextPath}/mypage/bidHistory.do" class="waves-effect waves-dark">
                        <span class="pcoded-micon"><i class="ti-receipt"></i><b>B</b></span>
                        <span class="pcoded-mtext">입찰 내역 조회</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                </li>
            </ul>
			
			<% if(member.getAuth()==0){ %>
            <div class="pcoded-navigation-label">호스트 신청</div>
            <ul class="pcoded-item pcoded-left-item">
                <li class="">
                    <a href="${pageContext.request.contextPath}/mypage/profile.do" class="waves-effect waves-dark">
                        <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
                        <span class="pcoded-mtext">프로필 작성</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                </li>
            </ul>
            
            <% } else if(member.getAuth()==1){ %>
            
            <div class="pcoded-navigation-label">호스트 기능</div>
            <ul class="pcoded-item pcoded-left-item">
                <li class="">
                    <a href="${pageContext.request.contextPath}/mypage/profile.do" class="waves-effect waves-dark">
                        <span class="pcoded-micon"><i class="ti-id-badge"></i><b>FC</b></span>
                        <span class="pcoded-mtext">프로필 보기</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                </li>
                <li class="">
                    <a href="${pageContext.request.contextPath}/mypage/interestReverse.do" class="waves-effect waves-dark">
                        <span class="pcoded-micon"><i class="ti-user"></i><b>FC</b></span>
                        <span class="pcoded-mtext">나를 주목하는 사람 목록</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                </li>
                <li class="">
                    <a href="${pageContext.request.contextPath}/mypage/contactValue.do" class="waves-effect waves-dark">
                        <span class="pcoded-micon"><i class="ti-bar-chart-alt"></i><b>FC</b></span>
                        <span class="pcoded-mtext">컨택 가치 확인</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                </li>
                <li class="">
                    <a href="../contact/insert.do" class="waves-effect waves-dark">
                        <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
                        <span class="pcoded-mtext">컨택 생성</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                </li>
            </ul>
            
            <% } %>

            <!-- <div class="pcoded-navigation-label">기록</div>
            <ul class="pcoded-item pcoded-left-item">
                <li class="">
                    <a href="chart-morris.html" class="waves-effect waves-dark">
                        <span class="pcoded-micon"><i class="ti-bar-chart-alt"></i><b>C</b></span>
                        <span class="pcoded-mtext">데이터</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                </li>
                <li class="">
                    <a href="map-google.html" class="waves-effect waves-dark">
                        <span class="pcoded-micon"><i class="ti-map-alt"></i><b>M</b></span>
                        <span class="pcoded-mtext">장소</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                </li>
            </ul> -->
            <!-- <div class="pcoded-navigation-label">Pages</div>
            <ul class="pcoded-item pcoded-left-item">
                <li class="pcoded-hasmenu ">
                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                        <span class="pcoded-micon"><i class="ti-id-badge"></i><b>A</b></span>
                        <span class="pcoded-mtext">Pages</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                    <ul class="pcoded-submenu">
                        <li class="">
                            <a href="auth-normal-sign-in.html" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                <span class="pcoded-mtext">Login</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                        <li class="">
                            <a href="auth-sign-up.html" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                <span class="pcoded-mtext">Registration</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                        <li class="">
                            <a href="sample-page.html" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="ti-layout-sidebar-left"></i><b>S</b></span>
                                <span class="pcoded-mtext">Sample Page</span>
                                <span class="pcoded-mcaret"></span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul> 
        </div>-->
        </div>
        
</body>

</html>
