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
										href="/productAll_01.ProductController">막걸리</a></li>
									<li><a class="dropdown-item"
										href="/productAll_02.ProductController">증류주</a></li>
									<li><a class="dropdown-item"
										href="/productAll_03.ProductController">담금주</a></li>
									<li>
										<hr class="dropdown-divider">
									</li>
									<li><a class="dropdown-item" href="list.ProductController">전체보기</a></li>
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

        <!----------------------------------- MD의 추천! ----------------------------------->


        <div class="container px-5 mt-4" id="search_box">

            <div class="row">
                <div class="col-1 "></div>

                
                    <div class="col-12">
                        <p class="m-auto banner_top">MD의 추천 술!</p>
                    </div>

               
               
                    <div class="best">
                        
                        <ul class="best_list">
                          <li class="best_item"><a href="#">
                             <div>
                              <img src="https://picsum.photos/id/1020/150/150" class="best_img">
                             </div>
                         <div class="txt_box">
                             <div class="review"></div>
                             <p class="bname_ellipsis" style="color: black;">녹파주</p>
                             <p class="exple_box" style="color: black;">선비의 기품이 느껴지는 깔끔한 맛 </p>
                         </div>
                         </a></li>
                          <li class="best_item"><a href="#">
                             <div >
                             <img src="https://picsum.photos/id/1020/150/150" class="best_img">
                            </div>
                         <div class="txt_box">
                             <div class="review"></div>
                             <p class="bname_ellipsis" style="color: black;">녹파주</p>
                             <p class="exple_box" style="color: black;">선비의 기품이 느껴지는 깔끔한 맛</p>
                         </div>
                          </a></li>
                          <li class="best_item"><a href="#"><div>
                             <img src="https://picsum.photos/id/1020/150/150" class="best_img">
                         </div>
                         <div class="txt_box">
                             <div class="review"></div>
                             <p class="bname_ellipsis" style="color: black;">녹파주</p>
                             <p class="exple_box" style="color: black;">선비의 기품이 느껴지는 깔끔한 맛 </p>
                         </div>
                         </a></li>
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
                 
              
              <c:if test="${fn:length(list) < 4}">

             
                     <c:forEach var="i" items="${list }">            
                        <div class="col-4">
                            <a href="productDetail.jsp">
                                <div class="Result_img">
                                    <img src="https://picsum.photos/id/1020/150/150" class="w-100">
                                </div>
                                <div class="Result_txt">
                                    <div class="review"></div>
                                    
                                    <p class="Result_name">${i.product_name }</p>
                               
                                    <p class="Result_decs">간단한 설명이 들어갑니다</p>
                                  
                                </div>
                            </a>
                        </div>
                     </c:forEach>
                  
                 </c:if>
<!--                         <div class="col-4"> -->
<!--                             <a href="#"> -->
<!--                                 <div class="Result_img"> -->
<!--                                     <img src="https://picsum.photos/id/1020/150/150" class="w-100"> -->
<!--                                 </div> -->
<!--                                 <div class="Result_txt"> -->
<!--                                     <div class="review"></div> -->
                                  
<%--                                     <p class="Result_name">${i.product_name}</p> --%>
                                   
<!--                                     <p class="Result_decs">간단한 설명이 들어갑니다</p> -->
<!--                                 </div> -->
<!--                             </a> -->
                            
<!--                         </div> -->


<!--                         <div class="col-4"> -->
<!--                             <a href="#"> -->
<!--                                 <div class="Result_img"> -->
<!--                                     <img src="https://picsum.photos/id/1020/150/150" class="w-100"> -->
<!--                                 </div> -->
<!--                                 <div class="Result_txt"> -->
<!--                                     <div class="review"></div> -->
<!--                                     <p class="Result_name">술이름</p> -->
<!--                                     <p class="Result_decs">간단한 설명이 들어갑니다</p> -->
<!--                                 </div> -->
<!--                             </a> -->
<!--                         </div> -->

<!--                         <div class="col-12 w-100 mb-2"></div> -->

<!--                         <div class="col-12 w-100"> -->
<!--                             <div class="area_btn"> -->
<!--                                 <a href="/productAll_01.ProductController" class="h_btn">전체보기</a> -->
<!--                                </div> -->
<!--                             </div> -->
                            
                    
                    
<!--                         <div class="col-4"> -->
<!--                             <a href="#"> -->
<!--                                 <div class="Result_img"> -->
<!--                                     <img src="https://picsum.photos/id/1020/150/150" class="w-100"> -->
<!--                                 </div>        -->
<!--                                 <div class="Result_txt"> -->
<!--                                     <div class="review"></div> -->
<!--                                    <p class="Result_name">술이름</p> -->
<!--                                    <p class="Result_decs">간단한 설명이 들어갑니다</p> -->
<!--                                 </div> -->
<!--                             </a> -->
<!--                         </div> -->

<!--                         <div class="col-4"> -->
<!--                             <a href="#"> -->
<!--                                 <div class="Result_img"> -->
<!--                                     <img src="https://picsum.photos/id/1020/150/150" class="w-100"> -->
<!--                                 </div> -->
<!--                                 <div class="Result_txt"> -->
<!--                                     <div class="review"></div> -->
<!--                                     <p class="Result_name">술이름</p> -->
<!--                                     <p class="Result_decs">간단한 설명이 들어갑니다</p> -->
<!--                                 </div> -->
<!--                             </a> -->
                     
<!--                         </div> -->


<!--                         <div class="col-4"> -->
<!--                             <a href="#"> -->
<!--                                 <div class="Result_img"> -->
<!--                                     <img src="https://picsum.photos/id/1020/150/150" class="w-100"> -->
<!--                                 </div> -->
<!--                                 <div class="Result_txt"> -->
<!--                                     <div class="review"></div> -->
<!--                                     <p class="Result_name">술이름</p> -->
<!--                                     <p class="Result_decs">간단한 설명이 들어갑니다</p> -->
<!--                                 </div> -->
<!--                             </a> -->
<!--                         </div> -->
                     
                    
<!--                         <div class="col-12 w-100"></div> -->

<!--                         <div class="col-12 w-100"> -->
<!--                         <div class="area_btn"> -->
<!--                             <a href=" /productAll_02.ProductController" class="h_btn">전체보기</a> -->
<!--                            </div> -->
<!--                         </div> -->

<!--                         <div class="col-4"> -->
<!--                             <a href="#"> -->
<!--                                 <div class="Result_img"> -->
<!--                                     <img src="https://picsum.photos/id/1020/150/150" class="w-100"> -->
<!--                                 </div> -->
<!--                                 <div class="Result_txt"> -->
<!--                                     <div class="review"></div> -->
<!--                                      <p class="Result_name">술이름</p> -->
<!--                                     <p class="Result_decs">간단한 설명이 들어갑니다</p> -->
<!--                                 </div> -->
<!--                             </a> -->
<!--                         </div> -->

<!--                         <div class="col-4"> -->
<!--                             <a href="#"> -->
<!--                                 <div class="Result_img"> -->
<!--                                     <img src="https://picsum.photos/id/1020/150/150" class="w-100"> -->
<!--                                 </div> -->
<!--                                 <div class="Result_txt"> -->
<!--                                     <div class="review"></div> -->
<!--                                     <p class="Result_name">술이름</p> -->
<!--                                     <p class="Result_decs">간단한 설명이 들어갑니다</p> -->
<!--                                 </div> -->
<!--                             </a> -->
<!--                         </div> -->


<!--                         <div class="col-4"> -->
<!--                             <a href="#"> -->
<!--                                 <div class="Result_img"> -->
<!--                                     <img src="https://picsum.photos/id/1020/150/150" class="w-100"> -->
<!--                                 </div> -->
<!--                                 <div class="Result_txt"> -->
<!--                                     <div class="review"></div> -->
<!--                                     <p class="Result_name">술이름</p> -->
<!--                                     <p class="Result_decs">간단한 설명이 들어갑니다</p> -->
<!--                                 </div> -->
<!--                             </a> -->
<!--                         </div> -->

<!--                         <div class="col-12 w-100 mb-2"></div> -->


<!--                         <div class="col-12 w-100"> -->
<!--                             <div class="area_btn"> -->
<!--                                 <a href="/productAll_03.ProductController" class="h_btn">전체보기</a> -->
<!--                                </div> -->
<!--                             </div> -->

                            
                     
                       


<!--                     </div> -->






                </div>
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