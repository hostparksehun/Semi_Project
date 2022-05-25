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
       width: 15.1%;
       height: 50px;
       line-height: 50px;
       margin-left: 0.5%;
       margin-right: 0.5%;
       border: 1px solid #000;
       font-size: 20px;
       border-radius: 30px;
       color:black;
     }
     
     
     </style>



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


                            <li class="nav-item">
                                <a class="nav-link mx-0 mx-md-2 mx-xl-5" href="/Search/search.jsp">우리 술 검색</a>

                            </li>


                            <li class="nav-item">
                                <a class="nav-link mx-0 mx-md-2 mx-xl-5" href="#">술꾼술꾼</a>
                            </li>

                        </ul>


                        <button type="button" class="mx-1 btn btn-warning navbar-btn">로그인</button>
                        <button type="button" class="mx-1 btn btn-dark navbar-btn">회원가입</button>
                    </div>
                </div>
            </nav>
        </header>

      <!----------------------------------- Categori---------------------------------->

				<div class="categor_box">

					<ul calss="categor_list">
						<a href="/list.ProductController"><li class="categor_list_btn">전체상품</li></a>
						<a href="/productA10.ProductController"><li class="categor_list_btn">막걸리</li></a>
						<a href="/productA20.ProductController"><li class="categor_list_btn">전통소주</li></a>
						<a href="/productA30.ProductController"><li class="categor_list_btn">약주</li></a>
						<a href="#"><li class="categor_list_btn" style="background-color:dodgerblue; color:white;">과실주</li></a>
						<a href="/productA50.ProductController"><li class="categor_list_btn">리큐르</li></a>
					</ul>
					
				</div>
                    




        <!----------------------------------- Search-Result  ----------------------------------->




        <div class="container px-5 mt-4" id="Result_box">
        <hr>


            <div class="row">
                <div class="col-1 "></div>
                <div class="col-10">
                    <div class="col-12">

                        <p class="m-auto Result_banner"></p>

                    </div>

                    <!----------------------------------- Result  ----------------------------------->
                
                    <div class="row m-auto">
                 
              
              

             
                   <c:forEach var="i" items="${list }">
                     
                     <c:if test="${i.product_code eq 'A40' }">            
                        <div class="col-4">
                           <a href="Detail.ProductController?seq=${i.seq }">
                                <div class="Result_img">
                                   <img src="../thumbnail/${i.sysName}" style="width: 100%;">
                                </div>
                                <div class="Result_txt">
                                    <div class="review"></div>
                                    
                                    <p class="Result_name">${i.product_name }</p>
                               
                                    <p class="Result_decs">${i.smry}</p>
                                  
                                </div>
                            </a>
                        </div>
                        </c:if>
                     </c:forEach>
                  
                 
             <div class="col-12 w-100 mb-2 mt-3" id="pagination">
                            <nav aria-label="...">
                                <ul class="pagination pagination-sm justify-content-center m-auto">
                                    <li class="page-item active" aria-current="page">
                                        <span class="page-link">1</span>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                </ul>
                            </nav>
                        </div>


                    </div>



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