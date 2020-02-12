<%@page import="com.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%
	 Member m = (Member)session.getAttribute("member");
	 // session.setMaxInactiveInterval(1000);
	%>
<!DOCTYPE html>
<html>
<head>

<!--제이쿼리 cnd-->
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<!--제이쿼리 cnd-->

<!-- 게시판 부트스트랩 cnd-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<!-- 게시판 부트스트랩 cnd-->

<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.deep_purple-pink.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/views/css/mainstyles.css">




</head>
<body class="mdl-demo mdl-color--grey-100 mdl-color-text--grey-700 mdl-base">


	<header class="mdl-layout__header mdl-layout__header--scroll mdl-color--primary">
	  <div class="mdl-layout--large-screen-only mdl-layout__header-row">
	  </div>
	  <div class="mdl-layout--large-screen-only mdl-layout__header-row" id="top">
	    <h3>T & H Company</h3>
	    <img src="<%=request.getContextPath()%>/resource/images/자바로고.png" id="logo">
	  </div>
	  <div class="mdl-layout--large-screen-only mdl-layout__header-row">
	  </div>
	  <div class="mdl-layout__tab-bar mdl-js-ripple-effect mdl-color--primary-dark">
	
	    <a href="<%=request.getContextPath()%>/views/mainpage.jsp" class="mdl-layout__tab">홈</a>
	    <a href="<%=request.getContextPath()%>/views/border(total).jsp" class="mdl-layout__tab">게시판</a>
	    
	    <a href='' onclick='workingHour();' class="mdl-layout__tab">근태관리</a>
	    
	    <a href="<%=request.getContextPath()%>/views/confirm/confirm.jsp" class="mdl-layout__tab">전자결제</a>
	    <a href="<%=request.getContextPath()%>/views/mypage.jsp" class="mdl-layout__tab">인사정보</a>
	    <a id="login" href="login.jsp" class="mdl-layout__tab">로그아웃</a>
	    <a href="#features" class="mdl-layout__tab" onclick="MessageOpen();">메신저</a>
	     
	    <span class="visuallyhidden">Add</span>
	    
	    
	    
	  </div>
	</header>
	<script>

		function workingHour() {
			window.open("<%=request.getContextPath()%>/views/workingHour/workinghour.jsp","결재선 지정","width=1100, height=700,resizable=yes");
		}

	</script>    
          

</body>
</html>