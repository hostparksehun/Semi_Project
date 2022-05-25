<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- CSS -->
    <link rel="stylesheet" href="/CSS/search.css"> <!-- 경로 수정 고려 -->

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Jquery -->
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>

    <!-- Bootstrap ver 5.1  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

    <script src="https://kit.fontawesome.com/7f0130da7d.js" crossorigin="anonymous"></script>

    <title>우리술 검색</title>

</head>

<body>
    <div class="container">
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-white">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">
                            <img alt="" src="/img/logo2.jpg" id="logo"> <!-- 경로 수정 고려 -->
                        </a>
                    </div>

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle mx-0 mx-md-2 mx-xl-5" href="#" id="navbarDropdown"
                                    role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    우리술 정보
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="#">막걸리</a></li>
                                    <li><a class="dropdown-item" href="#">증류주</a></li>
                                    <li><a class="dropdown-item" href="#">담금주</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="#">전체보기</a></li>
                                </ul>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link mx-0 mx-md-2 mx-xl-5" href="#">우리 술 검색</a>
                            </li>


                            <li class="nav-item">
                                <a class="nav-link mx-0 mx-md-2 mx-xl-5" href="#">술꾼술꾼</a>
                            </li>

                        </ul>
                        <!-- <form class="d-flex">
                            <input class="form-control me-1" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success me-1" type="submit" id="search_btn">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-search" viewBox="0 0 16 16">
                                    <path
                                        d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                                </svg>
                            </button>
                        </form> -->

            <c:choose>
	        	<c:when test="${loginID !=null}">
					<div>${loginID }</div>
		               <button type="button" id="mypage">마이페이지</button>
		               <button type="button" id="logout">로그아웃</button>
	
			        <script>
			            $("#mypage").on("click",function(){
			               location.href="/mypage.member";
			            })
			            $("#logout").on("click",function(){
			               location.href="/logout.member";
			            })
		            </script>
		            
				</c:when>
				<c:otherwise>
					<button id="loginBtn" type="button" class="mx-1 btn btn-warning navbar-btn">로그인</button>
					<button id="joinBtn" type="button" class="mx-1 btn btn-dark navbar-btn">회원가입</button>
					
					<script>
					  $("#joinBtn").on("click",function(){
					      location.href="/Member/joinView.jsp";
					   })
					  $("#loginBtn").on("click",function(){
					     location.href="/Member/loginView.jsp"
					  })
					</script>
				</c:otherwise>
			</c:choose>
			
                    </div>
                </div>
            </nav>
        </header>



        <!----------------------------------- Search-Bar ----------------------------------->

        <div class="container px-5 mt-4" id="search_box">

            <div class="row">
                <div class="col-1 "></div>

                <div class="col-10">
                    <div class="col-12">
                        <p class="m-auto banner_top">요즘 핫한 우리 술을 검색하세요!</p>
                    </div>
                    <form action="/search.search" id="search">
                        <div class="main_con_form col-12 mt-3">
                            <div class="form_inner form_list_input">
                                <input type="text" id="search_text" name="search_text" placeholder="입력하세요">
                                <button type="submit" style="background-color: white; margin-left: 2%;">
                                    <svg id="search_icon" xmlns="http://www.w3.org/2000/svg" width="50" height="50"
                                        fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                        <path
                                            d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                                    </svg>
                                </button>
                            </div>
                        </div>
                        <!----------------------------------- Detail-Search  ----------------------------------->
                        <div class="col-12 mt-3 mb-1">
                            <p class="m-auto banner_bot">필요한 조건을 선택하세요</p>
                        </div>

                        <div class="col-12" id="detail_box">
                            <div class="container pt-3">
                                <div class="row">
                                    <!-- 주종 -->
                                    <div class="col-12 mb-1">
                                        <p class="m-auto title">술 종류</p>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="막걸리"
                                            id="flexCheckDefault" name="alchol">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            막걸리
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="전통소주"
                                            id="flexCheckDefault" name="alchol">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            전통 소주
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="약주"
                                            id="flexCheckDefault" name="alchol">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            약주
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="과실주"
                                            id="flexCheckDefault" name="alchol">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            과실주
                                        </label>
                                    </div>

                                    <div class="col-2 form-check mb-1" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="리큐르"
                                            id="flexCheckDefault" name="alchol">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            리큐르
                                        </label>
                                    </div>

                                    <!-- 지역 -->
                                    <div class="col-12 mb-1">
                                        <p class="m-auto title">지역</p>
                                    </div>

                                    <div class="col-2 form-check mb-1" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="서울"
                                            id="flexCheckDefault" name="area">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            서울
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="경기도"
                                            id="flexCheckDefault" name="area">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            경기도
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="경상도"
                                            id="flexCheckDefault" name="area">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            경상도
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="강원도"
                                            id="flexCheckDefault" name="area">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            강원도
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="전라도"
                                            id="flexCheckDefault" name="area">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            전라도
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="충청도"
                                            id="flexCheckDefault" name="area">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            충청도
                                        </label>
                                    </div>

                                    <!-- 평점 -->
                                    <div class="col-12 mb-1">
                                        <p class="m-auto title">평점</p>
                                    </div>

                                    <div class="col-2 form-check mb-1" style="padding-left: 5%;">
                                        <input class="form-check-input" type="radio" value="1" id="flexCheckDefault" name="grade">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            1
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="radio" value="2" id="flexCheckDefault" name="grade">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            2
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="radio" value="3" id="flexCheckDefault" name="grade">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            3
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="radio" value="4" id="flexCheckDefault" name="grade">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            4
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="radio" value="5" id="flexCheckDefault" name="grade">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            5
                                        </label>
                                    </div>

                                    <!-- 도수 -->
                                    <div class="col-12 mb-1">
                                        <p class="m-auto title">도수</p>
                                    </div>

                                    <div class="input-group" style="padding-left: 1%;">
                                        <input id="avb" type="text" class="form-control" placeholder="입력값 이상"
                                            aria-label="Recipient's username" aria-describedby="basic-addon2"
                                            name="avb">
                                        <span class="input-group-text" id="basic-addon2">% ABV</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>



        <!----------------------------------- Detail-Search  ----------------------------------->


        <!----------------------------------- footer ----------------------------------->


        <footer class="py-3 my-4">
            <ul class="nav justify-content-center border-bottom pb-3 mb-3">
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Features</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Pricing</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
            </ul>
            <p class="text-center text-muted">&copy; 2022 Company, Inc</p>
        </footer>
    </div>




    <script>

        $("#search").on("submit", function () {

            let search_text = $("#search_text").val();
            console.log(search_text);
            
            let avb = $("#avb").val();

            let regexSearch = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]*{0,20}$/gs;
            
            let regexAvb = /^[0-9]{0,2}.?[0-9]{0,5}$/g;

            if (!(regexSearch.test(search_text))) {
                alert("한글만 입력해주세요");
                $("#search_text").val('')
                $("#search_text").focus();

                return false
            }
            
            
            if (!(regexAvb.test(avb))) {
                alert("10의 자리, 소수점 5번째까지 숫자만");
                $("#avb").val('')
                $("#avb").focus();

                return false
            }
            
        });

    </script>
</body>

</html>