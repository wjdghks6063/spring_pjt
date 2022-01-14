<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ include file="../common_header.jsp" %>

    <!--페이지 css-->
    <link href="css/mypage-menu.css" rel="stylesheet">
    <link href="css/mypage-news.css" rel="stylesheet">

<div id="containar">
    <!-- 마이 페이지 메뉴-->
    <div class="my-page-box">
        <div class="my-list-left">
            <div class="my-profile">
                <div class="my_profile_nickname">
                    <span class="ellipsis" id="nickNameArea">nickname1234</span>
                </div>
                <div class="my_profile_id" id="maskingIdArea">nickn****</div>
            </div>
            <div id="lnb" class="my_lnb" role="menu"> <!-- aria-current="#" 여부에 따라 색상 불 들어옴-->
                <a href="Mypage_home" role="menuitem" class="my_lnb_item" id="lnb_my_home" aria-current="false">MY홈</a> 
                <a href="Mypage_news" role="menuitem" class="my_lnb_item" id="lnb_my_notification" aria-current="true">내 소식</a>
                <a href="Mypage_activity" role="menuitem" class="my_lnb_item" id="lnb_my_activity" aria-current="false">활동내역</a> 
                <a href="Mypage_regular_payment" role="menuitem" id="my_lnb_item" class="my_lnb_item" aria-current="false">정기결제관리</a>
                <a href="Mypage_year"role="menuitem" class="my_lnb_item" id="lnb_my_tax" aria-current="false">연말정산</a>
            </div>
        </div>
        
        <!-- 내용 창 -->
        <div role="main" id="content" class="my_content">
            <div class="my_news_wrap">
                <h2 class="my_title">내 소식</h2>
                <form>
                    <div class="my_news_option">
                        <div class="my_news_receiption">
                            <strong class="title">마케팅 알림</strong> 
                            <input id="noti_agreement" type="checkbox" class="input_switch"> 
                            <label for="noti_agreement" class="label_switch"><span class="label_switch_handler"></span></label>
                        </div>
                        <ul class="list_guide">
                            <li class="item_guide highlight">결제 알림은 마케팅 알림 수신 동의 여부와 관계없이 발송됩니다.</li>
                            <li class="item_guide">마케팅 알림 수신에 동의하시면 해피빈의 새 소식과 이벤트를 빠르게 보내드립니다.</li>
                            <li class="item_guide">마케팅 알림 수신을 거부하시면, 펀딩 프리뷰 알림을 받아보실 수 없습니다.</li>
                            <li class="item_guide">최근 30일 내 수신한 소식만 노출됩니다.</li>
                            <li class="item_guide">푸시 알림은 '네이버앱&gt;설정&gt;알림'에서 변경 가능합니다.</li>
                        </ul>
                    </div>
                </form>

                <div class="my_news_feed" id="my_notification">
                    <ol class="list_news" id="my_notification_list">	
                        <li class="item_news type_funding">
                            <div class="card_news">
                                <a href="https://happybean.naver.com/my/notification" class="link"></a>
                                <p class="text_content">
                                    해피빈 마케팅 정보 수신에 동의하셨습니다. (날짜: 2022-01-07)
                                </p>
                                <span class="text_information">해피빈</span>
                                <span class="text_information">2시간전</span>
                                <button class="button_delete" data-id="61d7a8984403a833c495ec8c">
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
                                <span class="text_information">2시간전</span>
                                <button class="button_delete" data-id="61d7a8972c5ccf943ae43313">
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
                                <span class="text_information">2시간전</span>
                                <button class="button_delete" data-id="61d7a89649c1a162a5e7119c">
                                    <span class="blind">삭제</span>
                                </button>
                            </div>
                        </li>
                    </ol>

                    <!-- 내용이 많은 경우 더보기 버튼 활성화 --><!-- 내용이 n개 이상인 경우 더보기 창이 none에서 block 처리 되어야함-->
                    <button type="button" class="btn_horizontal_more" disabled="disabled">더보기</button>
                </div>
                <!-- 검색 결과가 없거나 활동 내용이 없는 경우 띄울 창 display를 block으로 처리한다.-->
                <div class="my_recent_activity_wrap" id="defaultNothing">
                    <div class="none_message"><!-- 소식이 없는 경우 none에서 block 처리 해야함 -->
                        <p class="none_message_inner">내 소식이 없습니다. 
                            <span class="small_text">조회 기간은 최근 한달을 기준으로 설정되어있습니다.</span>
                        </p>
                    </div>
                </div>
            </div>
        </div>


    </div> <!--my-page-box-->



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

            $(document).ready(function() {
                $("#noti_agreement").click(function() { //<input type="checkbox" id="cbx_chkAll"> 가 체크 될 때 작동한다.
                    if($("#noti_agreement").is(":checked")) $(".input_checkbox").prop("checked", true); // 전체 체크가 체크 되었다면 input type 이름이 t_check인 것들은 checked 값이 ture(체크)가 된다.
                    else $(".input_checkbox").prop("checked", false); //input id가 중복 된다면 범위를 지정할수도 있다. .table input[id=t_check] 이런식으로 테이블 범위로만  한정할 수도 있다.
                });
                
                $(".input_checkbox").click(function() { //input name으로 줬었는데 checkbox가 배열로 바뀌면서 name=t_check 나 t_check[] 둘다 인식하지 못해 id로 바꿔줌
                    var total = $(".input_checkbox").length;
                    var checked = $(".input_checkbox:checked").length;

                    if(checked == 0) $("#noti_agreement").prop("checked", false);
                    else $("#noti_agreement").prop("checked", true); 
                });
            });
        </script>

</div>
</body>
<!--footer -->
   <%@ include file="../common_footer.jsp" %>

</div>
</div>
</div>

</html>