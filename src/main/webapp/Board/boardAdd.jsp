<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>술이주夜 - 리뷰</title>
<jsp:include page="common/header.jsp" />
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="stylesheet" type="text/css" href="../CSS/board.css">
<script src="../js/summernote/summernote-lite.js"></script>
<script src="../js/summernote/lang/summernote-ko-KR.js"></script> 
<!-- <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->

<link rel="stylesheet" href="../CSS/summernote/summernote-lite.css">
</head>
<body>
	<form action="">
		<div class='boardCreateBody'>
			<h5>우리술 리뷰 쓰기</h5>
			<hr>
			<div class='alcoholInfo'>
				<!-- 술 정보 -->
				<div id='alcohoImg'>
					<img src=''>
				</div>
				<div id='alcohoContent'>
					<span id='alcohoName'>술 이름</span><br> <span id='alcohoExp'>술
						설명</span>
				</div>
			</div>
			<hr>
			<div class='boardSet'>
				<div class='boardUser'>작성자</div>
				<span id='userName'>yongacr</span>
			</div>
			<hr>
			<div class='boardSet'>
				<div class='boardUser'>평가</div>
				<input type="radio" class='score' id='scoreOne' name='boardScore'checked><label for="scoreOne">★</label> 
				<input type="radio" class='score' id='scoreTwe' name='boardScore'><label for="scoreTwe">★★</label>
				<input type="radio" class='score' id='scoreThree' name='boardScore'><label for="scoreThree">★★★</label> 
				<input type="radio" class='score' id='scoreFore' name='boardScore'><label for="scoreFore">★★★★</label>
				<input type="radio" class='score' id='scoreFive' name='boardScore'><label for="scoreFive">★★★★★</label>
			</div>
			<hr>
			<div class='boardSet'>
				<div class='boardUser'>제목</div>
				<input id='boardTitle' name='boardTitle' type="text" maxlength="35"
					placeholder="제목을 입력하세요.">
			</div>
			<hr>
			
			<div class='boardSet'>
				<div class='boardUser' style="height: 300px; line-height: 300px;">내용</div>
				<input id='boardDetail' name='boardDetail' type="text" maxlength="35"
					placeholder="내용을 입력하세요." style="height: 300px; ">
				<!-- <div id="summernote"><p></p></div> -->
			</div>
			<hr>
			<div class='boardSet'>
				<div class='boardUser'>이미지</div> <input id='boardImgAdd' type="file">
			</div>
			<hr>
			<div class='boardLastBtn'>
				<button>등록</button>
				<button>취소</button>	
			</div>
		</div>
	</form>
 	<%-- <script>
		$(document).ready(function() {
			$('#summernote').summernote({
				 height: 250,
				 minHeight: null,
				 maxHeight: null, 
				 focus: true,
				 lang: "ko-KR",
				 toolbar: [
				    // [groupName, [list of button]]
				    ['fontname', ['fontname']],
				    ['fontsize', ['fontsize']],
				    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
				    ['color', ['forecolor','color']],
				    ['table', ['table']],
				    ['para', ['ul', 'ol', 'paragraph']],
				    ['height', ['height']],
				    ['insert',['picture','link','video']],
				    ['view', ['fullscreen', 'help']]
				  ],
				fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
				fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
			  });
	    });	
	</script>--%>
	<jsp:include page="common/footer.jsp" /> 
</body>
</html>