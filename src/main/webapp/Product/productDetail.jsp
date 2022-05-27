<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<!-- CSS -->
<link rel="stylesheet" href="/CSS/productDetail.css">
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
			<header class="mb-5 pt-3">
			<nav class="navbar navbar-expand-lg navbar-light bg-white">
				<div class="container-fluid">
					<div class="navbar-header mx-2">
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
								class="nav-link dropdown-toggle mx-0 mx-md-0 mx-lg-3" href="#"
								id="navbarDropdown" role="button" href=""
								data-bs-toggle="dropdown" aria-expanded="false"> 우리술 정보 </a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="#">막걸리</a></li>
									<li><a class="dropdown-item" href="#">전통 소주</a></li>
									<li><a class="dropdown-item" href="#">약주</a></li>
									<li><a class="dropdown-item" href="#">과실주</a></li>
									<li><a class="dropdown-item" href="#">리큐르</a></li>
									<li>
										<hr class="dropdown-divider">
									</li>
									<li><a class="dropdown-item" href="#">전체보기</a></li>
								</ul></li>

							<li class="nav-item"><a href="/Search/search.jsp"
								class="nav-link mx-0 mx-0 mx-md-0 mx-lg-3">우리술 검색</a></li>


							<li class="nav-item"><a
								class="nav-link mx-0 mx-md-0 mx-lg-3" href="/boardList.board"
								id="board">술꾼 술꾼</a></li>
							<c:choose>
								<c:when test="${loginID != null}">

									<li class="nav-item d-lg-none"><a
										class="nav-link mx-0 mx-md-0 mx-lg-3" href="/mypage.member"
										id="board">내 정보</a></li>

									<li class="nav-item d-lg-none"><a
										class="nav-link mx-0 mx-md-0 mx-lg-3" href="/logout.member"
										id="board">로그아웃</a></li>

								</c:when>

								<c:otherwise>

									<li class="nav-item d-lg-none"><a
										class="nav-link mx-0 mx-md-0 mx-lg-3"
										href="/Member/loginView.jsp" id="board">로그인</a></li>

									<li class="nav-item d-lg-none"><a
										class="nav-link mx-0 mx-md-0 mx-lg-3"
										href="/Member/joinView.jsp" id="board">회원가입</a></li>

								</c:otherwise>
							</c:choose>

							<c:choose>
								<c:when test="${loginID eq 'admin'}">
									<li class="nav-item"><a
										class="nav-link mx-0 mx-0 mx-md-0 mx-lg-3"
										href="/Manager/manager.jsp" id="board">관리자 페이지</a></li>
								</c:when>

								<c:otherwise>

								</c:otherwise>
							</c:choose>

						</ul>
						<form action="/mini.search" class="d-flex">
							<input id="search_input" class="form-control mx-1" type="search"
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
							<c:when test="${loginID != null}">
								<div class="d-none d-lg-inline btn-group">
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
								<button id=login type="button"
									class="d-none d-lg-inline btn btn-warning navbar-btn">로그인</button>
								<button id=join type="button"
									class="d-none d-lg-inline btn btn-dark navbar-btn">회원가입</button>
							</c:otherwise>
						</c:choose>

					</div>
				</div>
			</nav>
		</header>

		<script>
			$("#join").on("click", function() {
				location.href = "/Member/joinView.jsp";
			})
			$("#login").on("click", function() {
				location.href = "/Member/loginView.jsp"
			})
		</script>
		<!----------------------------------- Content ----------------------------------->
		<div class="row">
			<div class="col-12" id="content">

				<div class="section_s01">


					<div class="img_box">
						<div class="img_drink">
							<img src="밤야.jp" id="main_img">
						</div>
					</div>
					<div class="txt_box">

						<h2>전체상품</h2>
						<h3>술이름</h3>
						<p>간단한 술 설명</p>
						<div class="ingredient">
							<strong style="margin-right: 30px;">주원료</strong> <span>정제수,
								찹쌀, 백미, 기타 등등</span>
						</div>
						<div class="box_user_rating">
							<div class="rating">
								<p>
									<span>유저평가</span>
								</p>
								<div class="num_5">
									<span></span> <span></span> <span></span> <span></span>
								</div>
								<table class="tbl">
									<colgroup>
										<col width="30"%>
										<col width="30"%>
										<col width="30"%>
										<col width="30"%>

									</colgroup>
									<tr>
										<th scope="col">용량(ml)</th>
										<th scope="col">도수(%)</th>
										<th scope="col">유형</th>
										<th scope="col">생산지역</th>
									</tr>
									<tr>
										<td>추후 추가</td>
										<td>추후 추가</td>
										<td>추후 추가</td>
										<td>추후 추가</td>
									</tr>
								</table>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="seciton_s02">
			<div class="drink_description_box">
				<div style="margin-bottom: 50px; font-size: 25px; color: aqua;">술
					설명</div>
				<ul class="description">
					<div class="descr_1">
						<p style="font-size: 30px;">
							<strong>술이름, 어떤 술인가요?</strong>
						</p>
						<P>
							우리나라 최초의 요리책, &lt;산가요록&gt;에 실린 주방문을 토대로 박흥선 명인이 복원한 역사 깊은 우리술이에요.
							<br> <br> 잔에 담긴 모습이 거울에 비친 푸른 파도같이 맑다 하여 '녹파'라는 이름이
							붙었다고 해요. <br> <br> 이름처럼 맑은 빛깔과 담백하고 드라이한 맛이 매력적이지요. <br>
							<br> 녹파주를 즐기던 옛 선조들처럼 술 한잔에 담긴 은은한 기품을 느껴보세요.

						</P>
						<p style="font-size: 30px;">
							<strong>술이름, 어떻게 만드나요?</strong>
						</p>
						<p>
							text<br> text<br> text<br> text<br>
						</p>
					</div>
					<div class="descr_2">

						<div>
							<div style="margin-bottom: 50px; font-size: 25px; color: aqua;">양조장</div>
							<p style="font-size: 30px;">
								<strong>생산자</strong>
							</p>
							<p>
								text<br> text<br> text<br> text<br> text<br>
							</p>
						</div>

					</div>

					<div class="descr_3">
						<div style="margin-bottom: 50px; font-size: 25px; color: aqua;">판매처</div>
						<P>
							text<br> text
						</P>
					</div>
				</ul>
			</div>


		</div>

	</div>
	</div>

	<!----------------------------------- footer ----------------------------------->


		<hr>
		<footer class="site-footer">

			<div class="container">
				<div class="row">
					<div class="d-none d-lg-block col-md-8 col-sm-6 col-xs-12">
						<p class="copyright-text">
							Copyright &copy; 2022 All Rights Reserved by <a href="#"
								style="text-decoration: none;">아이코올</a>.
						</p>
					</div>

					<div class="d-lg-none col-md-8 col-sm-6 col-xs-12">
						<p class="copyright-text">Copyright &copy;</p>
						<p class="copyright-text">
							2022 All Rights Reserved by <a href="#"
								style="text-decoration: none;">아이코올</a>.
						</p>
					</div>

					<div class="col-md-4 col-sm-6 col-xs-12">
						<ul class="social-icons">
							<li><a class="facebook" href="#"><i
									class="fa fa-facebook"></i></a></li>
							<li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a class="dribbble" href="#"><i
									class="fa fa-dribbble"></i></a></li>
							<li><a class="linkedin" href="#"><i
									class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</footer>
	</div>

</body>

</html>