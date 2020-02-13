<%@ 
	page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.member.model.vo.*"
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<!-- 제이쿼리 시작 -->
<script src="<%=request.getContextPath()%>/resources/js/jquery-3.4.1.min.js"></script>
<!-- 제이쿼리 끝 -->

<!-- 테이블 CSS 시작 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!-- 테이블 CSS 끝 -->

<!-- 버튼 CSS 시작 -->
<!-- Material Design Lite -->
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
<!-- 버튼 CSS 끝 -->

<!------------------------ SmartEditor 시작 ------------------------>

<script type="text/javascript" src="<%=request.getContextPath()%>/resources/src/smartEditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>

<!------------------------ SmartEditor 끝 ------------------------>

<style>
  /* 적용된 css에 덮어씌우기 (제목 길이)*/
	nav, section {
  		float: left;
  	}
  	nav{
  		height: 80%;
  		width: 18%;
	    padding-left: 3%;
	    padding-top: 3%;
  	}
  	section{
  		height: 80%;
  		width: 70%;
  	}
  	.nSpan{
  		color:black;
  		text-align: center;
  		line-height: 50px;
  		height: 50px;
  		display: block;
  		background:  #f1f1f1;
		border: 0.5px solid #f5f5f5;
  	}
  	.menuspan{
  		background: #e9ecef;
		border: 0.5px solid #dee2e6;
  	}
  	.writespan{
  		color:#ff5757;
  		background: #ffeded;
		border: 0.5px solid #f5f5f5;
  	}
  	.spanhovercss{
  		color:white;
  		background: #696969;
		border: 0.5px solid #616161;
  	}
  	.spanhcss{
  		color:white;
  		background: #ff7676;
		border: 0.5px solid #ff0000;
  	}
</style>


<title>전자결제</title>
</head>

<body style="height: 100%; width: 100%;">

<input type='hidden' name='checklist_value' id='checklist_value'>
<input type='hidden' name='approvallist_value' id='approvallist_value'>
<input type='hidden' name='reflist_value' id='reflist_value'>

<!-- header 시작 --><!-- header 시작 --><!-- header 시작 --><!-- header 시작 --><!-- header 시작 -->
	<header>
	<%@ include file="/views/common/header.jsp" %>
	</header>
<!-- nav 시작 --><!-- nav 시작 --><!-- nav 시작 --><!-- nav 시작 --><!-- nav 시작 --><!-- nav 시작 -->
	
	<nav>
	
		<sapn class='nSpan menuspan'>전자 결재함</sapn>
		<sapn class='nSpan hoverspan' id='temp1'>결재할 문서</sapn>
		<sapn class='nSpan hoverspan' id='temp2'>결재 완료 문서</sapn>
		<sapn class='nSpan hoverspan' id='temp3'>임시 저장 문서</sapn>

		<br>
		
		<sapn class='nSpan writespan' id='gowrite'>결재 문서 작성</sapn>
		
	</nav>
	
<script>
/* hover로 메뉴에 css 적용하기 *//* hover로 메뉴에 css 적용하기 *//* hover로 메뉴에 css 적용하기 */
	$(function(){
		
		$('.hoverspan').hover(function(){
			// mouseenter
			$(this).addClass('spanhovercss');
		},function(){
			// mouseleave
			$(this).removeClass('spanhovercss');
		});
		
		$('.writespan').hover(function(){
			// mouseenter
			$(this).addClass('spanhcss');
		},function(){
			// mouseleave
			$(this).removeClass('spanhcss');
		});
		
/* span onclick event 적용하기 *//* span onclick event 적용하기 *//* span onclick event 적용하기 */
		$('#gowrite').click(function(){
			location.href='<%=request.getContextPath()%>/views/confirm/confirm.jsp';
		})
		$('#temp1').click(function(){
			location.href='<%=request.getContextPath()%>/views/confirm/temp1.jsp';
		})
		$('#temp2').click(function(){
			location.href='<%=request.getContextPath()%>/views/confirm/temp2.jsp';
		})
		$('#temp3').click(function(){
			location.href='<%=request.getContextPath()%>/views/confirm/temp3.jsp';
		})
		
	});

</script>


  <!-- section 시작 --><!-- section 시작 --><!-- section 시작 --><!-- section 시작 --><!-- section 시작 --><!-- section 시작 -->
  <section id='board'>

    <form style="margin-left: 5%; margin-right: 5%;">
      <hr>

      <input type="button" value='결재선 지정' onclick='confirmline();'
        class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
      <input type="button" value='임시 저장' class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
      <input type="button" value='결재요청' class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
      <input type="button" value='취소' class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
      <hr>
      <br>
      <!-- 부트스트랩 테이블 -->
      <table class="table">
        <thead class="thead-light">
          <tr>
            <th>기안</th>
            <th><%= m.getDeptName() %></th>
            <th><%= m.getJobName() + " " + m.getEmpName() %></th>
          </tr>
        </thead>
        <tbody>

          <tr id='list1'>
            <td>검토</td>
            <td></td>
            <td></td>
          </tr>
          
		  <tr id='list2'>
            <td>협조</td>
            <td></td>
            <td></td>            
          </tr>
          
          <thead class="thead-dark" id='list3'>
          <tr>
            <th>승인</th>
            <th></th>
            <th></th>
          </tr>
          </thead>
        </tbody>
      </table>

      <!-- 부트스트랩 테이블 -->

      <!-- <label>제목 : </label>
      <input type="text"> -->
      <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
        <input class="mdl-textfield__input" type="text" id="sample3">
        <label class="mdl-textfield__label" for="sample3">제 목 : </label>
      </div>

      <br>
      <!-- period = name : options -->
      <label>보존 기간 / </label>
      <!-- <select>
        <option>6개월</option>
        <option>1년</option>
        <option>2년</option>
      </select> -->
      <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="option-1">
        <input type="radio" id="option-1" class="mdl-radio__button" name="options" value="1" checked>
        <span class="mdl-radio__label">6개월</span>
      </label>      
      <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="option-2">
        <input type="radio" id="option-2" class="mdl-radio__button" name="options" value="2">
        <span class="mdl-radio__label">1년</span>
      </label>
      <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="option-3">
        <input type="radio" id="option-3" class="mdl-radio__button" name="options" value="3">
        <span class="mdl-radio__label">2년</span>
      </label>
      <br>
      <label>기밀 등급 / </label>
      <!-- <select>
        <option>기밀</option>
        <option>일반</option>
        <option>공개</option>
      </select> -->
      <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="option-4">
        <input type="radio" id="option-4" class="mdl-radio__button" name="options2" value="4">
        <span class="mdl-radio__label">기밀</span>
      </label>      
      <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="option-5">
        <input type="radio" id="option-5" class="mdl-radio__button" name="options2" value="5" checked>
        <span class="mdl-radio__label">일반</span>
      </label>
      <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="option-6">
        <input type="radio" id="option-6" class="mdl-radio__button" name="options2" value="6">
        <span class="mdl-radio__label">공개</span>
      </label>

      <br>
      <!-- <textarea style="resize : none;" cols="40" rows="10"></textarea> -->
		<!-- 폰트바꿔주는 놈  -->
		
		<textarea name="ir1" id="ir1" rows="10" cols="100">에디터에 기본으로 삽입할 글(수정 모드)이 없다면 이 value 값을 지정하지 않으시면 됩니다.</textarea>
		
		<script type="text/javascript">
			var oEditors = [];
			nhn.husky.EZCreator.createInIFrame({
			 oAppRef: oEditors,
			 elPlaceHolder: "ir1",
			 sSkinURI: "/Semi/resources/src/smartEditor/SmartEditor2Skin.html",
			 fCreator: "createSEditor2"
			});
		</script>
		
		<!-- 폰트바꿔주는 놈  -->
		
      <br>
      <label>첨부파일 : </label>
      <input type="file">

    </form>

  </section>
  <!-- section 끝 --><!-- section 끝 --><!-- section 끝 --><!-- section 끝 --><!-- section 끝 --><!-- section 끝 -->
  <script>

    function confirmline() {
		window.open("<%=request.getContextPath()%>/MemberList.ap","결재선 지정","width=1100, height=700,resizable=yes");
    };

  </script>

</body>
</html>