<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	 $('.ls-modal').on('click', function(e){
		  e.preventDefault();
		  $('#modal').modal('show').find('.modal-body').load($(this).attr('href'));
		});
</script>
<body>
<div class="modal fade" id="modal" >
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
		
            <!-- header title -->
				<h4 class="modal-title">회원 목록</h4>
             <!-- 닫기(x) 버튼 -->
					<button type="button" class="close" data-dismiss="modal">×</button>
			
			</div>
						
			<div class="modal-body"><!--여기에 외부에서 작성한 테이블 들어옴--></div>
							
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>