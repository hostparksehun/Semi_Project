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
    <script type="text/javascript" src="/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>

    <style>
      * {box-sizing: border-box;}

      div{border: 1px solid black;}

      .add_product{
          text-align: center;
          font-size: 25px;
        }
      .input {
        width:50%;
        float:left;
      }
     

    </style>
   
   
    <title>우리술 등록</title>
<body>
    <div id="container">
    
<div class="add_product">제품 등록</div>




        <div class="editor_box">

			<h3>이미지 파일 등록</h3>
			
		
			<form action="insertStudentInfoForm" method="post">
				<div id="smarteditor">
					<textarea name="editorTxt" id="editorTxt" rows="20" cols="10"
						placeholder="내용을 입력해주세요" style="width: 800px"></textarea>
				  
				</div>
				 <input type="button" value="제출">
			</form>

         </div>
		<script>
			let oEditors = []

			smartEditor = function() {

				nhn.husky.EZCreator.createInIFrame({
					oAppRef : oEditors,
					elPlaceHolder : "editorTxt",
					sSkinURI : "/smarteditor/SmartEditor2Skin.html",
					fCreator : "createSEditor2"
				})
			}

			$(document).ready(function() {
				smartEditor()
			})
			
			
			submitPost = function() {
            oEditors.getById["editorTxt"].exec("UPDATE_CONTENTS_FIELD", [])
            let content = document.getElementById("editorTxt").value

            if(content == '') {
            alert("내용을 입력해주세요.")
            oEditors.getById["editorTxt"].exec("FOCUS")
            return
            } else {
             console.log(content)
        }
}
			
		</script>




       
        <div class="input">제품 이름: <input type="text" name="product_name" placeholder="내용을 입력하세요"></div>
        <div class="input">가격: <input type="text" name="price" placeholder="내용을 입력하세요"></div>
        <div class="input">알콜 도수: <input type="text" name="abv" placeholder="내용을 입력하세요"></div>
        <div class="input">판매처 번호: <input type="text" name="dealer_number" placeholder="내용을 입력하세요"></div>
        <div class="input">용량: <input type="text" name="capacity" placeholder="내용을 입력하세요"></div>
        <div class="input">상품 코드: <input type="text" name="product_name" placeholder="내용을 입력하세요"></div>
        <div class="input">생산 업체 코드: <input type="text" name="product_name" placeholder="내용을 입력하세요"></div>
        <div class="input">생산 지역 코드: <input type="text" name="product_name" placeholder="내용을 입력하세요"></div>
      
    
 
    

      




    </div>


</body>
</html>