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
 
 /* div{border:1px solid black;}  */

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



/*---------카테고리-----------*/


 .categor_box{

  margin-top: 35px;
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
  
  /* content */


.Result_box a {
	font-size: 14px;
	text-decoration: none;
	color: #36384f;
}

.Result_banner1 {
	padding-left : 12px;
	font-size: 1.5rem;
	font-family: 'Hahmlet', serif;
	color: #278f59;
}

.Result_banner2 {
	font-size: 1rem;
	font-family: 'Hahmlet', serif;
	text-align: center;
}

.Result_grade{
	font-family: 'Hahmlet', serif;
	font-size: 14px;
	color: #f8bc3b;
}

.Result_txt {
	margin-top: 15px;
}

.Result_name {
	font-size: 17px;
	text-align: center;
	color: black;
	font-family: 'Hahmlet', serif;
}

.Result_price {
	margin-top: 5px;
	font-size: 13px;
	font-family: 'Hahmlet', serif;
}

.Result_decs {
	font-size: 14px;
	font-family: 'Hahmlet', serif;
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
						<a href="/productA10.ProductController?cpage=1"><li class="categor_list_btn">막걸리</li></a>
						<a href="/productA20.ProductController?cpage=1"><li class="categor_list_btn">전통소주</li></a>
						<a href="/productA30.ProductController?cpage=1"><li class="categor_list_btn">약주</li></a>
						<a href="#"><li class="categor_list_btn" style="background-color:#2c6246; color:white;">과실주</li></a>
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

						<!-- a태그 처리해야 상세 페이지 볼 수 있음 -->

						<c:forEach var="i" items="${list}">

							<div class="col-12 col-lg-4 Result_box">
								<a href="/Detail.ProductController?seq=${i.seq}">
									<div class="Result_img">
										<img src="../thumbnail/${i.sysName}" class="w-100" style="border-radius: 5px; border: border: 0.5px solid rgba(128, 128, 128);">
									</div>
									<div class="Result_txt" style="text-align: center;">
										<div class="row Result_grade">
											<div class="col-6 px-0" style="text-align: right;">
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
  <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
</svg>
											</div>

											<div class="col-6 px-1" style="text-align: left; line-height: 24px;">
												${i.grade}
											</div>
										</div>
										<p class="Result_name my-0">${i.product_name}</p>
										<p class="Result_price my-1">
											<fmt:formatNumber value="${i.price }" type="currency" />
										</p>
										<p class="Result_decs mb-4 mb-lg-0">${i.smry}</p>
									</div>
								</a>
							</div>

						</c:forEach>

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