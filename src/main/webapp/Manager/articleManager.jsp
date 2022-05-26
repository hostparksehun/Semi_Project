<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<!-- CSS -->
<link rel="stylesheet" href="/CSS/productAdd.css">
<!-- 경로 수정 고려 -->

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<!-- Bootstrap ver 5.1  -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<script src="https://kit.fontawesome.com/7f0130da7d.js"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="/smarteditor/js/HuskyEZCreator.js"
	charset="utf-8"></script>

<title>게시글 관리</title>
<body>
	<div class="container">
		<header>
			<nav class="navbar navbar-expand-lg navbar-light bg-white">
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="index.jsp"> <img alt=""
							src="/img/logo2.jpg" id="logo"> <!-- 경로 수정 고려 -->
						</a>
					</div>

					<!-- <a class="navbar-brand" href="#">
                <img src="/img/logo2.jpg" id="logo">
              </a> -->

					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle mx-0 mx-md-2 mx-xl-5" href="#"
								id="navbarDropdown" role="button" href=""
								data-bs-toggle="dropdown" aria-expanded="false"> 우리술 정보 </a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item"
										href="/productAll_01.ProductController">막걸리</a></li>
									<li><a class="dropdown-item"
										href="/productAll_02.ProductController">증류주</a></li>
									<li><a class="dropdown-item"
										href="/productAll_03.ProductController">담금주</a></li>
									<li>
										<hr class="dropdown-divider">
									</li>
									<li><a class="dropdown-item" href="list.ProductController">전체보기</a></li>
								</ul></li>

							<li class="nav-item"><a href="/Search/search.jsp"
								class="nav-link mx-0 mx-md-2 mx-xl-5">우리 술 검색</a></li>


							<li class="nav-item"><a
								class="nav-link mx-0 mx-md-2 mx-xl-5" href="/boardList.board"
								id="board">술꾼술꾼</a></li>
							<c:choose>
								<c:when test="${loginID eq 'admin'}">
									<li class="nav-item"><a
										class="nav-link mx-0 mx-md-2 mx-xl-5"
										href="/Manager/manager.jsp" id="board">관리자 페이지</a></li>
								</c:when>

								<c:otherwise>

								</c:otherwise>
							</c:choose>
						</ul>

						<form action="/mini.search" class="d-flex">
							<input class="form-control me-1" type="search"
								placeholder="Search" aria-label="Search" name="search_text"
								required>
							<button class="btn btn-outline-success me-1" type="submit"
								id="search_btn">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
									fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                    <path
										d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                                </svg>
							</button>
						</form>


						<c:choose>
							<c:when test="${loginID !=null}">
								<div class="btn-group">
									<button type="button" class="btn btn-warning dropdown-toggle"
										data-bs-toggle="dropdown" aria-expanded="false">
										${loginID }</button>
									<ul class="dropdown-menu">
										<li><a class="dropdown-item" href="/mypage.member">마이페이지</a></li>
										<li><a class="dropdown-item" href="/logout.member">로그아웃</a></li>
									</ul>
								</div>

							</c:when>
							<c:otherwise>
								<button id="loginBtn" type="button"
									class="mx-1 btn btn-warning navbar-btn">로그인</button>
								<button id="joinBtn" type="button"
									class="mx-1 btn btn-dark navbar-btn">회원가입</button>

								<script>
									$("#joinBtn").on("click", function() {
										location.href = "/Member/joinView.jsp";
									})
									$("#loginBtn").on("click", function() {
										location.href = "/Member/loginView.jsp"
									})
								</script>
							</c:otherwise>
						</c:choose>

					</div>
				</div>
			</nav>
		</header>

		<!--//////////////////////////////////////////////////////////////////////////////////-->
		<div class="container mt-3">
			<div class="row" id="manager">
				<div class="col-12" id="manager_head">
					<h2>관리 페이지</h2>
				</div>
			</div>
			<div class="row my-2" id="content">
				<div class="col-12 col-md-3" id="mypage list">
					<ul class="list-group list-group-flush">
						<a href="/add.ProductController"
							class="list-group-item list-group-item-action"> 상품 등록 </a>

						<a href="/article.manager?cpage=1"
							class="list-group-item list-group-item-action"> 게시물 관리 </a>

						<a href="/member.manager"
							class="list-group-item list-group-item-action"> 회원 관리 </a>

						<a href="#" class="list-group-item list-group-item-action"> 통계
						</a>
					</ul>
				</div>
				<div class="col-12 col-md-9">

					<span id="title">
						<h3 class="mt-2">게시글 관리</h3>
					</span>

					<div class="container">
						<div class="row">

							<div class="col-12 mb-2 mt-1">총 게시물 : ${count} 건</div>



							<form action="/delAcl.manager">
								<div class="col-3 mb-2 mt-2 ">신고된 게시글</div>


								<div class="col-12">

									<table class="table">

										<thead class="table-danger" style="text-align: center;">
											<th>
											<td colspan="1">#</td>
											<td colspan="6">제목</td>
											<td colspan="2">작성자</td>
											<td colspan="3">날짜</td>
											</th>
										</thead>

										<!-- 반복문 돌릴 예정 : board_num이 value임 -->
										<c:forEach var="i" items="${list}">

											<tbody style="text-align: center;">
												<th>
												<td colspan="1"><input type="checkbox"
													value="${i.board_num}" id="flexCheckIndeterminate" name="del">
												</td>
												<td colspan="6"><a
													href="/boardSelect.board?num=${i.board_num}"> ${ i.title }
												</a></td>
												<td colspan="2">${ i.writer }</td>
												<td colspan="3">${ i.formedDate }</td>
												</th>
											</tbody>

										</c:forEach>
									</table>

									<div class="col-12 d-md-flex mb-2 mt-1 justify-content-md-end">

										<button type="submit" class="btn btn-outline-danger">삭제</button>

									</div>
							</form>

							<div class="col-12 mb-2 mt-1">

								<nav aria-label="Page navigation example">
									<ul class="pagination justify-content-center">${navi}
									</ul>
								</nav>
							</div>

						</div>
					</div>
				</div>


			</div>
		</div>
	</div>


	<!--//////////////////////////////////////////////////////////////////////////////////-->
	<footer class="py-3 my-4">
		<ul class="nav justify-content-center border-bottom pb-3 mb-3">
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-muted">Home</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-muted">Features</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-muted">Pricing</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-muted">FAQs</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-muted">About</a></li>
		</ul>
		<p class="text-center text-muted">&copy; 2022 Company, Inc</p>
	</footer>

	</div>


</body>

</html>