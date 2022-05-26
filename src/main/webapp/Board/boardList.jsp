<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>술이주夜 - 리뷰게시판</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="stylesheet" type="text/css" href="../CSS/board.css">
</head>
<body>
	<jsp:include page="common/header.jsp" />
	<div class='boardBody'>
		<div class='boardDiv'>
			<div class='btn_layer'>
				<button class='top_board'
					onclick="location.href='boardList.board?type=3&cpage=1'">인기글
					모아보기</button>
			</div>
			<table class='boardTable'>
				<thead>
					<tr>
						<th>번호</th>
						<th>작성자</th>
						<th>제목</th>
						<th>조회</th>
						<th>추천</th>
						<th>날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty list}">
							<tr>
								<td colspan="7">현재 등록된 게시글이 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="list" items="${list}">
								<tr class='boardSelect' data-id='${list.boardNum}'>
									<td>${list.boardNum}</td>
									<td>${list.writer}</td>
									<td class="boardTitleTd">${list.title}</td>
									<td>${list.boardCount}</td>
									<td>${list.boardLike}</td>
									<td>${list.writeDate}</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
			<div class='btn_under'>
				<button class='down_board'
					onclick="location.href='boardList.board?type=0&cpage=1'">전체
					보기</button>
				<button class='down_board'
					onclick="location.href='boardList.board?type=1&cpage=1'">조회
					순</button>
				<button class='down_board'
					onclick="location.href='boardList.board?type=2&cpage=1'">최근
					작성 순</button>
				<!-- <button class='down_board'>태그별 보기</button> -->
				<div class='btn_write'>
					<button class='down_write'
						onclick="if(${loginID != null}) {location.href='/Board/boardAdd.jsp'}else{alert('로그인 후 작성할 수 있습니다')};">글쓰기</button>
				</div>
			</div>
			<form action=/boardList.board align="center">
				<select name="selectType">
					<option value="1">제목</option>
					<option value="2">작성자</option>
				</select> <input type="text" class='boardSearch' name="boardSearch">
				<button
					style="background-color: #70e0f6; color: white; border: 0px; font-size: 18px;"
					class='boardSearchBtn'>검색하기</button>
			</form>
			<div class="row bd nav">
				<div class="col">${navi}</div>
			</div>
		</div>
	</div>
	<script>
		$(document).on("click",".boardSelect",function(){
			var num = $(this).data("id");
			$(location).attr('href',"boardSelect.board?num="+num);
		});
		
		$(document).on("click","#boardSearchBtn",function(){
			
		});
		
	</script>
	<jsp:include page="common/footer.jsp" />
</body>
</html>