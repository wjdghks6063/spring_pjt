<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common_header.jsp"%>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!--페이지 css-->
<link href="css/mypage-menu.css" rel="stylesheet">
<link href="css/manager-donation-search.css" rel="stylesheet">

<!-- 달력기능 css,js-->
    <!-- css -->
    <link rel="stylesheet" type="text/css" href="css/daterangepicker-master/daterangepicker.css">
    <!-- js -->
    <script type="text/javascript" src="../css/daterangepicker-master/moment.min.js"></script>
    <script type="text/javascript" src="../css/daterangepicker-master/daterangepicker.js"></script>

<form name="goPage">
	<input type="hidden" name="t_gubun">
</form>

<script>
	function goHome(){
		goPage.t_gubun.value="Home";
		goPage.method="post";
		goPage.action="Manager";
		goPage.submit();
	}
	
	function goDona(){
		goPage.t_gubun.value="Dona";
		goPage.method="post";
		goPage.action="Manager";
		goPage.submit();
	}
	function goVol(){
		goPage.t_gubun.value="Vol";
		goPage.method="post";
		goPage.action="Manager";
		goPage.submit();
	}
	function goSearch(search){
		sear.t_search.value=search;
		sear.t_gubun.value="Dona";
		sear.method="post";
		sear.action="Manager";
		sear.submit();
	}
</script>

<body>
<div id="containar">

    <div class="my-page-box">
        <div class="my-list-left">
            <div class="my-profile">
                <img src="../홈페이지_기본_레이아웃/img/heart.png" width="72" height="72" alt="유저 프로필 사진" class="my-profile-img" 
                    style="background-color: white;" id="profileImageArea">
                <div class="my_profile_nickname">
                    <span class="ellipsis" id="nickNameArea">${session_name}</span>
                </div>
                <div class="my_profile_id" id="maskingIdArea">${session_id}</div>
            </div>
            <div id="lnb" class="my_lnb" role="menu">
                <a href="javascript:goHome()" role="menuitem" class="my_lnb_item" id="lnb_my_home" aria-current="false">MY홈</a> 
                <a href="javascript:goDona()" role="menuitem" class="my_lnb_item" id="lnb_my_notification" aria-current="true">기부</a>
                <a href="javascript:goVol()" role="menuitem" class="my_lnb_item" id="lnb_my_activity" aria-current="false">봉사</a> 
                <a href="../홈페이지_기본_레이아웃/manager-Year-end-settlement.html"role="menuitem" class="my_lnb_item" id="lnb_my_tax" aria-current="false">회원 관리</a>
            </div>
        </div>
        
        <!-- 내용 창 -->
            <div role="main" id="content" class="my_content">
                <h3 class="my_title">기부 내역</h3>
                <form target="_self">
                    <div class="my_npaybanner_wrap" style="display:none"></div>

                    <!-- 달력 -->
                    <div class="my_activity_calendar_wrap">
                        <div class="activity_calendar_btn_wrap" id="prevCalendar">
                            <input type="text" id="calendar_1" name="calendar_1" value="" >
                        </div>
                        ~
                        <div class="activity_calendar_btn_wrap" id="prevCalendar">
                            <input type="text" id="calendar_2" name="calendar_2" value="" >
                        </div>

                        <div class="sorting_area" id="paymentStatus">
                            <select name="" class="select">
                                <option value="10">전체</option>
                                <option value="10">노인</option>
                                <option value="10">아동</option>
                                <option value="10">장애</option>
                                <option value="10">재난</option>
                            </select>
                        </div>

                        <div class="sorting_area" id="paymentStatus">
                            <select name="" class="select">
                                <option value="10">전체</option>
                                <option value="10">진행중</option>
                                <option value="10">달성 완료</option>
                                <option value="10">기간 종료</option>
                            </select>
                        </div>
                        

                        <button type="button" class="activity_calendar_search" id="searchButton">검색</button>
                    </div>

                    <!-- 노인,아동... 카테고리에 따라 이미지 변경 예정, 달성완료시 불 들어오는 색상-->
                    <div class="my_recent_activity_wrap" id="myActivityAll" aria-hidden="false">
                        <h3 class="blind">선택한 내역</h3>
                        <div id="timelineArea">
                            <div class="my_activity_month"><span class="number">2022.01</span></div>
                            <ul class="my_activity_list" id="timeline202201">
                                <!-- [D] 콩소멸 -->
                                <li class="my_activity_cong timeline_root">
                                    <div class="my_activity_inner">
                                        <div class="my_activity_left">
                                            <div class="my_activity_cong_cancelled"> </div>
                                        </div>
                                        <div class="my_activity_center">
                                            <strong class="my_activity_date">2022.01.01</strong>
                                            <strong class="my_activity_text2">어린이들을 후원해주세요.</strong>
                                            <span class="my_activity_title">[2022_1.11 ~ 2022_3.11]</span>
                                        </div>
                                        <div class="my_activity_right">
                                            <div class="my_activity_price"><strong class="number">63</strong>%</div>
                                        </div>
                                    </div>
                                </li>
                                <!-- [D] 콩소멸 -->
                                <li class="my_activity_cong timeline_root">
                                    <div class="my_activity_inner">
                                        <div class="my_activity_left">
                                            <div class="my_activity_cong_cancelled"></div>
                                        </div>
                                        <div class="my_activity_center">
                                            <strong class="my_activity_date">2022.01.01</strong>
                                            <strong class="my_activity_text2">어린이들을 후원해주세요.</strong>
                                            <span class="my_activity_title">[2022_1.11 ~ 2022_3.11]</span>
                                        </div>
                                        <div class="my_activity_right">
                                            <div class="my_activity_price"><strong class="number">63</strong>%</div>
                                        </div>
                                    </div>
                                </li>
                                <!-- [D] 콩소멸 -->
                                <li class="my_activity_cong timeline_root">
                                    <div class="my_activity_inner">
                                        <div class="my_activity_left">
                                            <div class="my_activity_cong_cancelled"></div>
                                        </div>
                                        <div class="my_activity_center">
                                            <strong class="my_activity_date">2022.01.01</strong>
                                            <strong class="my_activity_text2">어린이들을 후원해주세요.</strong>
                                            <span class="my_activity_title">[2022_1.11 ~ 2022_3.11]</span>
                                        </div>
                                        <div class="my_activity_right">
                                            <div class="my_activity_price"><strong class="number">63</strong>%</div>
                                        </div>
                                    </div>
                                </li>
                                <!-- [D] 콩소멸 -->
                                <li class="my_activity_cong timeline_root">
                                    <div class="my_activity_inner">
                                        <div class="my_activity_left">
                                            <div class="my_activity_cong_success"></div>
                                        </div>
                                        <div class="my_activity_center">
                                            <strong class="my_activity_date">2022.01.01</strong>
                                            <strong class="my_activity_text2">어린이들을 후원해주세요.</strong>
                                            <span class="my_activity_title">[2022_1.11 ~ 2022_3.11]</span>
                                        </div>
                                        <div class="my_activity_right">
                                            <div class="my_activity_price"><strong class="number">달성 완료</strong></div>
                                        </div>
                                    </div>
                                </li>
                                <!-- [D] 콩소멸 -->
                                <li class="my_activity_cong timeline_root">
                                    <div class="my_activity_inner">
                                        <div class="my_activity_left">
                                            <div class="my_activity_cong_cancelled"></div>
                                        </div>
                                        <div class="my_activity_center">
                                            <strong class="my_activity_date">2022.01.01</strong>
                                            <strong class="my_activity_text2">어린이들을 후원해주세요.</strong>
                                            <span class="my_activity_title">[2022_1.11 ~ 2022_3.11]</span>
                                        </div>
                                        <div class="my_activity_right">
                                            <div class="my_activity_price"><strong class="number">63</strong>%</div>
                                        </div>
                                    </div>
                                </li>
                                <!-- [D] 콩소멸 -->
                                <li class="my_activity_cong timeline_root">
                                    <div class="my_activity_inner">
                                        <div class="my_activity_left">
                                            <div class="my_activity_cong_cancelled"></div>
                                        </div>
                                        <div class="my_activity_center">
                                            <strong class="my_activity_date">2022.01.01</strong>
                                            <strong class="my_activity_text2">어린이들을 후원해주세요.</strong>
                                            <span class="my_activity_title">[2022_1.11 ~ 2022_3.11]</span>
                                        </div>
                                        <div class="my_activity_right">
                                            <div class="my_activity_price"><strong class="number">63</strong>%</div>
                                        </div>
                                    </div>
                                </li>
                                
                            </ul>
                            

                            <div class="my_activity_month"><span class="number">2021.09</span></div>
                            <ul class="my_activity_list" id="timeline202109">
                                <!-- [D] 콩받음 -->
                                <li class="my_activity_cong timeline_root">
                                    <div class="my_activity_inner">
                                        <div class="my_activity_left">
                                            <div class="my_activity_cong_success"></div>
                                        </div>
                                        <div class="my_activity_center">
                                            <strong class="my_activity_date">2021.09.23</strong>
                                            <strong class="my_activity_text2">콩받음</strong>
                                            <span class="my_activity_title">[2021_3] 지식인 답변채택콩</span>
                                            <strong class="my_activity_date">2021.12.31 콩소멸 예정</strong>
                                        </div>
                                        <div class="my_activity_right">
                                            <div class="my_activity_price">+ <strong class="number">100</strong>원</div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        
                        <!-- 내용이 많은 경우 더보기 버튼 활성화 -->
                        <button type="button" style="display:none" class="btn_horizontal_more" disabled="disabled">더보기</button>
                    </div>

                    <!-- 검색 결과가 없거나 활동 내용이 없는 경우 띄울 창 display를 block으로 처리한다.-->
                    <div class="my_recent_activity_wrap" id="defaultNothing"><!--기본을 none 처리후 결과에 따라 block 처리해아함-->
                        <div class="none_message">
                            <p class="none_message_inner">활동내역이 없습니다. <span class="small_text">조회 기간은 최근 1년 기준으로 설정되어
                                    있습니다.<br>다른 조건을 원하실 경우 검색 기간 설정을 변경해 주세요.</span></p>
                        </div>
                    </div>
                    <div class="my_recent_activity_wrap" id="searchNothing"><!--기본을 none 처리후 결과에 따라 block 처리해아함-->
                        <div class="none_message">
                            <p class="none_message_inner">검색결과가 없습니다. <span class="small_text">조회 기간 또는 조건을 확인해
                                    주세요.</span></p>
                        </div>
                    </div>
                    <div class="my_activity_notice" style="display: block;">조회 기간은 최근 1년 기준으로 설정되어 있습니다.<br>다른 조건으로 검색을
                        원하실 경우 검색 기간 설정을 변경해 주세요.</div>
                </form>
            </div>
            
        </div><!-- 활동 내용 div-->


        </div>
    </div>

        <script>
        $(function () {
            $('#calendar_1').daterangepicker({
                "singleDatePicker": true, /*달력 한개 사용여부 기본은 달력 2개*/
                "showDropdowns": true, /*년 일 수동으로 선택 가능 여부*/
                "locale": {
                    "format": "YYYY-MM-DD",
                    "separator": " ~ ",
                    "applyLabel": "확인", /*확인 버튼 이름*/
                    "cancelLabel": "취소", /*취소 버튼 이름*/
                    "fromLabel": "From",
                    "toLabel": "To",
                    "customRangeLabel": "Custom",
                    "weekLabel": "W",
                    "daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
                    "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
                    "firstDay": 1
                },
                "startDate": new Date(), /*달력 시작 일자*/
                "endDate": new Date(),  /*달력 끝나는 일자*/
                /*"maxDate": "2022/2/22", 달력 최대 값 설정*/
                /* 달력 옆에 선택 버튼 생성
                ranges: {
                    '오늘': [moment(), moment()],
                    '어제': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    '일주일 전': [moment().subtract(6, 'days'), moment()],
                    '30일 전': [moment().subtract(29, 'days'), moment()],
                    '이번 달': [moment().startOf('month'), moment().endOf('month')],
                    '저번 달': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },*/
                "opens": "left", /*달력 열리는 위치 기본값 right, left, center*/
                "drops": "auto" /*기본값 달력 아래로 내려옴 "down" 위로 "up"*/
            }, function (start, end, label) {
                console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
            });
        });

        $(function () {
            $('#calendar_2').daterangepicker({
                "singleDatePicker": true, /*달력 한개 사용여부 기본은 달력 2개*/
                "showDropdowns": true, /*년 일 수동으로 선택 가능 여부*/
                "locale": {
                    "format": "YYYY-MM-DD",
                    "separator": " ~ ",
                    "applyLabel": "확인", /*확인 버튼 이름*/
                    "cancelLabel": "취소", /*취소 버튼 이름*/
                    "fromLabel": "From",
                    "toLabel": "To",
                    "customRangeLabel": "Custom",
                    "weekLabel": "W",
                    "daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
                    "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
                    "firstDay": 1
                },
                "startDate": new Date(), /*달력 시작 일자*/
                "endDate": new Date(),  /*달력 끝나는 일자*/
                /*"maxDate": "2022/2/22", 달력 최대 값 설정*/
                /* 달력 옆에 선택 버튼 생성
                ranges: {
                    '오늘': [moment(), moment()],
                    '어제': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    '일주일 전': [moment().subtract(6, 'days'), moment()],
                    '30일 전': [moment().subtract(29, 'days'), moment()],
                    '이번 달': [moment().startOf('month'), moment().endOf('month')],
                    '저번 달': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },*/
                "opens": "right", /*달력 열리는 위치 기본값 right, left, center*/
                "drops": "auto" /*기본값 달력 아래로 내려옴 "down" 위로 "up"*/
            }, function (start, end, label) {
                console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
            });
        });

        </script>
        
        

</body>
<!--footer -->
<%@ include file = "../common_footer.jsp" %>