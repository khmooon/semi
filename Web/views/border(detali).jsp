<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
<title>상세보기</title>
<meta charset="UTF-8">
<head>
	 


<!-- jQuery -->

<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>


<!-- Bootstrap CSS -->

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

<title>write</title>



<script>

	$(document).on('click', '#btnSave', function(e){

		e.preventDefault();

		$("#form").submit();

	});

	

	$(document).on('click', '#btnList', function(e){

		e.preventDefault();

		

		location.href="${pageContext.request.contextPath}/board/getBoardList";

	});

	  

</script>



	
<style>

body {

  padding-top: 70px;

  padding-bottom: 30px;


}

#summernote{
	width: 10px;
	height: 500px;
	margin: 100px;
}
input{
	background: white;
}

</style>

</head>

<body>

	<article>

		<div class="container" role="main">

			<h2>상세보기</h2>

			<form name="form" id="form" role="form" method="post" action="${pageContext.request.contextPath}/board/saveBoard" aria-readonly="true">

				<div class="mb-3">

					<label for="title" >제목</label>

					<input  readonly type="text" class="form-control" name="title" id="title" value="1월 14일 공지사항 입니다.">

				</div>

				<div class="mb-3">

					<label for="reg_id">작성자</label>

					<input readonly type="text" class="form-control" name="reg_id" id="reg_id" value="문사장">

				</div>
	
				<div class="mb-3">

					<label for="content">내용</label>

					<textarea readonly class="form-control" rows="20" name="content" id="content">
                        1월 14일 공지사항 입니다.

                        국무위원은 국정에 관하여 대통령을 보좌하며, 국무회의의 구성원으로서 국정을 심의한다.

                        이 헌법시행 당시에 이 헌법에 의하여 새로 설치될 기관의 권한에 속하는 직무를 행하고 있는 기관은 이 헌법에 의하여 새로운 기관이 

                        여자의 근로는 특별한 보호를 받으며, 고용·임금 및 근로조건에 있어서 부당한 차별을 받지 아니한다.

                        일반사면을 명하려면 국회의 동의를 얻어야 한다. 의원을 제명하려면 국회재적의원 3분의 2 이상의 찬성이 있어야 한다.

                        대통령이 궐위되거나 사고로 인하여 직무를 수행할 수 없을 때에는 국무총리, 법률이 정한 국무위원의 순서로 그 권한을 대행한다.
                    </textarea>

				</div>
	
				
				<div class="mb-3">

					<label for="tag">TAG</label>

					<input readonly type="text" class="form-control" name="tag" id="tag" value="#행정부">

				</div>

			

			</form>

			<div >

				<button type="button" class="btn btn-sm btn-primary" id="btnSave">수정</button>

				<button type="button" class="btn btn-sm btn-primary" id="btnList">삭제</button>

			</div>

		</div>

	</article>


	<script>
		$(document).ready(function() {
		$('#summernote').summernote();
		});
	
	</script>
</body>

</html>



