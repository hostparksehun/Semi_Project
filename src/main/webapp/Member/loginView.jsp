<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <!-- CSS -->
  <link rel="stylesheet" href="/CSS/login.css"> <!-- 경로 수정 고려 -->

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


  <title>우리술夜</title>
</head>

<body>
  <div class="container m-auto">
    <header>
      <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="/index.jsp">
              <img alt="" src="/img/logo2.jpg" id="logo"> <!-- 경로 수정 고려 -->
            </a>
          </div>

          <!-- <a class="navbar-brand" href="#">
          <img src="/img/logo2.jpg" id="logo">
        </a> -->

          <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle mx-0 mx-md-2 mx-xl-5" href="#" id="navbarDropdown" role="button"
                  data-bs-toggle="dropdown" aria-expanded="false">
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
                <a class="nav-link mx-0 mx-md-2 mx-xl-5" href="/Search/search.jsp">우리 술 검색</a>
              </li>


              <li class="nav-item">
                <a class="nav-link mx-0 mx-md-2 mx-xl-5" href="#">술꾼술꾼</a>
              </li>

            </ul>
            <form class="d-flex">
              <input class="form-control me-1" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success me-1" type="submit" id="search_btn">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search"
                  viewBox="0 0 16 16">
                  <path
                    d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                </svg>
              </button>
            </form>

            <button id=login type="button" class="mx-1 btn btn-warning navbar-btn">로그인</button>
            <button id=join type="button" class="mx-1 btn btn-dark navbar-btn">회원가입</button>
          </div>
        </div>
      </nav>
    </header>
  <script>
  $("#join").on("click",function(){
		location.href="/Member/joinView.jsp";
	})
  $("#login").on("click",function(){
	  location.href="/Member/loginView.jsp"
  })
  </script>
    




    <!----------------------------------- Content ----------------------------------->
<form action="/login.member" method=post>
    <div class="container" style="width: 360px;">
        <div style="text-align: center;"><h3>로그인</h3></div>
            <div class="idline">
                <!-- <div><img src="/img/user_icon.png"></div> -->
                
                <div class="title">아이디</div>
                <div><input type="text" class="textBox" id="id" name="id" placeholder="아이디를 입력하세요"></div>
            </div>
            <!-- <div class="icon"><img src="/img/lock_icon.png"> -->
            <div class="pwline"></div>
            <div class="title">비밀번호</div>
            <div><input type="text" class="textBox" id="pw" name="pw" placeholder="비밀번호를 입력하세요"></div>
            
            <div id="search">
            <span>아이디 찾기</span>
            <span>비밀번호 찾기</span>
             </div>
            <div><button  class="btn btn-outline-secondary" id="login">로그인하기</button></div>
            <hr>
            <div class="sns">
                <div id="naver">
                    <img src="/img/loginFile/btnG_완성형.png">
                </div>
                <div id="kakao">
                    <img src="/img/loginFile/kakao_login_medium_narrow.png">
                </div>
            </div>

        <div>
        </div>
    </div>
  </form>
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

</body>

</html>