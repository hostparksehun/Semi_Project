<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <!-- CSS -->
  <link rel="stylesheet" href="/CSS/memberUpdate.css"> <!-- 경로 수정 고려 -->
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
  <div class="container">
    <header>
      <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="#">
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
                <a class="nav-link mx-0 mx-md-2 mx-xl-5" href="#">우리 술 검색</a>
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

            <button type="button" class="mx-1 btn btn-warning navbar-btn">로그인</button>
            <button type="button" class="mx-1 btn btn-dark navbar-btn">회원가입</button>
          </div>
        </div>
      </nav>
    </header>




<!---------------------------------------------헤더------------------------------------------>
<c:forEach var="i" items="${list }">
    <div class="box" style="width: 360px;">
        <div style="text-align: center;"><h3>회원정보 수정</h3></div>
          <div class="join-box">
            <div class="title">이름<br></div>
            <div>${i.name}</div>
            <div class="check" id="nameinfo">확인용</div>
          </div>   
          <div class="join-box">
            <div class="title">아이디<br></div>
            <div><input type="text" id="id" name="id" placeholder="영문(소문자), 숫자 8~13자" class="join-input"></div>
            <div class="check" id="idinfo">확인용</div>
          </div>
        <div class="join-box">
          <div class="title">생년월일<br></div>
          <div><input type="text" id="birthday" name="birthday" placeholder="ex)990322" class="join-input"></div>
          <div class="check" id="birthdayCheckinfo">확인용</div>
        </div>
        <div class="join-box">
          <div class="title">이메일<br></div>
          <div>
            <input type="text" id="email" name="email" class="join-input">
            <button type="button" class="btn btn-secondary" id="emailCheck">인증</button>
          </div>
        </div>
        <div class="join-box">
          <div class="title">휴대폰번호<br></div>
          <div><input type="text" id="phone" name="phone" placeholder="ex)01012349876" class="join-input"></div>
          <div class="check" id="phoneCheckinfo">확인용</div>
        </div>
        <div class="join-box">
          <div class="title">우편번호<br></div>
          <div>
            <input type="text" name="zipcode" id="zipcode" class="join-input">
            <button type="button" class="btn btn-secondary" id="zipcode_find">찾기</button>
          </div>
        </div>
        <div class="join-box">
          <div class="title">주소<br></div>
          <div>
            <input type="text" name="address1" id="address1" class="join-input">
          </div>
        </div>
        <div class="join-box">
          <div class="title">상세주소<br></div>
          <div>
            <input type="text" name="address2" id="address2" class="join-input">
          </div>
        </div>
        <button type="button" class="btn btn-outline-primary" id="join">수정완료
        </button>
      </div>
      </c:forEach>
      <!-------------------------------------------Footer-------------------------------------------->
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
</body>
</html>