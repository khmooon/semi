<%@ 
	page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.member.model.vo.*"
    
%>

<%
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 제이쿼리 시작 -->
<script src="<%=request.getContextPath()%>/resources/js/jquery-3.4.1.min.js"></script>
<!-- 제이쿼리 끝 -->

<!-- TextArea 시작 --> 
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/demo.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/jquery-te-1.4.0.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js" charset="utf-8"></script>

<!-- <script type="text/javascript" src="../jquery-te-1.4.0.min.js" charset="utf-8"></script> -->
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-te-1.4.0.min.js" charset="utf-8"></script>
<!-- TextArea 끝 -->

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

<style>
  /* 적용된 css에 덮어씌우기 (제목 길이)*/
  .mdl-textfield{
    width: 500px;
  }
</style>

<title>전자결제</title>
</head>

<body style="height: 100%; width: 100%;">
<%@ include file="/views/common/header.jsp" %>
  <!-- div 시작 -->
  <div id='board'>

    <form style="margin-left: 10%; margin-right: 20%;">
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
            <th>기안자</th>
            <th><%= m.getDeptName() %></th>
            <th><%= m.getJobName() + " " + m.getEmpName() %></th>
            <th>대기중</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>검토</td>
            <td>KH R&D 부서</td>
            <td>기장 김선엽</td>
            <td></td>
          </tr>
          <tr>
            <td>검토</td>
            <td>KH R&D 부서</td>
            <td>기장 김선엽</td>
            <td></td>
          </tr>
          <tr>
            <td>검토</td>
            <td>KH R&D 부서</td>
            <td>기장 김선엽</td>
            <td></td>
          </tr>
          <thead class="thead-dark">
            <tr>
              <th>승인</th>
              <th>KH R&D 부서</th>
              <th>기장 김선엽</th>
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
      <!-- 폰트바꿔주는 놈  -->
      <!-- <textarea style="resize : none;" cols="40" rows="10"></textarea> -->
      
      <!-- jQUERY TEXT EDITOR -->

      <div></div>
      <textarea name="textarea"
      class="jqte-test"><b>본문을 적어주세요.</b></textarea>

      <script>
          $('.jqte-test').jqte();

          // settings of status
          var jqteStatus = true;
          $(".status").click(function () {
              jqteStatus = jqteStatus ? false : true;
              $('.jqte-test').jqte({ "status": jqteStatus })
          });
      </script>

      <!-- jQUERY TEXT EDITOR -->

      <br>
      <label>첨부파일 : </label>
      <input type="file">

    </form>

  </div>
  <!-- 2번 div 끝 -->
  <script>

    function confirmline() {
		window.open("<%=request.getContextPath()%>/MemberList.ap","결재선 지정","width=1100, height=700,resizable=yes");
    }

  </script>

</body>
</html>