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
</head>
<body>
 <header class="mdl-layout__header mdl-layout__header--scroll mdl-color--primary">
            <div class="mdl-layout--large-screen-only mdl-layout__header-row">
            </div>
            <div class="mdl-layout--large-screen-only mdl-layout__header-row" id="top">
              <h3>T & H Company</h3>
              <img src="../resource/images/자바로고.png" id="logo">
            </div>
            <div class="mdl-layout--large-screen-only mdl-layout__header-row">
            </div>
            <div class="mdl-layout__tab-bar mdl-js-ripple-effect mdl-color--primary-dark">

              <a href="mainpage.jsp" class="mdl-layout__tab">홈</a>
              <a href="border(total).jsp" class="mdl-layout__tab">게시판</a>
              <a href="#features" class="mdl-layout__tab">근태관리</a>
              <a href="#features" class="mdl-layout__tab">전자결제</a>
              <a href="mypage.jsp" class="mdl-layout__tab">인사정보</a>
              <a id="login" href="login.jsp" class="mdl-layout__tab">로그아웃</a>
              <a href="#features" class="mdl-layout__tab" onclick="MessageOpen();">메신저</a>
               
              
              
              <span class="visuallyhidden">Add</span>
              </button>
            </div>
          </header>

</body>
</html>