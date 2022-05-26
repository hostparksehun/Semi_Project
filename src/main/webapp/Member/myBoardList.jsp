<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- CSS -->
<link rel="stylesheet" href="/CSS/myPage.css">
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


<title>우리술夜</title>
</head>

<body>
	<div class="container">
		<header>
			<nav class="navbar navbar-expand-lg navbar-light bg-white">
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="/index.jsp"> <img alt=""
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
								id="navbarDropdown" role="button" data-bs-toggle="dropdown"
								aria-expanded="false"> 우리술 정보 </a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="#">막걸리</a></li>
									<li><a class="dropdown-item" href="#">증류주</a></li>
									<li><a class="dropdown-item" href="#">담금주</a></li>
									<li>
										<hr class="dropdown-divider">
									</li>
									<li><a class="dropdown-item" href="#">전체보기</a></li>
								</ul></li>

							<li class="nav-item"><a
								class="nav-link mx-0 mx-md-2 mx-xl-5" href="/Search/search.jsp">우리
									술 검색</a></li>


							<li class="nav-item"><a
								class="nav-link mx-0 mx-md-2 mx-xl-5" href="/boardList.board">술꾼술꾼</a>
							</li>

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
							</c:otherwise>
						</c:choose>


					</div>
				</div>
			</nav>
		</header>




    <!----------------------------------- Content ----------------------------------->
    <div class="row" id="mypage">
      <div class="col-12" id="mypage_text">
          <h1>게시판 모아보기</h1>
      </div>
    </div>
    <div class="row" id="content">
     <div class="col-12 col-md-3 d-none d-lg-block" id="mypage list">
				<ul class="list-group list-group-flush">
					<a href="/mypage.member"
						class="list-group-item list-group-item-action">회원정보 수정</a>
					<a href="/Member/memberOut.jsp"
						class="list-group-item list-group-item-action">회원탈퇴</a>
					<a href="/myboard.board?cpage=1"
						class="list-group-item list-group-item-action">게시글 모아보기</a>

				</ul>

			</div>
			<div class="col-12 d-lg-none" id="navmenu">
			<nav class="nav nav-pills nav-fill" >
  				<a class="nav-link" href="/mypage.member">회원정보 수정</a>
 				<a class="nav-link" href="/Member/memberOut.jsp">회원탈퇴</a>
  				<a class="nav-link" href="/myboard.board?cpage=1">게시글 모아보기</a>
 
			</nav>
			</div>
    <div class="col-12 col-md-9" id="myboard list">
    	<table class="table table-hover">

										<thead class="table-success " style="text-align: center;">
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
												<td colspan="1"><a
													href="/boardSelect.board?num=${i.board_num}"
													style="color:black;text-decoration-line: none;">
													${i.board_num}</a>
												</td>
												<td colspan="6"><a
													href="/boardSelect.board?num=${i.board_num}"
													style="color:black;text-decoration-line: none;"> ${ i.title }
												</a></td>
												<td colspan="2">
												<a
													href="/boardSelect.board?num=${i.board_num}"
													style="color:black;text-decoration-line: none;">${ i.writer }</a></td>
												<td colspan="3"><a
													href="/boardSelect.board?num=${i.board_num}"
													style="color:black;text-decoration-line: none;">${ i.formedDate }</a></td>
												</th>
											</tbody>

										</c:forEach>
									</table>
    </div>
    </div>

	

		<!----------------------------------- footer ----------------------------------->


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