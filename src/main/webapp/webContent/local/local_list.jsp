<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!--##### // Visual & LNB #####-->
<%@ include file = "../common_header.jsp" %>
<script type="text/javascript">
	function goSearch(search){
	
		sear.t_search.value=search;
		sear.method="post";
		sear.action="LocalNews";
		sear.submit();
	}
	
	function goWriteForm(){
		dona.t_gubun.value="WriteForm";
		dona.method="post";
		dona.action="LocalNews";
		dona.submit();
	}
	function goView(no){
		dona.t_no.value=no;
		dona.t_gubun.value="View";
		dona.method="post";
		dona.action="LocalNews";
		dona.submit();
	}
	function goPage(pageNumber){
		pageform.t_nowPage.value = pageNumber;
		pageform.method="post";
		pageform.action="LocalNews";
		pageform.submit();
	}
</script>
<form name="dona">
	<input type="hidden" name="t_no">
	<input type="hidden" name="t_gubun">
</form>
<form name="pageform">
	<input type="hidden" name="t_nowPage">
	<input type="hidden" name="t_list_setup_count" value="${t_gulsu}">
	<input type="hidden" name="t_select" value="${t_select }">
	<input type="hidden" name="t_search" value="${t_search }">

</form>
<div class="tab-3" data-swipe='{"type":"case1","start":".active"}'>
			<ul>
				<li data-act='tab' class="item"><a href="Donation"><span class="in">기부</span></a></li>
				<li data-act='tab' class="item"><a href="Volunteer"><span class="in">봉사</span></a></li>
				<li data-act='tab' class="item active"><a href="LocalNews"><span class="in">지역뉴스</span></a></li>
				<li data-act='tab' class="item"><a href="Missing"><span class="in">실종아동</span></a></li>
			</ul>
		</div>
	
<!-- 서브 페이지-->	
<div class="sub-main">
	
	<div class="sub-search">
	<h3 class="donation-text-box"><a href="" class="donation-text">100% 전하는 기부 <i class="fas fa-chevron-right"></i></a>
		<br>
		<ul class="">
		<form name="sear">
			<input type="hidden" name="t_search">
                    <li class=""><a href="javascript:goSearch('')"  >
					<h1><i class="fas fa-globe-asia"></i></h1>
					전체 검색</a></li>
                    
					<li class=""><a href="javascript:goSearch('north')" >
					
					<h1><i class="fas fa-child"></i></h1>
					북구</a></li>
                    
					<li class=""><a href="javascript:goSearch('east')">
					<h1><i class="fas fa-user"></i></h1>
					동구</a></li>
                    
					<li class=""><a href="javascript:goSearch('west')" >
					<h1><i class="fab fa-accessible-icon"></i></h1>
					서구</a></li>
                    
					<li class=""><a href="javascript:goSearch('south')">
					<h1><i class="fas fa-house-damage"></i></h1>
					남구</a></li>
					
					<li class=""><a href="javascript:goSearch('center')">
					<h1><i class="fas fa-house-damage"></i></h1>
					중구</a></li>
		</form>			
				</ul>
	</div>
	<div class="sub-content">
			 <div class="donation-box">
        

		</h3>    
          
		  <!-- table start-->
			<div class="table-box">
				<table class="table">
					<caption>회원정보 - 아이디, 이름, 나이, </caption>
					<colgroup>
						<col width="10%">
						<col width="10%">
						<col width="10%">
						<col width="10%">
						<col width="10%">
						<col width="10%">
						<col width="10%">
					</colgroup>
					
					<thead>
						<tr>
							<th scope="col">넘버</th>
							<th scope="col">상품 이미지</th>
							<th scope="col">제품 명</th>
							<th scope="col">제품가격</th>
							<th scope="col" style="color:#006b80">수량</th>
							<th scope="col">최종가격</th>
							<th scope="col">수정</th>
						</tr>
					</thead>
			<form name="storeArr">		
					<tbody>
			<? for($k=0;  $k<$count;  $k++){?>
			<? $row = mysqli_fetch_array($result);?>
					 
				<?if($row["hit"]==0){?>
					<tr>
					 <input type="hidden" name="t_no" value="<?=$row["no"]?>" size="3" >
					 <input type="hidden" name="n_no" value="<?=$row["nno"]?>" size="3" >
						<td><a style="font-size:15px;" href="javascript:goNews('<?=$row['no']?>')"><?=$k+1?></a></td>
					<?if($row["bcount"] > 0 and $row["adate"] == $row["bdate"]){?>	
						<td>
							<a href="javascript:goNews('<?=$row['no']?>')">
							<img src="/fileroom/news/<?=$row['attach']?>" alt="뉴스1" style=" width:100%;"></a></td>
					<?}else if($row["bcount"] == 0 and $row["adate"] == $row["bdate"]){?>
							<td><a style="font-size:15px;color:red;">재 고 없 음</a></td>
					<?}else if($row["bcount"] > 0 and $row["adate"] != $row["bdate"]){?>
						<td><a style="font-size:15px;color:red;">상품정보변경됨</a></td>
					<?}else if($row["bcount"] == 0 and $row["adate"] != $row["bdate"]){?>
						<td><a style="font-size:15px;color:red;">재 고 없 음</a></td>
					<?}?>	
						<td><input name="t_sname" type="hidden" value="<?=$row['sname']?>">
                            <span  style="width:100%;height:30px;font-size:15px;"><?=$row['sname']?></span>    
                            </a></td>	
										<td>
						<input type="hidden" name="t_regid" value="<?=$row["regid"]?>">
						<input name="t_price" type="hidden" value="<?=$row["price"]?>" style="color:#006b80;width:100%;height:30px;font-size:15px; text-align:right;">
                        <span  style=" width:100%;height:30px;font-size:15px;"><?=$row['price']?></span></a></td>
																		
						<td><input name="t_acount" type="number" value="<?=$row["acount"]?>"  onchange="calculation('<?=$row['price']?>','<?=$k?>')"; onKeyUp="calculation('<?=$row['price']?>','<?=$row['acount']?>')";
                                style="color:#006b80;width:100%;height:30px;font-size:15px; text-align:right;"></a></td>
						
						<td>
                            
                        <input type="text" name="t_total" readonly  value="<?=$row["total"]?>"
				 	    style="text-align:right;width:200px; height:30px; font-size:20px; !important;">
					    </td>
			
<style>
	.buttona{
		width:75px;
		height:30px;
		background:#000080;
		text-align:center;
	}.buttonb{
		width:75px;
		height:30px;
		background:#AA0114;
		text-align:center;
	}
	.buttona:hover {
		background:#32CD32;
	}	
	.buttonb:hover {
		background:#32CD32;
	}

</style>						
		<?if($row["bcount"] > 0 and $row["adate"] == $row["bdate"]) {?>		
						<td>
						<input type:button class="buttona" style="color:#FFF" onclick="goNewsUpdate('<?=$k?>')"
						  value="결 제">
						
						  <input type:button class="buttonb" style="color:#FFF" onclick="goNewsDelete('<?=$k?>')"
						  value="거 래 취 소">
						
						</td>
		<?} else if($row["bcount"] == 0 || $row["adate"] != $row["bdate"]) {?>				
			<td> <input type:button class="buttonb" style="color:#FFF" onclick="goNewsDelete('<?=$k?>')"
						  value="거 래 취 소">

			</td>
		<? }?>	
					 </tr>
		 <? } else if($row["hit"] >= 1){  ?>

		<? }?>				 
<? } ?>	
					</tbody>
			
</form>		
				</table>
			</div>
	</div>
	
	<br>
	<%	int total_page 				= (int)request.getAttribute("t_total_page");
		int current_page 			= (int)request.getAttribute("t_current_page");
		out.print(CommonUtil.pageListPost(current_page, total_page, 5));
		%>
	<br>
	<input type="button" onclick="goWriteForm()" value="글 쓰 기" class="btn" style="background-color:#f0f0f0;font-family: 'Dongle';">
								



</div>	
</div>
	




</div>
</body>
<%@ include file = "../common_footer.jsp" %>