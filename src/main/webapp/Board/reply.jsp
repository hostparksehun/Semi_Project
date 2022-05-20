<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- CSS -->
    <link rel="stylesheet" href="/CSS/reply.css"> <!-- 경로 수정 고려 -->

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
    <div class="container" style="border: 1px solid black;">
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
                        <form class="d-flex">
                            <input class="form-control me-1" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success me-1" type="submit" id="search_btn">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-search" viewBox="0 0 16 16">
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

        <!----------------------------------- Content 2 ----------------------------------->
        <div class="row">
            <div class="col-12" id="content2">

                <div id="container">

                    <div id="head">
                        <div class="title_num">글번호</div>
                        <div class="board_like">조회수</div>
                    </div>

                    <div id="top_line"></div>

                    <div class="board_title">글 제목</div>

                    <div id="top_line"></div>

                    <div id="head2">
                        <div class="board_writer">작성자</div>
                        <div class="board_date">작성일</div>
                    </div>

                    <div id="head3">
                        <input type="text" class="board_contents">
                    </div>

                    <div id="head4">
                        <div class="hd4">작성자 :</div>
                        <div class="hd4">가입일 : </div>
                        <input type="button" class="hd4"
                            style="background-color:white; border: none; margin-right: 5px;" value="♥관심회원 등록하기">
                        <div class="hd4">방문횟수 : </div>
                        <div class="hd4">추천수 : </div>
                        <div class="hd4">게시글 수 : </div>
                        <div class="hd4">댓글 수 : </div>
                    </div>

                    <div id="top_line"></div>

                    <div class="board_select">
                        여기가 이전 글 리스트 링크 거는 곳입니다<br>
                        여기가 이전 글 리스트 링크 거는 곳입니다<br>
                        여기가 이전 글 리스트 링크 거는 곳입니다<br>
                    </div>

                    <div id="top_line"></div>

                    <div id="head5">
                        <div class="reply_cont">총 댓글 : </div>
                        <div class="like_cont"> 추천 : </div>
                        <input type="button" class="like_btn" value="추천하기">
                    </div>
                    
                    <!--  댓글 입력 창 -->
                    
					<form action="/add.reply?parent_seq=${dto.seq}$writer=${loginID}" method="post">
					
                    <div id="reply_box">
                        <textarea placeholder="댓글 내용을 입력하세요."></textarea>
                        <input id="reply" type="submit" class="reply_btn" value="확인">
                    </div>
                    
                    </form>

                    <div id="top_line"></div>
                    
                <!-- 댓글 출력 및 편집 부분 -->
                    
				<c:forEach var="i" items="${reply}">
				
				<form action="modify.reply?pseq=${dto.seq}&seq=${i.replySeq}" method="post" id="modifyFrm">
				
                    <div class="reply_view">${loginID} | ${dto.wirteDate}</div>

                    <div class="head6">
                        <div class="reply_contents">${i.contents}</div><br>
                        
                        <input type="hidden" id="contentsInput" name="reply_contents">
                        
                     <c:choose>
                        
                        
                        <button class="head6_btn">수정</button>
                        <button class="head6_btn">삭제</button>
                    </div>

			

					</c:choose>

				</form>
				
				</c:forEach>	
					
					
					
                </div>

            </div>

        </div>

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


        <!----------------------------------- footer ----------------------------------->




</body>

</html>