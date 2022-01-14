<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="../common_header.jsp" %>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
    <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!--페이지 css-->
    <link href="css/mypage-menu.css" rel="stylesheet">
    <link href="css/manager-home.css" rel="stylesheet">
    <!--script 밑에 body와 </div> 있음-->

<script>
	
</script>
<form name="member">
	<input type="hidden" name="t_id" value="${session_id}">
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
                <a href="../홈페이지_기본_레이아웃/manager-home.html" role="menuitem" class="my_lnb_item" id="lnb_my_home" aria-current="true">MY홈</a> 
                <a href="../홈페이지_기본_레이아웃/manager-donation.html" role="menuitem" class="my_lnb_item" id="lnb_my_notification" aria-current="false">기부</a>
                <a href="../홈페이지_기본_레이아웃/manager-volunteer.html" role="menuitem" class="my_lnb_item" id="lnb_my_activity" aria-current="false">봉사</a>
                <a href="../홈페이지_기본_레이아웃/manager-Year-end-settlement.html"role="menuitem" class="my_lnb_item" id="lnb_my_tax" aria-current="false">회원 관리</a>
            </div>
        </div>
        
            <!--후원 금액 표시 -->
        <div role="main" id="content" class="my_content">
            <div class="my_summary_wrap" id="mySummaryAll">
                <div class="my_summary_box">
                    <div class="my_summary_title">
                        <h3 class="title">오늘의 후원금액</h3>
                        <span class="number_donation"><span class="big_number" id="myCashTotal"></span> 원</span>
                    </div>
                    <c:forEach items="${list}" var="list">
                    	<a href="" class="my_summary_item">
                    		<span class="title">${list.getSearch_name()}</span>
                    		<span class="number_wrap">
                    			<strong class="number" id="myProject">
                    				10
                    			</strong> 원
                    		</span>
                    	
                    	</a>
                    </c:forEach>
                    <!--a href="" class="my_summary_item"><span class="title">노인</span><span class="number_wrap"><strong class="number" id="myProject">0</strong> 원</span></a> 
                    <a href="" class="my_summary_item"><span class="title">장애</span><span class="number_wrap"><strong class="number" id="myProject">0</strong> 원</span></a> 
                    <a href="" class="my_summary_item"><span class="title">재난</span><span class="number_wrap"><strong class="number" id="myProject">0</strong> 원</span></a-->
                </div>
                <div class="my_summary_box">
                    <div class="my_summary_title">
                        <h3 class="title">오늘의 봉사 일정</h3>
                        <span class="number_volunteer"><strong class="big_number" id="mySponTotal">15</strong> 건</span>
                    </div>
                        <a href="/my/timeline#type=donation" class="my_summary_item"><span class="title">봉사 게시글 작성</span><span class="number_wrap"><strong class="number" id="myDonation">25</strong> 건</span></a> 
                        <a href="/my/timeline#type=funding" class="my_summary_item"><span class="title">봉사 참여 인원</span><span class="number_wrap"><strong class="number" id="myFunding">125</strong> 명</span></a>
                </div>
            </div>
        

                <!-- 내 소식 -->
            <div class="my_recent_news_wrap" id="my_notification">
                <h3 class="my_recent_news_title">진행중인 기부</h3><span class="my_recent_news_count">총<span class="number" id="my_notification_count">42</span>건</span>
                <div class="my_recent_news_feed"><!--전체 보기-->
                    <ol class="list_news" id="my_notification_list">
                        <!-- 마감일이 가까워지는 순서대로 보여져야 함-->
                        <li class="item_news type_donation">
                            <div class="card_news">
                                <a href="https://happybean.naver.com/my/notification" class="link"></a>
                                <p class="text_content">
                                    사랑으로 기부해 주세요. (날짜: 2022-01-07 ~ 2022-01-12)
                                </p>
                                <span class="text_information">젤리빈즈</span>
                                <span class="text_information">61% 달성</span>
                                <button class="button_delete" data-id="61d7a8bc2c5ccf943ae43321">
                                    <span class="blind">삭제</span>
                                </button>
                            </div>
                        </li>
                        <li class="item_news type_donation">
                            <div class="card_news">
                                <a href="https://happybean.naver.com/my/notification" class="link"></a>
                                <p class="text_content">
                                    훈훈한 열기를 전달해 주세요. (날짜: 2022-01-01~ 2022-01-17)
                                </p>
                                <span class="text_information">사랑의 연탄배달</span>
                                <span class="text_information">목표금액 달성</span>
                                <button class="button_delete" data-id="61d7a8bc49c1a162a5e711aa">
                                    <span class="blind">삭제</span>
                                </button>
                            </div>
                        </li>
                        <li class="item_news type_donation">
                            <div class="card_news">
                                <a href="https://happybean.naver.com/my/notification" class="link"></a>
                                <p class="text_content">
                                    새해엔 학교가 가고 싶어요. (날짜: 2022-01-07 ~ 2022-01-22)
                                </p>
                                <span class="text_information">시골 농아협회</span>
                                <span class="text_information">12% 달성</span>
                                <button class="button_delete" data-id="61d7a8b94403a833c495ec99">
                                    <span class="blind">삭제</span>
                                </button>
                            </div>
                        </li>
                    </ol>
                </div><a href="../홈페이지_기본_레이아웃/manager-donation.html" class="my_recent_news_link">전체보기 <i class="fas fa-chevron-right"></i></a>
            </div>

            <!-- 내 소식 -->
            <div class="my_recent_news_wrap" id="my_notification">
            <h3 class="my_recent_news_title">오늘의 봉사 일정</h3><span class="my_recent_news_count">총<span class="number" id="my_notification_count">42</span>건</span>
            <div class="my_recent_news_feed"><!--전체 보기-->
                <ol class="list_news" id="my_notification_list">
                    <li class="item_news type_funding">
                        <div class="card_news">
                            <a href="https://happybean.naver.com/my/notification" class="link"></a>
                            <p class="text_content">
                                노인분들에게 희망을 전달해 주세요. (장소: 중구 태평로 152-12번지 희망노인회관)
                            </p>
                            <span class="text_information">하루나리</span>
                            <span class="text_information">참여인원 : 23 명</span>
                            <button class="button_delete" data-id="61d7a8bc2c5ccf943ae43321">
                                <span class="blind">삭제</span>
                            </button>
                        </div>
                    </li>
                    <li class="item_news type_funding">
                        <div class="card_news">
                            <a href="https://happybean.naver.com/my/notification" class="link"></a>
                            <p class="text_content">
                                희망 봉사원 새해맞이 청소. (장소 : 유성구 172-21 희망봉사원 2층)
                            </p>
                            <span class="text_information">희망 봉사원</span>
                            <span class="text_information">참여인원 : 12 명</span>
                            <button class="button_delete" data-id="61d7a8bc49c1a162a5e711aa">
                                <span class="blind">삭제</span>
                            </button>
                        </div>
                    </li>
                    <li class="item_news type_funding">
                        <div class="card_news">
                            <a href="https://happybean.naver.com/my/notification" class="link"></a>
                            <p class="text_content">
                                유등천을 살려주세요. (장소: 중구 태평로 유등천 다리 밑)
                            </p>
                            <span class="text_information">워터닥터</span>
                            <span class="text_information">참여인원 : 32 명</span>
                            <button class="button_delete" data-id="61d7a8b94403a833c495ec99">
                                <span class="blind">삭제</span>
                            </button>
                        </div>
                    </li>
                </ol>
            </div><a href="../홈페이지_기본_레이아웃/manager-volunteer.html" class="my_recent_news_link">전체보기 <i class="fas fa-chevron-right"></i></a>
        </div>

        </div><!-- 활동 내용 div-->


        </div>
    </div>
</form>


        <script>
            /*메인 header 따라 오기 */
            let header = document.querySelector(".header-header-1");
            let headerHeight = header.offsetHeight;

            window.onscroll = function () {
                let windowTop = window.scrollY;
                if (windowTop >= headerHeight) {
                    header.classList.add("is-scroll");
                } else {
                    header.classList.remove("is-scroll");
                }
            };
            // 

            var kkeys = [],
                konami = "38,38,40,40,37,39,37,39,66,65";
            $(document).keydown(function (e) {
                kkeys.push(e.keyCode);
                if (kkeys.toString().indexOf(konami) >= 0) {
                    kkeys = [];
                    alert('안녕하세요');
                }
            });

            /* 후원 금액 숫자 순차적 증가*/
    /* 후원 금액 숫자 순차적 증가*/
    $({ val : 0 }).animate({ val : 150000 }, { /*val : 0 /시작 숫자 / val : 150000 종료 숫자 */
        duration: 1500,
        step: function() {
            var num = numberWithCommas(Math.floor(this.val)); 
            $(".big_number").text(num);
        },
        complete: function() {
            var num = numberWithCommas(Math.floor(this.val));
            $(".big_number").text(num);
        }
    });

        $({ val : 0 }).animate({ val : 1.5 }, { /*소숫점 표시시 사용*/
        duration: 1000,
        step: function() {
            var num = numberWithCommas(this.val.toFixed(1));
            $(".count_num2").text(num);
        },
        complete: function() {
            var num = numberWithCommas(this.val.toFixed(1));
            $(".count_num2").text(num);
        }
    });

    function numberWithCommas(x) { //numberWithCommas 3자리마다 콤마
        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }
        </script>

</div>
</body>
<!--footer -->
<footer class="footer-box">
    <div class="footer-top">
        <dl class="footer-top-box">
            <dt class="footer-top-notice"><a href="">공지사항</a></dt>
            <dd class="foorer-top-notice-text">
                <a href="">회원 가입시 개인정보 관리 내역에 대해 안내해드립니다.<i class="icon-n"><i class="fab fa-envira"></i></i></a>
            </dd>
        </dl>
        <div class="service-info-box" aria-hidden="false">
            <dl class="service-info-first-line">
                <dt class="service-info-first-line-title">해피빈 안내</dt>
                <dd class="service-info-first-line-item"><a href="">해피빈 소개</a></dd>
                <dd class="service-info-first-line-item"><a href="">해피빈 현황</a></dd>
            </dl>
            <dl class="service-info-first-line">
                <dt class="service-info-first-line-title">제휴∙단체안내</dt>
                <dd class="service-info-first-line-item"><a href="">해피로그 가입</a></dd>
                <dd class="service-info-first-line-item"><a href="">기업제휴 문의</a></dd>
                <dd class="service-info-first-line-item"><a href="">펀딩 개설 신청</a></dd>
            </dl>
        </div>
    </div>

    <div class="footer-info-box">
        <div class="footer-info-inner">
            <ul class="footer-info-list">
                <li class="footer-info-item"><a href="" target="해피빈 이용약관">해피빈 이용약관</a></li>
                <li class="footer-info-item"><a href="" target="개인정보처리방침"><strong>개인정보처리방침</strong></a></li>
                <li class="footer-info-item"><a href="" target="책임의 한계와 법적고지">책임의 한계와 법적고지</a></li>
                <li class="footer-info-item"><a href="" target="고객센터">고객센터</a></li>
                <li class="footer-info-item"><a href="" target="공익제보(행정안전부)">공익제보(행정안전부)</a></li>
            </ul><br>
            <!--ul 끼리 붙어 있어 줄바꿈이 생기지 않아서 넣어줌-->
            <ul class="footer-info-list">
                <li class="footer-info-item">제단법인 굿아이디어</li>
                <li class="footer-info-item">대표 : 최정우</li>
                <li class="footer-info-item">사업자 등록번호 :199-40-91928</li>
                <li class="footer-info-item">통신판매업신고 : 2015-대전충남-1994호</li>
            </ul><br>
            <address class="footer-info-address">대전 충남 대덕대로 150 11층 (갈마동,창원빌딩) 대표전화 : 1588-8282</address>
            <small class="footer-info_notice">
                재능 기부 및 직접기부의 진행과 리워드 제공의 책임은 해당 프로젝트의 개설자에게 있습니다. 굿아이디어는 해당 프로젝트의 당사자가 아니며, 리워드 제공에 대한 책임을 지지 않습니다.
            </small>
            <div class="footer-info-copyright">
                <a href="" class="footer-info-logo">
                    <img src="img/company.png" class="company-logo" alt="LOGO">
                </a> <br>
                <span class="Copyright">Copyright © G&I Corp. All Rights Reserved.</span>
            </div>
        </div>
    </div>

</footer>

</div>
</div>
</div>

</html>