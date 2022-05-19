<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

                <!--------------------------변경---------------------------->
               
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
                <!--------------------------변경---------------------------->
                   
                     
                        <!----------------------------------- Detail-Search  ----------------------------------->
                        <div class="col-12 mt-3 mb-1">
                            <p class="m-auto banner_bot">상세 검색 (항목 별 최대 2개)</p>
                        </div>

                        <div class="col-12" id="detail_box">
                            <div class="container pt-3">
                                <div class="row">
                                    <!-- 주종 -->
                                    <div class="col-12 mb-1">
                                        <p class="m-auto title">주종</p>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="막걸리"
                                            id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            막걸리
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="전통소주"
                                            id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            전통 소주
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="증류주"
                                            id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            증류주
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="과실주"
                                            id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            과실주
                                        </label>
                                    </div>

                                    <div class="col-2 form-check mb-1" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="담금주"
                                            id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            담금주
                                        </label>
                                    </div>

                                    <!-- 지역 -->
                                    <div class="col-12 mb-1">
                                        <p class="m-auto title">지역</p>
                                    </div>

                                    <div class="col-2 form-check mb-1" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="경기도"
                                            id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            경기도
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="경상도"
                                            id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            경상도
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="강원도"
                                            id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            강원도
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="전라도"
                                            id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            전라도
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="충청도"
                                            id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            충청도
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="제주도"
                                            id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            제주도
                                        </label>
                                    </div>

                                    <!-- 평점 -->
                                    <div class="col-12 mb-1">
                                        <p class="m-auto title">평점</p>
                                    </div>

                                    <div class="col-2 form-check mb-1" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="1" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            1
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="2" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            2
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="3" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            3
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="4" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            4
                                        </label>
                                    </div>

                                    <div class="col-2 form-check" style="padding-left: 5%;">
                                        <input class="form-check-input" type="checkbox" value="5" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            5
                                        </label>
                                    </div>

                                    <!-- 도수 -->
                                    <div class="col-12 mb-1">
                                        <p class="m-auto title">도수</p>
                                    </div>

                                    <div class="input-group" style="padding-left: 1%;">
                                        <input type="text" class="form-control" placeholder="입력값 이상"
                                            aria-label="Recipient's username" aria-describedby="basic-addon2"
                                            name="avb">
                                        <span class="input-group-text" id="basic-addon2">% AVB</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

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

                        <div class="col-4">
                            <a href="#">
                                <div class="Result_img">
                                    <img src="https://picsum.photos/id/1020/150/150" class="w-100">
                                </div>
                                <div class="Result_txt">
                                    <div class="review"></div>
                                    <p class="Result_name">술이름</p>
                                    <p class="Result_decs">간단한 설명이 들어갑니다</p>
                                </div>
                            </a>
                        </div>

                        <div class="col-4">
                            <a href="#">
                                <div class="Result_img">
                                    <img src="https://picsum.photos/id/1020/150/150" class="w-100">
                                </div>
                                <div class="Result_txt">
                                    <div class="review"></div>
                                    <p class="Result_name">술이름</p>
                                    <p class="Result_decs">간단한 설명이 들어갑니다</p>
                                </div>
                            </a>
                        </div>


                        <div class="col-4">
                            <a href="#">
                                <div class="Result_img">
                                    <img src="https://picsum.photos/id/1020/150/150" class="w-100">
                                </div>
                                <div class="Result_txt">
                                    <div class="review"></div>
                                    <p class="Result_name">술이름</p>
                                    <p class="Result_decs">간단한 설명이 들어갑니다</p>
                                </div>
                            </a>
                        </div>

                        <div class="col-12 w-100 mb-2"></div>

                        <div class="col-12 w-100">
                            <div class="area_btn">
                                <a href="#" class="h_btn">전체보기</a>
                               </div>
                            </div>

                        <div class="col-4">
                            <a href="#">
                                <div class="Result_img">
                                    <img src="https://picsum.photos/id/1020/150/150" class="w-100">
                                </div>
                                <div class="Result_txt">
                                    <div class="review"></div>
                                    <p class="Result_name">술이름</p>
                                    <p class="Result_decs">간단한 설명이 들어갑니다</p>
                                </div>
                            </a>
                        </div>

                        <div class="col-4">
                            <a href="#">
                                <div class="Result_img">
                                    <img src="https://picsum.photos/id/1020/150/150" class="w-100">
                                </div>
                                <div class="Result_txt">
                                    <div class="review"></div>
                                    <p class="Result_name">술이름</p>
                                    <p class="Result_decs">간단한 설명이 들어갑니다</p>
                                </div>
                            </a>
                        </div>


                        <div class="col-4">
                            <a href="#">
                                <div class="Result_img">
                                    <img src="https://picsum.photos/id/1020/150/150" class="w-100">
                                </div>
                                <div class="Result_txt">
                                    <div class="review"></div>
                                    <p class="Result_name">술이름</p>
                                    <p class="Result_decs">간단한 설명이 들어갑니다</p>
                                </div>
                            </a>
                        </div>

                        <div class="col-12 w-100"></div>

                        <div class="col-12 w-100">
                        <div class="area_btn">
                            <a href="#" class="h_btn">전체보기</a>
                           </div>
                        </div>

                        <div class="col-4">
                            <a href="#">
                                <div class="Result_img">
                                    <img src="https://picsum.photos/id/1020/150/150" class="w-100">
                                </div>
                                <div class="Result_txt">
                                    <div class="review"></div>
                                    <p class="Result_name">술이름</p>
                                    <p class="Result_decs">간단한 설명이 들어갑니다</p>
                                </div>
                            </a>
                        </div>

                        <div class="col-4">
                            <a href="#">
                                <div class="Result_img">
                                    <img src="https://picsum.photos/id/1020/150/150" class="w-100">
                                </div>
                                <div class="Result_txt">
                                    <div class="review"></div>
                                    <p class="Result_name">술이름</p>
                                    <p class="Result_decs">간단한 설명이 들어갑니다</p>
                                </div>
                            </a>
                        </div>


                        <div class="col-4">
                            <a href="#">
                                <div class="Result_img">
                                    <img src="https://picsum.photos/id/1020/150/150" class="w-100">
                                </div>
                                <div class="Result_txt">
                                    <div class="review"></div>
                                    <p class="Result_name">술이름</p>
                                    <p class="Result_decs">간단한 설명이 들어갑니다</p>
                                </div>
                            </a>
                        </div>

                        <div class="col-12 w-100 mb-2"></div>


                        <div class="col-12 w-100">
                            <div class="area_btn">
                                <a href="#" class="h_btn">전체보기</a>
                               </div>
                            </div>


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