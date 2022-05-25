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

<!-- 카카오 API -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<!-- 네이버 API 관련 -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>


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

  <script>
  $("#join12").on("click",function(){
		location.href="/Member/joinView.jsp";
	})
  $("#login12").on("click",function(){
	  location.href="/Member/loginView.jsp"
  })
  </script>
    



    <!----------------------------------- Content ----------------------------------->
    <div class="container" style="width: 360px;">
<form action="/login.member" method=post>
        <div style="text-align: center;"><h3>로그인</h3></div>
            <div class="idline">
                <div class="title">아이디</div>
                <div><input type="text" class="textBox" id="id" name="id" placeholder="아이디를 입력하세요"></div>
            </div>
            <div class="pwline"></div>
				<div class="title">비밀번호</div>
				<div><input type="password" class="textBox" id="pw" name="pw" placeholder="비밀번호를 입력하세요"></div>
            <div id="search">
            <a href="/Member/searchId.jsp">아이디 찾기</a>
            <a href="/Member/searchPw.jsp">비밀번호 찾기</a>
             </div>
             <div>
            <input type="submit" class="btn btn-outline-secondary" id="loginBtn" value="로그인하기">
            <input type="button" class="btn btn-outline-secondary" id="joinBtn" value="회원가입">
            </div>
    	</form>
            <hr>
            <div class="sns">
<<<<<<< HEAD
                <div id="naver">
                    <img src="/img/loginFile/btnG_완성형.png">
                </div>
                <div id="kakao">
                <a id="btn-kakao-login" href="kakao/login">
                    <img src="/img/loginFile/kakao_login_medium_narrow.png"></a>
=======
<!--              <div id="naver_id_login"> -->
<!--                     <img src="/img/loginFile/btnG_완성형.png"> -->
<!--                 </div> -->
                
<!--                 <script type="text/javascript"> -->
<!-- 				  	var naver_id_login = new naver_id_login("hJtsJHj17cTSu5fTaM9q", "http://localhost/index.jsp"); -->
<!-- 				  	var state = naver_id_login.getUniqState(); -->
<!-- 				  	naver_id_login.setButton("white", 2,40); -->
<!-- 				  	naver_id_login.setDomain("http://localhost/Member/loginView.jsp"); -->
<!-- 				  	naver_id_login.setState(state); -->
<!-- 				  	naver_id_login.setPopup(); -->
<!-- 				  	naver_id_login.init_naver_id_login(); -->
<!-- 				</script> -->
				
<!-- 		<div id="naverIdLogin"></div> -->
	
<!-- 				  <script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script> -->
<!--   <div id="message"> -->
<!--   로그인 버튼을 눌러 로그인 해주세요. -->
<!-- </div> -->

				
				        <div class="button-login" align ="center" >
                <a id="kakao-login-btn" >
    <img src="//k.kakaocdn.net/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="83%" height ="50px" />
    </a>
<!--                 <div id="kakao-login-btn"> -->
<!--                 <a href="javascript:kakaoLogin();"> -->
<!--                     <img src="/img/loginFile/kakao_login_medium_narrow.png"></a> -->
>>>>>>> c79e94b67b89063d0d5b818bbc22fbbfcad678e4
                    <a href="javascript:secession();">연결 끊기?</a>
                </div>
                <div id="test">
                </div>
            </div>
    	</div>
    
 		<script>
 			$("#loginBtn").on("click",function(){
 				location.href="/Member/loginView.jsp";
 				
 			})
 			
 			$("#joinBtn").on("click",function(){
 				location.href="/Member/joinView.jsp";
 			})
 			
 			
 			//카카오 로그인
			//a90276ed357ed7ce1c45d0863f399e1d 키값
<<<<<<< HEAD
			window.Kakao.init("a90276ed357ed7ce1c45d0863f399e1d");
			function kakaoLogin(){
				window.Kakao.Auth.login({
					scope:'account_email, birthday',
	                success: function(response) {
	                    console.log(response) // 로그인 성공하면 받는 데이터
	                    window.Kakao.API.request({ // 사용자 정보 가져오기 
	                        url: '/v2/user/me',
	                       success: (res) => {
	                            const kakao_account = res.kakao_account;
	                            console.log(kakao_account)
	                       }
	                   });
	                    // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
	               },
	                fail: function(error) {
	                    console.log(error);
	                }
	            });
	        }
=======
// 			window.Kakao.init("a90276ed357ed7ce1c45d0863f399e1d");
// 			function kakaoLogin(){
// 				window.Kakao.Auth.login({
// 					scope:'account_email, birthday',
// 	                success: function(response) {
// 	                    console.log(response) // 로그인 성공하면 받는 데이터
// 	                    window.Kakao.API.request({ // 사용자 정보 가져오기 
// 	                        url: '/v2/user/me',
// 	                        success: (res) => {
// 	                            const kakao_account = res.kakao_account;
// 	                            console.log(kakao_account)
// 	                        }
// 	                    });
// 	                    // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
// 	                },
// 	                fail: function(error) {
// 	                    console.log(error);
// 	                }
// 	            });
// 	        }
			// 카카오 초기화
			Kakao.init('a90276ed357ed7ce1c45d0863f399e1d');
			
			$("#kakao-login-btn").on("click", function(){
			    //1. 로그인 시도
			    Kakao.Auth.login({
			        success: function(authObj) {
			         
			          //2. 로그인 성공시, API 호출
			          Kakao.API.request({
			            url: '/v2/user/me',
// 			            data: {
// 			                property_keys: ["kakao_account.email","kakao_account.gender"]
// 			            },
			            success: function(res) {
						console.log(res);
						//scope : 'account_email';
						let id = res.id;
						let name = res.properties.nickname; 
						let email = res.kakao_account.email;
						let birthday = res.kakao_account.birthday;
						console.log(id);
						console.log(name);
						console.log(email);
						console.log(birthday);
						//alert('로그인성공');
						//location.href="http://localhost/index.jsp";
						
						$.ajax({
							url:"/kakaologin.member",
							data: {id:id, email:email, birthday:birthday},
							type:"POST",
						}).done(function(resp){
							$("#test").text(resp);
							console.log(resp);
							//location.reload();
						})
			        }
			          })
			          console.log(authObj);
			          var token = authObj.access_token;
			        },
			        fail: function(err) {
			          alert(JSON.stringify(err));
			        }
			      });
			        
			}) //


>>>>>>> c79e94b67b89063d0d5b818bbc22fbbfcad678e4
			//카카오 연결 끊기
			function secession() {
				Kakao.API.request({
			    	url: '/v1/user/unlink',
			    	success: function(response) {
			    		console.log(response);
			    		//callback(); //연결끊기 성공시 서버에서 처리할 함수
			    		console.log("카카오 연결해제 O");
			    		window.location.href='/index.jsp';
			    		
			    	},
			    	fail: function(error) {
			  		console.log("카카오 연결해제 X");
			    		console.log(error);
			    	},
				});
			};
 		</script>
 		
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