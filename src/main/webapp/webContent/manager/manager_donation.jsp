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
<link href="css/manager-donation.css" rel="stylesheet">

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
                <a href="../홈페이지_기본_레이아웃/manager-volunteer.html" role="menuitem" class="my_lnb_item" id="lnb_my_activity" aria-current="false">봉사</a> 
                <a href="../홈페이지_기본_레이아웃/manager-Year-end-settlement.html"role="menuitem" class="my_lnb_item" id="lnb_my_tax" aria-current="false">회원 관리</a>
            </div>
        </div>
        
            <!--후원 금액 표시 -->
        <div role="main" id="content" class="my_content">

            <h3 class="my_title">기부 내역</h3>
                <form target="_self">
                    <fieldset>
                        <legend class="blind">활동내역 필터</legend>
                        <div class="activity_category" aria-hidden="false"> <!-- aria-pressed="true" 면 색 들어옴 -->
                            <a href="#" role="button"class="activity_category_item" id="all" aria-pressed="true" data-type="all">전체 조회</a> 
                            <a href="#" role="button" class="activity_category_item" id="senior" aria-pressed="false">노인</a> 
                            <a href="#" role="button" class="activity_category_item" id="child" aria-pressed="false">아동</a> 
                            <a href="#" role="button" class="activity_category_item" id="disabled" aria-pressed="false">장애</a>
                            <a href="#" role="button" class="activity_category_item" id="disaster" aria-pressed="false">재난</a>
                        </div>
                            <div class="activity_category_link" data-type="payment"><a href="../홈페이지_기본_레이아웃/manager-donation-search.html" class="link" id="activity_category_payment">
                            <i class="fas fa-search"></i>&nbsp;&nbsp;상세 검색</a>
                        </div>
                    </fieldset>
                    <div class="my_npaybanner_wrap" style="display:none"></div>
                </form>


            <div class="my_summary_wrap" id="mySummaryAll">
                <div class="my_summary_box">
                    <div class="my_summary_title">
                        <h3 class="title">오늘의 기부 마감</h3>
                        <span class="number_wrap"><span class="number" id="myCashTotal">${TD_list_num}</span> 건</span>
                    </div>
                    <a href="" class="my_summary_item"><span class="title">달성 완료</span><span class="number_wrap"><strong class="number" id="myProject">${TDC_list_num}</strong> 건</span></a>
                    <a href="" class="my_summary_item"><span class="title">달성 미달</span><span class="number_wrap"><strong class="number" id="myProject">${TDD_list_num}</strong> 건</span></a> 
                </div>
                <div class="my_summary_box">
                    <div class="my_summary_title">
                        <h3 class="title">이번 주 기부 일정</h3>
                        <span class="number_wrap"><span class="number" id="myCashTotal">${TW_list_num}</span> 건</span>
                    </div>
                    <a href="" class="my_summary_item"><span class="title">진행 중</span><span class="number_wrap"><strong class="number" id="myProject">${TWP_list_num}</strong> 건</span></a>
                    <a href="" class="my_summary_item"><span class="title">달성 완료</span><span class="number_wrap"><strong class="number" id="myProject">${TWC_list_num}</strong> 건</span></a> 
                    <a href="" class="my_summary_item"><span class="title">마감</span><span class="number_wrap"><strong class="number" id="myProject">${TWD_list_num}</strong> 건</span></a> 
                </div>
                <div class="my_summary_box">
                    <div class="my_summary_title">
                        <h3 class="title">이번 달 기부 일정</h3>
                        <span class="number_wrap"><span class="number" id="myCashTotal">${TM_list_num}</span> 건</span>
                    </div>
                    <a href="" class="my_summary_item"><span class="title">진행 중</span><span class="number_wrap"><strong class="number" id="myProject">${TMP_list_num}</strong> 건</span></a>
                    <a href="" class="my_summary_item"><span class="title">달성 완료</span><span class="number_wrap"><strong class="number" id="myProject">${TMC_list_num}</strong> 건</span></a> 
                    <a href="" class="my_summary_item"><span class="title">마감</span><span class="number_wrap"><strong class="number" id="myProject">${TMD_list_num}</strong> 건</span></a>
                </div>
            </div>
        
                <!-- 진행중 기부 -->
					<div class="my_recent_news_wrap" id="my_notification">
						<c:set var="today_dona" value="${PD_list}"></c:set>
						<!--게시글의 총 갯수를 표시하기위해  arraylist를 today_dona라는 변수로 선언한다. 그 뒤에 ${fn:length(today_dona)}로 리스트의 크기를 계산한다. fn:length를 사용하기 위해선-->
						<!--taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"를 위쪽에 써주어야 사용가능하다.-->
						<h3 class="my_recent_news_title">진행중인 기부</h3>
						<span class="my_recent_news_count">총<span class="number"
							id="my_notification_count">${fn:length(today_dona)}</span>건
						</span>
						<div class="my_recent_news_feed">
							<!--전체 보기-->
							<ol class="list_news" id="my_notification_list">
								<!-- 마감일이 가까워지는 순서대로 보여져야 함-->
								<c:forEach items="${PD_list}" var="pd_list">
									<li class="item_news type_donation">
										<div class="card_news">
											<a href="" class="link"></a>
											<p class="text_content">${pd_list.getDo_title()} (날짜:
												${pd_list.getDo_start_date()} ~ ${pd_list.getDo_end_date()})</p>
											<span class="text_information">${pd_list.getDominator()}</span>
											<!--진행 상황 표시를 위해  퍼센트 표시 -->
											<c:set var="gage" value="${pd_list.getDo_total() / pd_list.getDo_goal() *100}" />
											<!-- gage로 처리하면 99.9647 이런식이라 100%가 적용되지 않기 때문에 gage+((gage%1>0.5)?(1-(gage%1))%1:-(gage%1))로 반올림 처리한다 -->
											<c:choose>
												<c:when test="${gage-(gage%1) >= 100}">
													<span class="text_information">달성 완료</span>
												</c:when>
												<c:otherwise>
													<span class="text_information">
													<fmt:parseNumber var="gage1" value="${gage}" integerOnly="true" />
													<!-- gage의 값을 var=gage1 로 선언한다. gage1의 소숫점을버리고 출력한다. 사용하기위해선 taglib으로 jstl을 선언해야함 -->
													${gage1}% &nbsp달성</span>
												</c:otherwise>
											</c:choose>
											<button class="button_delete"
												data-id="61d7a8bc2c5ccf943ae43321">
												<span class="blind">삭제</span>
											</button>
										</div>
									</li>
								</c:forEach>

							</ol>
						</div>
						<a href="../홈페이지_기본_레이아웃/manager-donation.html"
							class="my_recent_news_link">전체보기 <i
							class="fas fa-chevron-right"></i></a>

					</div>

            <!-- 달성 완료 기부 -->
            <div class="my_recent_news_wrap" id="my_notification">
                <h3 class="my_recent_news_title">목표금액 달성 완료</h3><span class="my_recent_news_count">총<span class="number" id="my_notification_count">42</span>건</span>
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
                </div><a href="../홈페이지_기본_레이아웃/manager-donation-search.html" class="my_recent_news_link">전체보기 <i class="fas fa-chevron-right"></i></a>
            </div>

        </div><!-- 활동 내용 div-->


        </div>
    </div>

        <script>
        
     // 팝업 열기
        $(document).on("click", "#btn-share", function (e){
          var target = $(".share-open");
          $(target).addClass("show");
        });

        // 외부영역 클릭 시 팝업 닫기
        $(document).mouseup(function (e){
          var LayerPopup = $(".share-open");
          if(LayerPopup.has(e.target).length === 0){
            LayerPopup.removeClass("show");
          }
        });
        
        $(document).ready(function () {
			$("#all").click(function(){ // #1000btn 버튼을 클릭 하면 작동한다.
				$("#senior").children("li").css("border", "3px solid #ccc"); //버튼들의 색상을 #ccc로 바꾼다.
				element.activity_category_item.aria-pressed('senior', true);
				element.activity_category_item.toggle('senior', true);
				$("#child").children("li").css("border", "3px solid #ccc");
				$("#disabled").children("li").css("border", "3px solid #ccc");
				$("#disaster").children("li").css("border", "3px solid #ccc");

				$(this).css("border", "3px solid red"); //클릭한 버튼의 색상은 빨간테를 두른다.
				$("#point").val(1000).trigger('change'); //hidden 충전 포인트의  value가 1000으로 바뀐다.
			});
			$("#5000btn").click(function() {
				$("#1000btn").children("li").css("border", "3px solid #ccc");
				$("#10000btn").children("li").css("border", "3px solid #ccc");
				$("#50000btn").children("li").css("border", "3px solid #ccc");

				$(this).children("li").css("border", "3px solid red");
				$("#point").val(5000).trigger('change'); //hidden 충전 포인트의 value가 5000으로 바뀐다.
			});
			$("#10000btn").click(function() {
				$("#5000btn").children("li").css("border", "3px solid #ccc");
				$("#1000btn").children("li").css("border", "3px solid #ccc");
				$("#50000btn").children("li").css("border", "3px solid #ccc");

				$(this).children("li").css("border", "3px solid red");
				$("#point").val(10000).trigger('change'); //hidden 충전 포인트의 value가 10000으로 바뀐다.
			});
			$("#50000btn").click(function() {
				$("#5000btn").children("li").css("border", "3px solid #ccc");
				$("#1000btn").children("li").css("border", "3px solid #ccc");
				$("#10000btn").children("li").css("border", "3px solid #ccc");

				$(this).children("li").css("border", "3px solid red");
				$("#point").val(50000).trigger('change'); //hidden 충전 포인트의 value가 50000으로 바뀐다.
			});

			
			$("#point").change(function() { //충전 포인트의 값이 바뀔때 작동한다.
				$("#charge_point").html(Number($(this).val()).toLocaleString()); //hidden 충전 포인트 값이 span 충전포인트(보여지는 값)의 값으로 자동으로 ,를 찍어서 들어간다. ex) 1000 =  1,000
				var full_point = Number($("#fix_full_point").val()) + Number($("#point").val()); //var = full_point 를 만들고 안에 포인트 값 fix_full_point에 충전할 금액을 더한다.
				$("#fully_charged").html(full_point.toLocaleString()); // 충전 후 포인트의 span 값인 #fully_charged 에 자동콤마처리를 해서 넣어준다.(html은 change 와 비슷하다.)
				$("#full_point").val(full_point).trigger('change'); 
				// hidden 값인 id= full_point에 value를 var = full_point 값으로 바꿔준다. // var = full_point에 fix_full_point를 full_point로 바꾸면 계속 금액이 더해지지만 hidden으로 원래 값에서 더하기를 처리해서 더하기를 방지함
			});
        
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
        
        

</body>
<!--footer -->
<%@ include file = "../common_footer.jsp" %>