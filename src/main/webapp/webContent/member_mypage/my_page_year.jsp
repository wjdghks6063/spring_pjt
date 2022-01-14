<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common_header.jsp" %>
    <!--페이지 css-->
    <link href="css/mypage-menu.css" rel="stylesheet">
    <link href="css/my-page-Year-end-settlement.css" rel="stylesheet">



    <div id="containar">
        <!-- 마이 페이지 메뉴-->
        <div class="my-page-box">
            <div class="my-list-left">
                   <div class="my-profile">
                <div class="my_profile_nickname">
                    <span class="ellipsis" id="nickNameArea">${session_name}</span>
                </div>
                <div class="my_profile_id" id="maskingIdArea">${session_id}</div>
            </div>
                <div id="lnb" class="my_lnb" role="menu">
                    <!-- aria-current="#" 여부에 따라 색상 불 들어옴-->
                    <a href="Mypage_home" role="menuitem" class="my_lnb_item" id="lnb_my_home"
                        aria-current="false">MY홈</a>
                    <a href="Mypage_news" role="menuitem" class="my_lnb_item"
                        id="lnb_my_notification" aria-current="false">내 소식</a>
                    <a href="Mypage_activity" role="menuitem" class="my_lnb_item"
                        id="lnb_my_activity" aria-current="false">활동내역</a>
                    <a href="Mypage_regular_payment" role="menuitem" id="my_lnb_item"
                        class="my_lnb_item" aria-current="false">정기결제관리</a>
                    <a href="Mypage_year" role="menuitem" class="my_lnb_item"
                        id="lnb_my_tax" aria-current="true">연말정산</a>
                </div>
            </div>


            <!-- 내용 창 -->
            <div role="main" id="content" class="my_content">
                <h2 class="my_title">연말정산</h2>
                <p class="my_tax_notice">
                    <em class="point"><i class="fas fa-exclamation-circle"></i> 기부금 영수증 내역 확인 기간이 아닙니다.</em>
                    기부금 영수증 발급을 신청하신 경우, 1월 중 오픈되는 연말정산 페이지에서 기부금 영수증 발급 정보 확인이 가능합니다.
                </p>

                <form id="nothingAgreeLogArea" aria-hidden="false">
                    <fieldset>
                        <div class="my_tax_wrap">
                            <h3 class="my_tax_title">해피빈을 통해 <span class="point">기부금 영수증</span>을 받으시려면<br>꼭 확인하세요!</h3>
                            <strong class="my_tax_sub_title">개인정보 수집/제공 동의 및 기부금 영수증 신청</strong>
                            <div class="my_tax_text_box">
                                <p class="my_tax_text_description">해피빈에서는 회원께서 <strong class="highlight">결제 기부하셨을 경우
                                        소득세법에 따라 세액공제를 받으실 수 있도록 기부증빙(기부금 영수증) 국세청 등록 대행</strong>을 하고 있습니다. (단, 기부금 영수증
                                    발급이 가능한 단체 중 해피빈에 개인정보 수집 업무 위탁 및 국세청 등록 업무 대행에 동의한 단체에 한 함)<br><br><strong
                                        class="highlight">연말정산 간소화 시스템을 통해 기부금 세액공제를 받으시려면</strong> 개인정보 제공에 동의 후 입력해
                                    주시기 바라며, 네이버 실명 회원이 아닌 경우 신청이 불가하오니 실명인증 후 이용해 주시기 바랍니다. <a
                                        href="https://help.naver.com/support/contents/contents.help?serviceNo=532&amp;categoryNo=1560"
                                        class="link">자세히 보기</a></p>
                                <hr class="my_tax_text_hr">
                                <h3 class="my_tax_text_title">소득세법에 따른 개인정보 수집 안내</h3>
                                <p class="my_tax_text_description">해피빈에서는 기부금 영수증 발급 및 발급명세서 작성을 목적으로 <strong
                                        class="highlight">소득세법 제160조의3, 소득세법 시행령 제113조 제1항, 제208조의3, 소득세법 시행규칙 제58조 조항에
                                        의거하여</strong> 기부자의 이름, 주민등록번호, 주소를 수집합니다. 수집한 개인정보는 기부금 영수증 발급을 위해서만 사용되며,
                                    <strong class="emphasis">관련 법령에 따라 5년간 보관됩니다.</strong></p>
                                <p class="my_tax_text_description"><strong class="highlight">개인정보를 입력하지 않을 경우 기부금 영수증
                                        발급이 제한될 수 있습니다.</strong> (기부금 영수증 발급명세는 국세청 홈택스에서만 조회되며 우편으로는 발송되지 않습니다.)</p>
                                <hr class="my_tax_text_hr">
                                <h3 class="my_tax_text_title">기부금 영수증 발행을 위한 개인정보 제공 안내</h3>
                                <p class="my_tax_text_description"><strong class="emphasis">수집한 개인정보는 기부금 영수증 발행과 기부내역의
                                        신고에만 사용되며, 국세청과 기부금 영수증 발행기관에서 관련 법률에 따라 보관 후 파기합니다.</strong></p>
                                <ol class="my_tax_text_description">
                                    <li>
                                        <strong class="highlight">1. 국세청에 제공되는 정보 : </strong>이름, 기부 일자, 금액, 주민등록번호
                                    </li>
                                    <li>
                                        <strong class="highlight">2. 모금단체에 제공되는 정보 : </strong>
                                        아이디, 이름 일부분, 기부 일자, 금액, 주민등록번호 앞자리
                                    </li>
                                    <li>
                                        <strong class="highlight">3. 관련 법령 준수를 위해 해피빈이 보관하는 정보 : </strong>
                                        이름, 기부 일자, 금액,주민등록번호, 주소
                                    </li>
                                </ol>
                            </div>
                            
                            <div class="my_tax_radio_area"><!-- 동의 여부에 따라 disabled="disabled 가 활성화 됬다 꺼져야 함-->
                                <input type="radio" id="radio_agree" name="personal_info" class="my_tax_radio" checked>
                                    <label for="radio_agree" class="my_tax_label">동의함</label>
                                <input type="radio" id="radio_disagree" name="personal_info" class="my_tax_radio">
                                    <label for="radio_disagree" class="my_tax_label">동의하지 않음</label> 
                            </div>

                            <div class="my_tax_personal_area" id="my_tax_personal_area">
                                <div class="my_tax_personal_group">
                                    <label for="donorName" class="my_tax_personal_label">기부자명</label> 
                                    <input type="text" id="donorName" class="my_tax_personal_input" name="realNameCrt.memberRealName" maxlength="30">
                                </div>
                                <div class="my_tax_personal_group">
                                    <label for="frontSocialSecurityNumber" class="my_tax_personal_label">주민등록번호</label> 
                                    <input type="text" id="frontSocialSecurityNumber" class="my_tax_personal_input2" maxlength="6"> 
                                    <span class="bar">-</span> 
                                    <label for="backSocialSecurityNumber" class="blind">주민 등록번호 뒷자리</label> 
                                    <input type="text" type="password" id="backSocialSecurityNumber" class="my_tax_personal_input2" maxlength="7"> 
                                </div>
                                <div id="individualAddress" class="my_tax_personal_group">
                                    <label for="basicAddress" class="my_tax_personal_label">주소</label>
                                    <div class="my_tax_address_area">
                                        <input type="radio" id="basicAddress" name="personal_info" class="my_tax_radio addressRadio" >
                                        <label for="basicAddress" class="my_tax_label">기본주소</label>
                                        <button type="button" class="btn_address_list" >주소목록</button>
                                        <input type="radio" id="directAddress" name="personal_info" class="my_tax_radio addressRadio">
                                        <label for="directAddress" class="my_tax_label">직접입력</label>

                                    <div class="my_address_box">
                                        <input type="text" id="zipcode" name="realNameCrt.userZipcode" class="my_tax_address_input">
                                        <button type="button" class="btn_address" >우편번호</button>
                                    </div>

                                    <div class="my_address_box">
                                        <input type="text" id="baseAddress" name="realNameCrt.userBaseAddress" class="my_tax_address_input2">
                                        <input type="text" id="detailAddress" name="realNameCrt.userDetailAddress" placeholder="상세주소입력" class="my_tax_address_input2">
                                    </div>
                                        <p class="my_tax_address_notice">
                                            ※ 한국에 거주하고 있는 외국인의 경우 기부자명을 한글 또는 영문 대문자로 입력해주시고,&nbsp;<br>
                                            주민등록번호 입력란에는 외국인 등록번호를 입력해 주시기 바랍니다.<br>
                                            네이버 실명 회원이 아닌 경우 신청이 불가하오니 실명인증 후 이용해 주시기 바랍니다.
                                            <a href="https://help.naver.com/support/contents/contents.help?serviceNo=532&amp;categoryNo=1560"
                                                class="link">자세히 보기</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div><button class="my_tax_btn" id="agreeButton" data-agreeable="false"
                            data-agreeable-open-day="20220114">확인</button>
                    </fieldset>
                </form>
            </div>


        </div>
        <!--my-page-box-->



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

            // 페이지 로딩이 끝날 때까지 기다림
            document.addEventListener('DOMContentLoaded', function () {
                // `change` 이벤츠 수신기를 체크박스에 부착
                document.getElementById('radio_disagree').onchange = toggleBilling;
                document.getElementById('radio_agree').onchange = toggleBilling2;
            }, false);

            function toggleBilling() {
                // 청구지 텍스트 입력 칸을 모두 선택
                var billingItems = document.querySelectorAll('.my_tax_personal_area input[type="text"],.my_tax_personal_area  input[type="radio"],.my_tax_personal_area  button[type="button"]');

                // 하나씩 토글
                for (var i = 0; i < billingItems.length; i++) {
                    billingItems[i].disabled = !billingItems[i].disabled;
                }
            }

            

            function toggleBilling2() {
                // 청구지 텍스트 입력 칸을 모두 선택
                var billingItems = document.querySelectorAll('.my_tax_personal_area input[type="text"],.my_tax_personal_area  input[type="radio"],.my_tax_personal_area  button[type="button"]');

                // 하나씩 토글
                for (var i = 0; i < billingItems.length; i++) {
                    billingItems[i].disabled = !billingItems[i].disabled;
                }
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
                <dd class="service-info-first-line-item"><a href="">콩받기 안내</a></dd>
                <dd class="service-info-first-line-item"><a href="">해피빈 현황</a></dd>
                <dd class="service-info-first-line-item"><a href="">콩구폰 입력</a></dd>
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