<%@page import="com.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%  Member m = (Member)session.getAttribute("member");  %>   
    
<!doctype html>

<html lang="en">
  <head>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>관리자 사원추가</title>
    



    <!-- 게시판 부트스트랩 cnd-->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <!-- 게시판 부트스트랩 cnd-->
    <!--제이쿼리 cnd-->
    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!--제이쿼리 cnd-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Material Design Lite">
    <link rel="apple-touch-icon-precomposed" href="images/ios-desktop.png">

    <meta name="msapplication-TileImage" content="images/touch/ms-touch-icon-144x144-precomposed.png">
    <meta name="msapplication-TileColor" content="#3372DF">
	 <link rel="stylesheet" href="css/styles.css">
  
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.deep_purple-pink.min.css">
  
     

<!--태환 css-->
<style>

    body { margin-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; }
    
    #view-source {
      position: fixed;
      display: block;
      right: 0;
      bottom: 0;
      margin-right: 40px;
      margin-bottom: 0px;
      z-index: 900;
    }
    #login{
        position: absolute;
        
        right: 30px;
    }
    .article{
      display: inline-block;
      margin: 5px;
      padding: 5px;
      position: relative;
    }
    .main{ position: relative; height: 1000px; padding: 10px; }
    .left{  position: absolute; left: 0px}
    .center{  position: absolute; left: 440px;} 
    .right{ position: absolute; left: 1300px;}
    .profile{position: relative;
            width: 375px;
            height: 500px;
            border-radius: 15px;
            background: #FFFFFF;
            border: 1px solid rgb(192, 189, 189);
           }text-align: center;
     .name{
            position: absolute;
      width: 110px;
      height: 40px;
      left: 130.58px;
      top: 236.75px;

      font-family: Comfortaa;
      font-style: normal;
      font-weight: normal;
      font-size: 30px;
      line-height: 40px;
      display: flex;
      align-items: center;
      text-align: center;
      letter-spacing: -0.015em;

      color: #000000;

      transform: rotate(0.31deg);
     } 
     .myphoto{
      position: absolute;
      width: 128px;
      height: 128px;
      left: 126.45px;
      top: 76.68px;

      background: url(photo-1542103749-8ef59b94f47e.jpg);
      transform: rotate(0.31deg);
     }
     .title{
      position: absolute;
      width: 80px;
      height: 15px;
      left: 148.27px;
      top: 300.84px;

      font-family: Roboto;
      font-style: normal;
      font-weight: 900;
      font-size: 13px;
      line-height: 15px;
      display: flex;
      align-items: center;
      text-align: center;
      letter-spacing: 0.04em;
      text-transform: uppercase;

      color: #000000;

      transform: rotate(0.31deg);
     }
     .todaycheck{
      position: absolute;
      width: 200px;
      height: 20px;
      left: 50px;
      top: 354.02px;

     
      font-style: normal;
      font-weight: 900;
      font-size: 15px;
      line-height: 15px;
      display: flex;
      align-items: center;
      text-align: center;
      letter-spacing: 0.04em;
      text-transform: uppercase;

      color: #000000;
    
     }
     .todaycheck1{
      position: absolute;
      width: 200px;
      height: 150px;
      top: 354.02px;
      left: 50px;

     
      font-style: normal;
      font-weight: 900;
      font-size: 15px;
      line-height: 15px;
      display: flex;
      align-items: center;
      text-align: center;
      letter-spacing: 0.04em;
      text-transform: uppercase;

      color: #000000;
    
     }
    .checkpaper{
      position: relative;
      left: 93.27px;
      top: 20px;
      font-style: normal;
      font-weight: 900;
      font-size: 20px;
      line-height: 46px;
      display: flex;
      align-items: center;
      text-align: center;
      letter-spacing: 0.04em;
      text-transform: uppercase;
      color: #000000;
    }
      .non{
        width: 800px;height: 670px; border: 1px solid rgb(192, 189, 189);
      padding: 10px; border-radius: 15px; background: snow;

      }
    .board{    width: 800px;
    height: 650px;
    border: 1px solid rgb(192, 189, 189);
    padding: 10px;
    border-radius: 15px;
    background: snow;
    position: relative;
    top: 54px;}
      .write{
        position: relative left 1px;
      }
    .calendar{width: 380px; height: 550px;}
    
    #chat{ position:relative; width: 500px;height: 950px;
       background: snow;     border-radius: 15px;
            border: 1px solid rgb(192, 189, 189);}
    #chattext{
     position: relative;
    top: 894px;
    left: -45px;
    width: 410px;
    height: 60px;
    } 
    #chatbutton{
      position: relative;
    top: 834px;
    width: 93px;
    height: 60px;
    left: 204px;
    }
    .emergency{position: relative width 500px; height: 300px;border: 2px solid red;}
    .check{position: relative;
            width: 375px;
            height: 350px;

            background: #FFFFFF;
            border-radius: 15px;
            
            border: 1px solid rgb(192, 189, 189); }

      
      .checklist>li{
      font-size: 20px;
    }        
    .foodlist{
      
    position: relative;
    width: 380px;
    height: 462px;
    background: #FFFFFF;
    padding: 10px;
    border-radius: 15px;
    border: 1px solid rgb(192, 189, 189);
    }        

    #logo{
      position: absolute;
      width: 120px;
      height: 120px;
      right: 70px;
    }
    #top{
      background: rgb(60, 0, 109);
      border-radius: 30px;
    }
   
  #foodtable tr,#foodtable td 
    {
    padding: 11px;
    border-top: 3px solid #ddd;
     }
  #boardtable tr,#boardtable td 
    {
    padding: 11px;
    border-top: 3px solid #ddd;
     }
     .emergency{
        position: relative;
        height: 400px;
        background: #FFFFFF;
    padding: 10px;
    border-radius: 15px;
    border: 1px solid rgb(192, 189, 189);
     } 
    #namearea{  
     position: relative;
  left: 20%;
    top: 13%;
    width: 900px;
    height: 640px;
    padding: 27px;
    background: snow;
    text-align: center;
    }
    .list-group-item{
      margin-bottom: 20px;
      border: 0px;
      padding-left: 50px;
    }
    .list-group-item a{
      color : black;
    }
    
    .side-bar{width: 300px; height: 1000px; text-align: left;}

    .page-content{width: 900px; height: 800px; position: absolute; left: 350px; }

    </style>
<!--태환 css-->    
  
</head>

<body>
    <body class="mdl-demo mdl-color--grey-100 mdl-color-text--grey-700 mdl-base">
        <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
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
              <a id="login" href="login.jsp" class="mdl-layout__tab">로그인</a>
              <a href="#features" class="mdl-layout__tab" onclick="MessageOpen();">메신저</a>
              </button>
            </div>
          </header>
          
          <div class="mdl-layout__tab-panel is-active" id="overview">
            
           <div class="main">
            <div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer">
              <div class="side-bar">
                <!-- 사이드 바 메뉴-->
                <!-- 패널 타이틀1 -->
                <div class="panel panel-info">
                    <div class="panel-heading" style=" padding: 20px;" >
                    <h3 class="panel-title" style="font-size: 20px;
                    font-weight: 900;">관리자 메뉴</h3>
                    </div>
                    <!-- 사이드바 메뉴목록1 -->
                    <ul class="list-group">
                           <li class="list-group-item"><a href="">회원추가</a></li>
                            <li class="list-group-item"><a href="/Semi/mList.em">회원목록</a></li>
                            <li class="list-group-item"><a href="admin_board_list.jsp">게시글 관리</a></li>
                            <li class="list-group-item"><a href="./views/admin_foodlist.jsp">식단관리</a></li>
                            </ul>
                </div>                    
        </div><br>                            
                  <div class="page-content">
                 		<form action="/Semi/madd.em">
                      <div id=namearea> 회원 추가하기 
                        <table cellspacing='1' cellpadding='0' class="table table-bordered" style="margin: auto; text-align: center;">
                         
                         	<tr>
                         	</tr>
                          <tr>
                              <td colspan='3' rowspan='3' width='120' class='ti'><br>신 상 정 보</td>
                              <td  colspan='2' class='ti' width='200'>성 명</td>
                              <td colspan='2' class='ti' width='200'>주 민 등 록 번 호</td>
                              
                          </tr>
                          <tr>
                              <td colspan='2'><input name="name" type="text" style="width: 200px;"></td>
                              <td colspan='2'><input name="ssn" type="text" style="width: 200px;"></td>
                          </tr>
                          <tr>
                       
                          </tr>
                          <tr>
                              <td colspan='3' class='ti'>주 소</td>
                              <td colspan='4' class='ti'><input name="address" type="text" style="width: 500px;"></td>
                          </tr>
                          <tr>
                              <td class='ti' colspan='3' rowspan='3'><br><br><br>연락처</td>
                           
                              <td class='ti' width='100'>전자우편  <br>--</td>
                              <td colspan='3' ><input name="email" type="text" style="width: 400px;"></td>
                          </tr>
                          <tr>
                              <td   class='ti'>핸드폰 <br>(-)포함</td>
                              <td colspan='3' ><input name="phone" type="text" style="width: 400px; padding-left: 40px;"></td>
                        
                          </tr>
                          <tr>
                              <td   class='ti'>집전화 <br>(-)포함</td>
                              <td colspan='3' ><input name="home" type="text" style="width: 400px; padding-left: 40px;"></td>
                          </tr>
                          <tr>
                              <td class='ti' colspan='3'>계정 정보</td>
                              <td class='ti'>계정 ID</td>
                              <td><input name="id" type="text" style="width: 150px;" maxlength="12"></td>
                              <td class='ti' width='100'>계정 PW</td>
                              <td><input name="pwd" type="password" style="width: 200px;"></td>
                          </tr>
                          <tr>
                      		   <td class='ti' colspan='3'>인사 정보</td>
                              <td class='ti'>부서</td>
                              <td><input name="dept" type="text" style="width: 150px;" maxlength="12"></td>
                              <td class='ti' width='100'>직급</td>
                              <td><input name="job" type="text" style="width: 200px;"></td>
                          </tr>
                      </table>
                      <br><br><br>
                      <input type="submit" value="추가하기" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                      <input type="reset" value="취소하기"class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
                      </div>
                      </form>
                    </div>
              </div>
           </div>
          </div>
                  <%@ include file="./common/footer.jsp" %>
            <script>
              window.onfocus=function(){
              }
              window.onload=function(){
               window.focus(); // 현재 window 즉 익스플러러를 윈도우 최상단에 위치
              window.moveTo(0,0); // 웹 페이지의 창 위치를 0,0 (왼쪽 최상단) 으로 고정
              window.resizeTo(1280,800); // 웹페이지의 크기를 가로 1280 , 세로 800 으로 고정(확장 및 축소)
              window.scrollTo(0,250); // 페이지 상단 광고를 바로 볼 수 있게 스크롤 위치를 조정
              }
              function MessageOpen(){ //메세지창 열기
        window.open('message.html','메세지함','width=1280px,height=960px');
      }
            </script>
</body>
</html>