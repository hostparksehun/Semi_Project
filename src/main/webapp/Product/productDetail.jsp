<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">

<head>

<!-- CSS -->
<!-- <link rel="stylesheet" href="/CSS/productDetail.css"> -->
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

<style>
  /*div { 
    border: 1px solid black;
} */

* {
    box-sizing: border-box;
}

#logo {
    width: 150px;
    height: auto;
}

#content {
    width: 100%;
    height: 600px;
}


  .section_s01{
    
    padding-top: 40px;
    padding-bottom: 40px;
    width: 100%;
    height: auto;
	 /* overflow: auto; */
    display: inline-block; 
    float:left;
   
}

/* 이미지 CSS */

.img_box{
  
    float: left;
    width: 500px;
    height: 500px;
	padding: 30px; 
	border: 2px solid #2c6246;
	border-radius: 30px;
/* 	background-color: rgb(233, 229, 229); */
}


.main_img{
	width: 500px;
	height: 500px; 
	float:left; 
	display : inline-block;
    margin-left: 120px;
	
}

.img{
	width: 100%;
	height: 100%;
}

/* 텍스트 CSS */

.txt_box{
  
  
  width: 600px;
  float: left;
  margin-left: 40px;
  overflow: hidden;
  padding-top: 30px;
  padding-left: 40px; 
}

  .product_name{
     font-size: 30px;
     font-weight: 300px;

   }
  dt{
  float:left;
  display: inline-block;
  width: 130px;
  }


.rating{
  padding-top: 30px;
  padding-bottom: 20px;
}
.tbl{
     text-align: center;
     width: 100%;
     margin-top: 40px;
  }


.seciton_s02{
    margin-top: 30px;
    width: 100%;
    

}
.drink_description_box{
  width: 100%;
}
.description{    
     padding-left:0px;
     padding-bottom: 50px;
    }   
.descr_2{margin-top: 60px;}


@media (max-width: 1400px) {



.img_box{
  float: left;
  width: 450px;
  height: 500px;
  padding: 30px;
  }

  .main_img{
	width: 450px;
	height: 500px; 
	float:left; 
	display : inline-block;
    margin-left: 80px;
}
.img{
   width: 100%;
   height:100%;
}

  /* 텍스트 */

 .txt_box{
  
 
  width: 500px;
  float: left;
  margin-left: 40px;
  overflow: hidden;
  padding-top: 30px;
  padding-left: 40px; }

  .product_name{
     font-size: 30px;
     font-weight: 300px;

   }
  dt{
  float:left;
  display: inline-block;
  width: 130px;
  } 


}

@media (max-width: 1200px) {
.img_box{
  float: left;
  width: 400px;
  height: 500px;
  padding: 30px;
  }

  .main_img{
	width: 400px;
	height: 500px; 
	float:left; 
	display : inline-block;
    margin-left: 50px;
}
.img{
	width: 100%;
	height: 100%;
}

  /* 텍스트 */

 .txt_box{
  padding-top: 30px;
  padding-left: 30px;
  margin-left: 20px;
  width: 450px;
  float: left;
  overflow: hidden;}

  .product_name{
     font-size: 30px;
     font-weight: 300px;

   }
  dt{
  float:left;
  display: inline-block;
  width: 130px;
  } 


}



@media (max-width: 992px) {

	/* 이미지 */

.img_box{
 
  width: 600px;
  height: 500px;
  padding: 30px;
  }

  .main_img{
	width: 600px;
	height: 500px; 
	float:left; 
	display : inline-block;
    margin-left: 30px;
}
.img{
	width: 100%;
	height: 100%;
}

     /* 텍스트 */

 .txt_box{
  padding-left:30px;
  margin-left: 30px;
  width: 600px;
  float:left;
  overflow: hidden;}

  .product_name{
     font-size: 30px;
     font-weight: 300px;

   }
   
   dt{
   float:left; 
   display: inline-block; 
   width: 130px; 
   }  

}

@media (max-width: 768px) {

/* 이미지 */

.img_box{
width: 400px;
height: 400px;
padding: 30px;
}

.main_img{
	width: 400px;
	height: 400px; 
	float:left; 
	display : inline-block;
    margin-left: 40px;
}
.img{
width: 100%;
height: 100%;
}

 /* 텍스트 */

.txt_box{
margin-top: 30px;
margin-left: 40px;
width: 400px;
float: left;
overflow: hidden;}

.product_name{
 font-size: 30px;
 font-weight: 300px;

}
dt{
float:left;
display: inline-block;
width: 130px;
} 

}

@media (max-width: 530px) {

/* 이미지 */

.img_box{

width: 400px;
height: 400px;

padding: 30px;

}

.main_img{
	width: 400px;
	height: 400px; 
	float:left; 
	display : inline-block;
    margin-left: 30px;
	

}
.img{
width: 100%;
height: 100%;
}

 /* 텍스트 */

.txt_box{

margin-top: 30px;
margin-left: 40px;
width: 400px;
float: left;
overflow: hidden;}

.product_name{
 font-size: 30px;
 font-weight: 300px;

}
dt{
float:left;
display: inline-block;
width: 130px;
} 

}

@media (max-width: 474px) {

/* 이미지 */

.img_box{

width: 300px;
height: 400px;
padding: 30px;

}

.main_img{
width: 300px; 
height: 400px; 
display : inline-block;

}
.img{
width: 100%;
height: 100%;
}

 /* 텍스트 */

.txt_box{

margin-top: 30px;
width: 300px;
float: left;
overflow: hidden;}

.product_name{
 font-size: 30px;
 font-weight: 300px;

}
dt{
float:left;
display: inline-block;
width: 130px;
} 

}

</style>

	<title>우리술夜</title>

</head>

<body>
	<div class="container">
		<header>
			<nav class="navbar navbar-expand-lg navbar-light bg-white">
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="#"> <img alt=""
							src="img/logo2.jpg" id="logo"> <!-- 경로 수정 고려 -->
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
									<li><a class="dropdown-item"
										href="/productA10.ProductController">막걸리</a></li>
									<li><a class="dropdown-item"
										href="/productA20.ProductController">전통소주</a></li>
									<li><a class="dropdown-item"
										href="/productA30.ProductController">약주</a></li>
									<li><a class="dropdown-item"
										href="/productA40.ProductController">과실주</a></li>
									<li><a class="dropdown-item"
										href="/productA50.ProductController">리큐르</a></li>
									<li>
										<hr class="dropdown-divider">
									</li>
									<li><a class="dropdown-item" href="/list.ProductController">전체보기</a></li>
								</ul></li>

							<li class="nav-item"><a
								class="nav-link mx-0 mx-md-2 mx-xl-5" href="/Search/search.jsp">우리 술 검색</a></li>


							<li class="nav-item"><a
								class="nav-link mx-0 mx-md-2 mx-xl-5" href="#">술꾼술꾼</a></li>

						</ul>
						<form class="d-flex">
							<input class="form-control me-1" type="search"
								placeholder="Search" aria-label="Search">
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

		<!----------------------------------- Content ----------------------------------->


		<div class="row">

 
			<div class="col-12 col-xs-12" id="content" style="height: auto;">

				<div class="section_s01">

      
      

                <div class="main_img">
				
					<div class="img_box">
                        <img src="../thumbnail/${dto.sysName }" class="img">
						
					</div>
				
				</div>
					
			
					<div class="txt_box">

						<div class="product_name">${dto.product_name }</div>
                        
						<hr style="border: 1px solid black; margin-top: 30px; margin-bottom: 60px;">
					<dl>
					<dt class="smry">짧은 설명</dt> <dd>${dto.smry }</dd>
					<dt class="price">가격</dt> 	<dd>${dto.price }</dd>
					<dt class="product_code">상품 코드</dt> <dd>${dto.product_code }</dd>
					<dt class="kind">유형</dt> <dd>${dto.kind }</dd>
					<dt class="abv">도수(%)</dt> <dd>${dto.abv }</dd>
					<dt class="capacity">용량(ml)</dt> <dd>${dto.capacity }</dd>
					<dt class="brewery">양조장</dt> <dd>${dto.brewery }</dd>
					<dt class="adress1">판매처</dt> <dd>${dto.adress1 } ${dto.adress2 }</dd>
                    <dt>유저 평가</dt> <dd><span>*</span> <span>*</span> <span>*</span> <span>*</span> <span>*</span></dd>

					</dl>
                    </div>
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