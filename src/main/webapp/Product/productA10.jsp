<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- CSS -->
     <link rel="stylesheet" href="/CSS/productList.css"> <!-- 경로 수정 고려 -->

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


    <title>우리술 목록</title>

<style>
* {
  box-sizing: border-box;
}

/* content 작업 내용 */

#logo {
  width: 150px;
  height: auto;
}

/* 검색바 */

* {
  box-sizing: border-box;
  padding: 0;
  margin: 0;
}



body, a, p, input, button, span {
	font-size: 14px;
	text-decoration: none;
	color: #36384f;
}

button {
	cursor: pointer;
	border: 0;
}

.main_con_form {
	text-align: left;
}

.main_con_form span {
	color: #000000;
}

.form_inner {
	width: 100%;
	height: 100%;
}

.main_con_form h1 {
	font-size: 28px;
}

.form_list_input input {
	width: 90%;
	padding: 0 1em;
	border: 0;
	height: 60px;
	border-radius: 30px;
	box-shadow: 0 0 0 3px #000000;
}

.form_list_input input:focus {
	outline: none;
	box-shadow: 0 0 0 3px #e96c7c;
}

.form_list_input input::placeholder {
	font-weight: 300;
	color: #aaa;
}

.form_list_input label {
	float: left;
	display: none;

}

/*---------검색-----------*/
.banner_top {
font-size: 2rem;
	}
.banner_bot {
	font-size: 1.5rem;
}

#search_icon {
	background-color: white;
}

#detail_box {
	width: 100%;
	height: 300px;
	border: 4px solid black;
	border-radius: 10px;
}

.title {
	font-size: larger;
	font-weight: bold;
}

/*---------best상품-----------*/
.banner{
  background-color: rgb(233, 229, 229);
  border-radius: 20px;
}
.best{
  margin-top: 20px;
}
.best_list {
	padding-top: 30px;
	text-align: center;
	list-style: none;
	overflow: hidden;
}

.best_item {
	float: left;
	width: 30%;
	text-align: center;
	margin-left: 21px;
}

.best_img {
	width: 100%;
}

.txt_box {
  background-color: white;
	margin-top: 15px;
}

.bname_ellipsis {
	font-size: 30px;
}

.best {
	border: 4px solid #2c6246;
	border-radius: 10px;
}

/*---------전체보기-----------*/
.area_btn {
	overflow: hidden;
	margin-top: 60px;
	width: 100%;
	text-align: center;
	margin-bottom: 50px;
	margin-top: 30px;
}

.h_btn {
	padding-top: 18px;
	padding-right: 50px;
	padding-bottom: 18px;
	padding-left: 50px;
	font-size: 18px;
	border: 1px solid #000;
	border-radius: 30px;
	box-sizing: border-box;
	display: inline-block;
	text-decoration: none;
}

.list_box{
  border: 2px solid #2c6246;
  border-radius: 20px;
}


/* ------카테고리------- */

 .categor_box{

  position: relative;
  margin-top: 35px;
  padding: 60px;
  text-align: center;
  z-index: 1;
}  
 .categor_box::after {
 
  margin-top: 35px;
  padding: 60px;
  width:100%;
  content: "";
  background-image:url("img.jpg");
  position: absolute;
  top: 0;
  left: 0;
  z-index: -1;
  opacity: 0.7;
}

.categor_list{
  width: 90%;
  display: inline-block;
}
.categor_list_btn{
  float: left;
  list-style: none;
  width: 15.1%;
  height: 50px;
  line-height: 50px;
  margin-left: 0.5%;
  margin-right: 0.5%;
  border: 1px solid #000;
  font-size: 20px;
  border-radius: 30px;
  
  font-weight:bold;
  color:black
}


@media (max-width: 992px) {
	
/*---------best상품-----------*/
    .best_list {
	padding-top: 30px;
	text-align: center;
	list-style: none;
	overflow: hidden;

}
.best_item {
	float: left;
	width: 41%;
	text-align: center;
	margin-left: 21px;
}

.best_img {
	width: 100%;
}

.txt_box {
	margin-top: 15px;
}

.bname_ellipsis {
	font-size: 30px;
}

.best {
	border: 4px solid black;
	border-radius: 10px;
}



/* ------카테고리------- */

.categor_box{
  padding: 60px;
  text-align: center;
  
} 
.categor_list{
  width: 90%;
  display: inline-block;
}
.categor_list_btn{
  float: left;
  list-style: none;
  width: 30%;
  height: 50px;
  line-height: 50px;
  margin-left: 0.5%;
  margin-right: 0.5%;
  border: 1px solid #000;
  font-size: 20px;
  border-radius: 30px;
  color:black;
  display: inline-block;
}

}

@media (max-width: 767px) {

/*---------best상품-----------*/
    .best_list {
	padding-top: 30px;
	text-align: center;
	list-style: none;
	overflow: hidden;
}

.best_item {
	float: left;
	width: 80%;
	text-align: center;
	margin-left: 21px;
}

.best_img {
	width: 100%;
}

.txt_box {
	margin-top: 15px;
}

.bname_ellipsis {
	font-size: 20px;
    margin-bottom: 0px;
}
.exple_box{
    margin-bottom: 0px;
}

.best {
	border: 4px solid black;
	border-radius: 10px;
}

  
/* ------카테고리------- */ 
  
  .categor_box{
    padding: 60px;
    text-align: center;
    
  } 
  .categor_list{
    width: 90%;
    display: inline-block;
  }
  .categor_list_btn{
    float: left;
    list-style: none;
    width: 45%;
    height: 50px;
    line-height: 50px;
    margin-left: 0.5%;
    margin-right: 0.5%;
    border: 1px solid #000;
    font-size: 20px;
    border-radius: 30px;
    color:black;
    display: inline-block;
  }
  
  }

@media (max-width: 530px) {
 
 /* ------카테고리------- */ 
  .categor_box{
    padding: 60px;
    text-align: center;
    
  } 
  .categor_list{
    width: 90%;
    display: inline-block;
  }
  .categor_list_btn{
    float: left;
    list-style: none;
    width: 45%;
    height: 50px;
    line-height: 50px;
    margin-left: 0.5%;
    margin-right: 0.5%;
    border: 1px solid #000;
    font-size: 20px;
    border-radius: 30px;
    color:black;
  }
  
  }

  @media (max-width: 463px) {
 
  /* ------카테고리------- */
  .categor_box{
  
    padding: 60px;
    text-align: center;
    
  } 
  .categor_list{
    width: 90%;
    display: inline-block;
  }
  .categor_list_btn{
    float: left;
    list-style: none;
    width: 100%;
    height: 50px;
    line-height: 50px;
    margin-left: 0.5%;
    margin-right: 0.5%;
    border: 1px solid #000;
    font-size: 20px;
    border-radius: 30px;
    color:black;
  }
  
  }
  .col-lg-4{
    float: left;
  }
  
  
  

/* header부분 */
header {
	font-family: 'Hahmlet', serif;
	font-size: larger;
	font-weight: 700;
}


ul {
	margin-left: auto;
	margin-right: auto;
}

#login {
	margin-right: 1px;
}

#search_input {
	width: 100%;
}

/* footer 부분 */
.site-footer {
	background-color: #ffffff;
	padding: 10px 0 20px;
	font-size: 15px;
	line-height: 24px;
	color: #737373;
	font-family: 'Hahmlet', serif;
}

.site-footer hr {
	border-top-color: #bbb;
	opacity: 0.5
}

.site-footer hr.small {
	margin: 20px 0
}

.site-footer h6 {
	color: #fff;
	font-size: 16px;
	text-transform: uppercase;
	margin-top: 5px;
	letter-spacing: 2px
}

.site-footer a {
	color: #737373;
}

.site-footer a:hover {
	color: #3366cc;
	text-decoration: none;
}

.footer-links {
	padding-left: 0;
	list-style: none
}

.footer-links li {
	display: block
}

.footer-links a {
	color: #737373
}

.footer-links a:active, .footer-links a:focus, .footer-links a:hover {
	color: #3366cc;
	text-decoration: none;
}

.footer-links.inline li {
	display: inline-block
}

.site-footer .social-icons {
	text-align: right
}

.site-footer .social-icons a {
	width: 40px;
	height: 40px;
	line-height: 40px;
	margin-left: 6px;
	margin-right: 0;
	border-radius: 100%;
	background-color: #33353d
}

.copyright-text {
	margin: 0
}

@media ( max-width :991px) {
	.site-footer [class^=col-] {
		margin-bottom: 30px
	}
}

@media ( max-width :767px) {
	.site-footer {
		padding-bottom: 0
	}
	.site-footer .copyright-text, .site-footer .social-icons {
		text-align: center
	}
}

.social-icons {
	padding-left: 0;
	margin-bottom: 0;
	list-style: none
}

.social-icons li {
	display: inline-block;
	margin-bottom: 4px
}

.social-icons li.title {
	margin-right: 15px;
	text-transform: uppercase;
	color: #96a2b2;
	font-weight: 700;
	font-size: 13px
}

.social-icons a {
	background-color: #eceeef;
	color: #818a91;
	font-size: 16px;
	display: inline-block;
	line-height: 44px;
	width: 44px;
	height: 44px;
	text-align: center;
	margin-right: 8px;
	border-radius: 100%;
	-webkit-transition: all .2s linear;
	-o-transition: all .2s linear;
	transition: all .2s linear
}

.social-icons a:active, .social-icons a:focus, .social-icons a:hover {
	color: #fff;
	background-color: #29aafe
}

.social-icons.size-sm a {
	line-height: 34px;
	height: 34px;
	width: 34px;
	font-size: 14px
}

.social-icons a.facebook:hover {
	background-color: #3b5998
}

.social-icons a.twitter:hover {
	background-color: #00aced
}

.social-icons a.linkedin:hover {
	background-color: #007bb6
}

.social-icons a.dribbble:hover {
	background-color: #ea4c89
}

@media ( max-width :767px) {
	.social-icons li.title {
		display: block;
		margin-right: 0;
		font-weight: 600
	}
}



</style>



</head>



<body>
    <div class="container">
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-white">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="/index.jsp">
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
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle mx-0 mx-md-2 mx-xl-5" href="#"
								id="navbarDropdown" role="button" data-bs-toggle="dropdown"
								aria-expanded="false"> 우리술 정보 </a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item"
										href="/productA10.ProductController?cpage=1">막걸리</a></li>
									<li><a class="dropdown-item"
										href="/productA20.ProductController?cpage=1">전통소주</a></li>
									<li><a class="dropdown-item"
										href="/productA30.ProductController?cpage=1">약주</a></li>
									<li><a class="dropdown-item"
										href="/productA40.ProductController?cpage=1">과실주</a></li>
									<li><a class="dropdown-item"
										href="/productA50.ProductController?cpage=1">리큐르</a></li>
									<li>
										<hr class="dropdown-divider">
									</li>
									<li><a class="dropdown-item" href="/list.ProductController?cpage=1">전체보기</a></li>
								</ul></li>


                            <li class="nav-item">
                                <a class="nav-link mx-0 mx-md-2 mx-xl-5" href="/Search/search.jsp">우리 술 검색</a>

                            </li>


                            <li class="nav-item">
                                <a class="nav-link mx-0 mx-md-2 mx-xl-5" href="#">술꾼술꾼</a>
                            </li>

                        </ul>

            <c:choose>
	        	<c:when test="${loginID !=null}">
					        	<div class="btn-group">
  <button type="button" class="btn btn-warning dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    ${loginID } 
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="/mypage.member">마이페이지</a></li>
    <li><a class="dropdown-item" href="/logout.member">로그아웃</a></li>
  </ul>
</div>
		            
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


				<!----------------------------------- Search-Result  ----------------------------------->


  
        <div class="container px-5 mt-4" id="search_box">

            <div class="row">
                <div class="col-1 "></div>

                
                   

               
               
                   


<!----------------------------------- Categori---------------------------------->

				<div class="categor_box">

					<ul calss="categor_list">
						<a href="/list.ProductController?cpage=1"><li class="categor_list_btn">전체상품</li></a>
						<a href="#"><li class="categor_list_btn" style="background-color:#2c6246; color:white;">막걸리</li></a>
						<a href="/productA20.ProductController?cpage=1"><li class="categor_list_btn">전통소주</li></a>
						<a href="/productA30.ProductController?cpage=1"><li class="categor_list_btn">약주</li></a>
						<a href="/productA40.ProductController?cpage=1"><li class="categor_list_btn">과실주</li></a>
						<a href="/productA50.ProductController?cpage=1"><li class="categor_list_btn">리큐르</li></a>
					</ul>
					
				</div>


	<!----------------------------------- Search-Result  ----------------------------------->




        <div class="container px-5 mt-4" id="Result_box">
        <hr>


            <div class="row">
                <div class="col-1"></div>
                <div class="col-10">
                    <div class="col-12">

                        <p class="m-auto Result_banner"></p>

                    </div>

      

       

     
                    <!----------------------------------- Result  ----------------------------------->
                
                    <div class="row m-auto">
                
                     <c:forEach var="i" items="${list }"> 
                     
                     <c:if test="${i.product_code eq 'A10' }">              
                        <div class="col-lg-4 col-sm-12 list_box">
                            <a href="Detail.ProductController?seq=${i.seq }">
                                <div class="Result_img">
                          
                                    <img src="../thumbnail/${i.sysName}" style="width: 100%;">
                                </div>
                                <div class="Result_txt">
                                    <div class="review"></div>
                                    
                                    <p class="Result_name">${i.product_name }</p>
                               
                                    <p class="Result_decs">${i.smry }</p>
                                  
                                </div>
                            </a>
                        </div>
                         </c:if>  
                     </c:forEach>
            
								
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
						</p>
					</div>

					<div class="col-md-4 col-sm-6 col-xs-12 my-3 my-lg-0">
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

				<script>

        $("#search").on("submit", function () {

            let search_text = $("#search_text").val();
            console.log(search_text);


            let regexSearch = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]{1,20}$/g;

            if (!(regexSearch.test(search_text))) {
                alert("한글만 입력해주세요");
                $("#search_text").val('')
                $("#search_text").focus();

                return false
            }
        });

    </script>
</body>

</html>