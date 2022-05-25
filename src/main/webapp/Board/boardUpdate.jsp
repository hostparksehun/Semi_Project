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
<!-- <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
<script type="text/javascript" src="/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>


<link rel="stylesheet" href="../CSS/summernote/summernote-lite.css">
</head>
<body>
	<form action="/boardUpdateAction.board" method="post"
		enctype="multipart/form-data">
		<div class='boardCreateBody'>
			<h5>우리술 리뷰 수정</h5>
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
				<span id='userName'>${loginID}</span>
			</div>
			<hr>
			<div class='boardSet'>
				<div class='boardUser'>평가</div>
				<input type="radio" class='score' id='scoreOne' name='boardScore'
					checked><label for="scoreOne">★</label> <input type="radio"
					class='score' id='scoreTwe' name='boardScore'><label
					for="scoreTwe">★★</label> <input type="radio" class='score'
					id='scoreThree' name='boardScore'><label for="scoreThree">★★★</label>
				<input type="radio" class='score' id='scoreFore' name='boardScore'><label
					for="scoreFore">★★★★</label> <input type="radio" class='score'
					id='scoreFive' name='boardScore'><label for="scoreFive">★★★★★</label>
			</div>
			<hr>
			<input id='num' name='num' type="hidden" maxlength="35"
				value="${board.boardNum}">
			<div class='boardSet'>
				<div class='boardUser'>제목</div>
				<input id='boardTitle' name='title' type="text" maxlength="35"
					value="${board.title}" placeholder="제목을 입력하세요.">
			</div>
			<hr>

			<div class='boardSet'>
				<div class='boardUser'">내용</div><br>
				<!-- <input id='boardDetail' name='boardExp' type="text" maxlength="35"
					placeholder="내용을 입력하세요." style="height: 300px; "> -->
				 <div id="smarteditor" style="width: 100%; display: inline-block;">
			        <textarea name="editorTxt" id="editorTxt"
			                  rows="20" cols="10" 
			                  placeholder="내용을 입력해주세요"
			                  style="width: 100%">${board.boardExp}
			        </textarea>
			     </div>
			</div>
			<hr>
			<div class='boardSet'>
				<div class='boardUser'>이미지</div> <input id='file' name='file' type="file">
			</div>
			<hr>
			<div class='boardLastBtn'>
				<button type="submit" onclick="submitAdd()">수정</button>
				<button type="button" onclick="if(confirm('정말로 취소 하시겠습니까?')){location.href='/boardSelect.board?num=${board.boardNum}'}">취소</button>
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


	<script>
		let oEditors = []

		smartEditor = function() {
			nhn.husky.EZCreator.createInIFrame({
				oAppRef : oEditors,
				elPlaceHolder : "editorTxt",
				sSkinURI : "/smarteditor/SmartEditor2Skin.html",
				fCreator : "createSEditor2"
			})
		}
		$(document).ready(function() {
			smartEditor()
		})

		function submitAdd() {
			oEditors.getById["editorTxt"].exec("UPDATE_CONTENTS_FIELD", []);
		}
	</script>


	<jsp:include page="common/footer.jsp" />
</body>
</html>