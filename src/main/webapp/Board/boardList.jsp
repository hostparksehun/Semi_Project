<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>술이주夜 - 리뷰게시판</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="stylesheet" type="text/css" href="../CSS/board.css">
</head>
<body>
	<jsp:include page="common/header.jsp"/>
	<div class='boardBody'>
		<div class='boardDiv'>
			<div class='btn_layer'>
				<button class='top_board'>인기글 모아보기</button>
			</div>
			<table class='boardTable'>
				<thead>
					<tr>
						<th>번호</th>
						<th>분류</th>
						<th>작성자</th>
						<th>제목</th>
						<th>조회</th>
						<th>추천</th>
						<th>날짜</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="7">현재 등록된 게시글이 없습니다.</td>
					</tr>
		
				</tbody>
			</table>
			<div class='btn_under'>
				<button class='down_board'>전체 보기</button>
				<button class='down_board'>조회 순</button>
				<button class='down_board'>최근 작성 순</button>
				<button class='down_board'>태그별 보기</button>
				<div class='btn_write'>
					<button class='down_write'>글쓰기</button>
				</div>
			</div>
			<div class='page'>
				<ul class='pagination modal'>
					<li><a href="#" class='first'>처음페이지</a></li>
					<li><a href="#" class='arrow left'>&lt&lt</a></li>
					<li><a href="#" class='active num'>1</a></li>
					<li><a href="#" class='num'>2</a></li>
					<li><a href="#" class='num'>3</a></li>
					<li><a href="#" class='num'>4</a></li>
					<li><a href="#" class='num'>5</a></li>
					<li><a href="#" class='arrow right'>&gt&gt</a></li>
					<li><a href="#" class='last'>끝 페이지</a></li>
				</ul>
			</div>
		</div>
	</div>
	<jsp:include page="common/footer.jsp"/>
</body>
</html>