<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="../common_header.jsp" %>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
    <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!--페이지 css-->
    <link href="css/mypage-menu.css" rel="stylesheet">
    <link href="css/mypage-home.css" rel="stylesheet">
    <!--script 밑에 body와 </div> 있음-->

<script>
	function MemberinfoUpdate(){
		
		Swal.fire({
	  		icon: 'success',
			  title: '<div style="font-size:25px;font-family:Dongle;color:#A9A9A9;"> 개인정보 수정을 위해 <br><br>이동하시겠습니까? </div>',
			  padding: '3em',
			  color: '#A9A9A9',
			  confirmButtonColor: 'gray',
			  showCancelButton: true,
			  confirmButtonText: '네',
			  cancelButtonText: '아니오',
			  cancelButtonColor: '#A9A9A9',
			  reverseButtons: true
	  		}).then((result) => {
				if (result.isConfirmed) { 
					
					member.method="post";
					member.action="Mypage_update";
					member.submit();
				  }else{
					        }
					}) 
	}
</script>
	<form name="member">
	<input type="hidden" name="t_id" value="${session_id}">
    <div class="my-page-box">
        <div class="my-list-left">
            <div class="my-profile">
                <div class="my_profile_nickname">
                    <span class="ellipsis" id="nickNameArea">${session_name}</span>
                </div>
                <div class="my_profile_id" id="maskingIdArea">${session_id}</div>
                <div class="setting_button" style="float:right;"><a href="javascript:MemberinfoUpdate()" title="정보수정"><i class="fas fa-cog"></i></a></div>
            </div>
            <div id="lnb" class="my_lnb" role="menu">
                <a href="Mypage_home" role="menuitem" class="my_lnb_item" id="lnb_my_home" aria-current="true">MY홈</a> 
                <a href="Mypage_news" role="menuitem" class="my_lnb_item" id="lnb_my_notification" aria-current="false">내 소식</a>
                <a href="Mypage_activity" role="menuitem" class="my_lnb_item" id="lnb_my_activity" aria-current="false">활동내역</a> 
                <a href="Mypage_regular_payment" role="menuitem" id="my_lnb_item" class="my_lnb_item" aria-current="false">정기결제관리</a>
                <a href="Mypage_year"role="menuitem" class="my_lnb_item" id="lnb_my_tax" aria-current="false">연말정산</a>
            </div>
        </div>
        
            <!--후원 금액 표시 -->
        <div role="main" id="content" class="my_content">
            <div class="my_summary_wrap" id="mySummaryAll">
                <div class="my_summary_box">
                    <div class="my_summary_title">
                        <h3 class="title">일일 후원금액</h3>
                        <span class="number_wrap"><span class="number" id="myCashTotal">0</span>원</span>
                    </div>
                    <a href="/my/timeline#type=payment" class="my_summary_item"><span class="title">일일 기부금액</span><span class="number_wrap"><strong class="number" id="myCharge">0</strong>원</span></a> 
                    <a href="/my/timeline#type=payment" class="my_summary_item"><span class="title">일일 참여횟수</span><span class="number_wrap"><strong class="number" id="myCharge">0</strong>원</span></a> 
                </div>
                <div class="my_summary_box">
                    <div class="my_summary_title">
                        <h3 class="title">총 후원금액</h3><span class="number_wrap"><strong class="number" id="mySponTotal">4,200</strong>원</span>
                    </div>
                        <a href="/my/timeline#type=donation" class="my_summary_item"><span class="title">총 기부금액</span><span class="number_wrap"><strong class="number" id="myDonation">4,200</strong>원</span></a> 
                        <a href="/my/timeline#type=funding" class="my_summary_item"><span class="title">총 참여횟수</span><span class="number_wrap"><strong class="number" id="myJoin">0</strong>회</span></a>
                </div>
            </div>
        

                <!-- 내 소식 -->
            <div class="my_recent_news_wrap" id="my_notification">
                <h3 class="my_recent_news_title">내 소식</h3><span class="my_recent_news_count">총<span class="number" id="my_notification_count">42</span>건</span>
                <p class="my_recent_news_guide"><i class="fas fa-exclamation-circle"></i> 결제 알림은 마케팅 알림 수신 동의 여부와 관계없이 발송됩니다.</p><div class="my_recent_news_feed">
                    <ol class="list_news" id="my_notification_list">
                        <li class="item_news type_funding">
                            <div class="card_news">
                                <a href="https://happybean.naver.com/my/notification" class="link"></a>
                                <p class="text_content">
                                    해피빈 마케팅 정보 수신을 거부하셨습니다. (날짜: 2022-01-07)
                                </p>
                                <span class="text_information">해피빈</span>
                                <span class="text_information">2분전</span>
                                <button class="button_delete" data-id="61d7a8bc2c5ccf943ae43321">
                                    <span class="blind">삭제</span>
                                </button>
                            </div>
                        </li>
                        <li class="item_news type_funding">
                            <div class="card_news">
                                <a href="https://happybean.naver.com/my/notification" class="link"></a>
                                <p class="text_content">
                                    해피빈 마케팅 정보 수신에 동의하셨습니다. (날짜: 2022-01-07)
                                </p>
                                <span class="text_information">해피빈</span>
                                <span class="text_information">2분전</span>
                                <button class="button_delete" data-id="61d7a8bc49c1a162a5e711aa">
                                    <span class="blind">삭제</span>
                                </button>
                            </div>
                        </li>
                        <li class="item_news type_funding">
                            <div class="card_news">
                                <a href="https://happybean.naver.com/my/notification" class="link"></a>
                                <p class="text_content">
                                    해피빈 마케팅 정보 수신을 거부하셨습니다. (날짜: 2022-01-07)
                                </p>
                                <span class="text_information">해피빈</span>
                                <span class="text_information">2분전</span>
                                <button class="button_delete" data-id="61d7a8b94403a833c495ec99">
                                    <span class="blind">삭제</span>
                                </button>
                            </div>
                        </li>
                    </ol>
                </div><a href="/my/notification" class="my_recent_news_link">전체보기 <i class="fas fa-chevron-right"></i></a>
            </div>

            <div class="my_recent_activity_wrap" id="myActivityAll" aria-hidden="false"><h3 class="blind">나의 최근활동</h3><div id="timelineArea"><div class="my_activity_month"><span class="number">2022.01</span></div>
            
            
                <ul class="my_activity_list" id="timeline202201">
                    <!-- [D] 콩소멸 -->
                    <li class="my_activity_cong timeline_root">
                        <div class="my_activity_inner">
                            <div class="my_activity_left">
                                <div class="my_activity_cong_cancelled"></div>
                            </div>
                            <div class="my_activity_center">
                                <strong class="my_activity_date">2022.01.01</strong>
                                <strong class="my_activity_text2">콩소멸</strong>
                                <span class="my_activity_title">[2021_3] 지식인 답변채택콩</span>
                            </div>
                            <div class="my_activity_right">
                                <div class="my_activity_price">- <strong class="number">100</strong>원</div>
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

            </div><a href="/my/timeline#type=all" class="my_activity_link">활동내역 전체보기</a>

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