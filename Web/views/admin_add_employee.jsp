<<<<<<< HEAD
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
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>

<html lang="en">
  <head>
    
    <meta charset="utf-8">
    
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

  
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.deep_purple-pink.min.css">
    <link rel="stylesheet" href="./css/styles.css">
    <!--캘린더 css-->
    <style>
      @import url('https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i');
      td.fc-day {

      background:#FFF !important;
      font-family: 'Roboto', sans-serif;

      }
      td.fc-today {
        background:#FFF !important;
        position: relative;


      }

    .fc-first th{
      font-family: 'Roboto', sans-serif;
        background:#9675ce !important;
      color:#FFF;
      font-size:14px !important;
      font-weight:500 !important;

      }
.fc-event-inner {
	font-family: 'Roboto', sans-serif;
    background: #03a9f3!important;
    color: #FFF!important;
    font-size: 12px!important;
    font-weight: 500!important;
    padding: 5px 0px!important;
}

.fc {
	direction: ltr;
	text-align: left;
	}
	
.fc table {
	border-collapse: collapse;
	border-spacing: 0;
	}
	
html .fc,
.fc table {
	font-size: 1em;
	font-family: "Helvetica Neue",Helvetica;

	}
	
.fc td,
.fc th {
	padding: 0;
	vertical-align: top;
	}



/* Header
------------------------------------------------------------------------*/

.fc-header td {
	white-space: nowrap;
	padding: 15px 10px 0px;
}

.fc-header-left {
	width: 25%;
	text-align: left;
}
	
.fc-header-center {
	text-align: center;
	}
	
.fc-header-right {
	width: 25%;
	text-align: right;
	}
	
.fc-header-title {
	display: inline-block;
	vertical-align: top;
	margin-top: -5px;
}
	
.fc-header-title h2 {
	margin-top: 0;
	white-space: nowrap;
	font-size: 32px;
    font-weight: 100;
    margin-bottom: 10px;
		font-family: 'Roboto', sans-serif;
}
	span.fc-button {
    font-family: 'Roboto', sans-serif;
    border-color: #9675ce;
	color: #9675ce;
}
.fc-state-down, .fc-state-active {
    background-color: #9675ce !important;
	color: #FFF !important;
}
.fc .fc-header-space {
	padding-left: 10px;
	}
	
.fc-header .fc-button {
	margin-bottom: 1em;
	vertical-align: top;
	}
	
/* buttons edges butting together */

.fc-header .fc-button {
	margin-right: -1px;
	}
	
.fc-header .fc-corner-right,  /* non-theme */
.fc-header .ui-corner-right { /* theme */
	margin-right: 0; /* back to normal */
	}
	
/* button layering (for border precedence) */
	
.fc-header .fc-state-hover,
.fc-header .ui-state-hover {
	z-index: 2;
	}
	
.fc-header .fc-state-down {
	z-index: 3;
	}

.fc-header .fc-state-active,
.fc-header .ui-state-active {
	z-index: 4;
	}
	
	
	
/* Content
------------------------------------------------------------------------*/
	
.fc-content {
	clear: both;
	zoom: 1; /* for IE7, gives accurate coordinates for [un]freezeContentHeight */
	}
	
.fc-view {
	width: 100%;
	overflow: hidden;
	}
	
	

/* Cell Styles
------------------------------------------------------------------------*/

    /* <th>, usually */
.fc-widget-content {  /* <td>, usually */
	border: 1px solid #e5e5e5;
	}
.fc-widget-header{
    border-bottom: 1px solid #EEE; 
}	
.fc-state-highlight { /* <td> today cell */ /* TODO: add .fc-today to <th> */
	/* background: #fcf8e3; */
}

.fc-state-highlight > div > div.fc-day-number{
    background-color: #ff3b30;
    color: #FFFFFF;
    border-radius: 50%;
    margin: 4px;
}
	
.fc-cell-overlay { /* semi-transparent rectangle while dragging */
	background: #bce8f1;
	opacity: .3;
	filter: alpha(opacity=30); /* for IE */
	}
	


/* Buttons
------------------------------------------------------------------------*/

.fc-button {
	position: relative;
	display: inline-block;
	padding: 0 .6em;
	overflow: hidden;
	height: 1.9em;
	line-height: 1.9em;
	white-space: nowrap;
	cursor: pointer;
	}
	
.fc-state-default { /* non-theme */
	border: 1px solid;
	}

.fc-state-default.fc-corner-left { /* non-theme */
	border-top-left-radius: 4px;
	border-bottom-left-radius: 4px;
	}

.fc-state-default.fc-corner-right { /* non-theme */
	border-top-right-radius: 4px;
	border-bottom-right-radius: 4px;
	}

/*
	Our default prev/next buttons use HTML entities like ‹ › « »
	and we'll try to make them look good cross-browser.
*/

.fc-text-arrow {
	margin: 0 .4em;
	font-size: 2em;
	line-height: 23px;
	vertical-align: baseline; /* for IE7 */
	}

.fc-button-prev .fc-text-arrow,
.fc-button-next .fc-text-arrow { /* for ‹ › */
	font-weight: bold;
	}
	
/* icon (for jquery ui) */
	
.fc-button .fc-icon-wrap {
	position: relative;
	float: left;
	top: 50%;
	}
	
.fc-button .ui-icon {
	position: relative;
	float: left;
	margin-top: -50%;
	
	*margin-top: 0;
	*top: -50%;
	}


.fc-state-default {
	border-color: #ff3b30;
	color: #ff3b30;	
}
.fc-button-month.fc-state-default, .fc-button-agendaWeek.fc-state-default, .fc-button-agendaDay.fc-state-default{
    min-width: 67px;
	text-align: center;
	transition: all 0.2s;
	-webkit-transition: all 0.2s;
}
.fc-state-hover,
.fc-state-down,
.fc-state-active,
.fc-state-disabled {
	color: #333333;
	background-color: #FFE3E3;
	}

.fc-state-hover {
	color: #ff3b30;
	text-decoration: none;
	background-position: 0 -15px;
	-webkit-transition: background-position 0.1s linear;
	   -moz-transition: background-position 0.1s linear;
	     -o-transition: background-position 0.1s linear;
	        transition: background-position 0.1s linear;
	}

.fc-state-down,
.fc-state-active {
	background-color: #ff3b30;
	background-image: none;
	outline: 0;
	color: #FFFFFF;
}

.fc-state-disabled {
	cursor: default;
	background-image: none;
	background-color: #FFE3E3;
	filter: alpha(opacity=65);
	box-shadow: none;
	border:1px solid #FFE3E3;
	color: #ff3b30;
	}

	

/* Global Event Styles
------------------------------------------------------------------------*/

.fc-event-container > * {
	z-index: 8;
	}

.fc-event-container > .ui-draggable-dragging,
.fc-event-container > .ui-resizable-resizing {
	z-index: 9;
	}
	 
.fc-event {
	border: 1px solid #FFF; /* default BORDER color */
	background-color: #FFF; /* default BACKGROUND color */
	color: #919191;               /* default TEXT color */
	font-size: 12px;
	cursor: default;
}
.fc-event.chill{
    background-color: #f3dcf8;
}
.fc-event.info{
    background-color: #c6ebfe;
}
.fc-event.important{
    background-color: #FFBEBE;
}
.fc-event.success{
    background-color: #BEFFBF;
}
.fc-event:hover{
    opacity: 0.7;
}
a.fc-event {
	text-decoration: none;
	}
	
a.fc-event,
.fc-event-draggable {
	cursor: pointer;
	}
	
.fc-rtl .fc-event {
	text-align: right;
	}

.fc-event-inner {
	width: 100%;
	height: 100%;
	overflow: hidden;
	line-height: 15px;
	}
	
.fc-event-time,
.fc-event-title {
	padding: 0 1px;
	}
	
.fc .ui-resizable-handle {
	display: block;
	position: absolute;
	z-index: 99999;
	overflow: hidden; /* hacky spaces (IE6/7) */
	font-size: 300%;  /* */
	line-height: 50%; /* */
	}
	
	
	
/* Horizontal Events
------------------------------------------------------------------------*/

.fc-event-hori {
	border-width: 1px 0;
	margin-bottom: 1px;
	}

.fc-ltr .fc-event-hori.fc-event-start,
.fc-rtl .fc-event-hori.fc-event-end {
	border-left-width: 1px;
	/*
border-top-left-radius: 3px;
	border-bottom-left-radius: 3px;
*/
	}

.fc-ltr .fc-event-hori.fc-event-end,
.fc-rtl .fc-event-hori.fc-event-start {
	border-right-width: 1px;
	/*
border-top-right-radius: 3px;
	border-bottom-right-radius: 3px;
*/
	}
	
/* resizable */
	
.fc-event-hori .ui-resizable-e {
	top: 0           !important; /* importants override pre jquery ui 1.7 styles */
	right: -3px      !important;
	width: 7px       !important;
	height: 100%     !important;
	cursor: e-resize;
	}
	
.fc-event-hori .ui-resizable-w {
	top: 0           !important;
	left: -3px       !important;
	width: 7px       !important;
	height: 100%     !important;
	cursor: w-resize;
	}
	
.fc-event-hori .ui-resizable-handle {
	_padding-bottom: 14px; /* IE6 had 0 height */
	}
	
	
	
/* Reusable Separate-border Table
------------------------------------------------------------*/

table.fc-border-separate {
	border-collapse: separate;
	}
	
.fc-border-separate th,
.fc-border-separate td {
	border-width: 1px 0 0 1px;
	}
	
.fc-border-separate th.fc-last,
.fc-border-separate td.fc-last {
	border-right-width: 1px;
	}
	

.fc-border-separate tr.fc-last td {
	
}
.fc-border-separate .fc-week .fc-first{
    border-left: 0;
}
.fc-border-separate .fc-week .fc-last{
    border-right: 0;
}
.fc-border-separate tr.fc-last th{
    border-bottom-width: 1px;
    border-color: #cdcdcd;
    font-size: 16px;
    font-weight: 300;
	line-height: 30px;
}
.fc-border-separate tbody tr.fc-first td,
.fc-border-separate tbody tr.fc-first th {
	border-top-width: 0;
	}
	
	

/* Month View, Basic Week View, Basic Day View
------------------------------------------------------------------------*/

.fc-grid th {
	text-align: center;
	}

.fc .fc-week-number {
	width: 22px;
	text-align: center;
	}

.fc .fc-week-number div {
	padding: 0 2px;
	}
	
.fc-grid .fc-day-number {
	float: right;
	padding: 0 2px;
	}
	
.fc-grid .fc-other-month .fc-day-number {
	opacity: 0.3;
	filter: alpha(opacity=30); /* for IE */
	/* opacity with small font can sometimes look too faded
	   might want to set the 'color' property instead
	   making day-numbers bold also fixes the problem */
	}
	
.fc-grid .fc-day-content {
	clear: both;
	padding: 2px 2px 1px; /* distance between events and day edges */
	}
	
/* event styles */
	
.fc-grid .fc-event-time {
	font-weight: bold;
	}
	
/* right-to-left */
	
.fc-rtl .fc-grid .fc-day-number {
	float: left;
	}
	
.fc-rtl .fc-grid .fc-event-time {
	float: right;
	}
	
	

/* Agenda Week View, Agenda Day View
------------------------------------------------------------------------*/

.fc-agenda table {
	border-collapse: separate;
	}
	
.fc-agenda-days th {
	text-align: center;
	}
	
.fc-agenda .fc-agenda-axis {
	width: 50px;
	padding: 0 4px;
	vertical-align: middle;
	text-align: right;
	white-space: nowrap;
	font-weight: normal;
	}

.fc-agenda .fc-week-number {
	font-weight: bold;
	}
	
.fc-agenda .fc-day-content {
	padding: 2px 2px 1px;
	}
	
/* make axis border take precedence */
	
.fc-agenda-days .fc-agenda-axis {
	border-right-width: 1px;
	}
	
.fc-agenda-days .fc-col0 {
	border-left-width: 0;
	}
	
/* all-day area */
	
.fc-agenda-allday th {
	border-width: 0 1px;
	}
	
.fc-agenda-allday .fc-day-content {
	min-height: 34px; /* TODO: doesnt work well in quirksmode */
	_height: 34px;
	}
	
/* divider (between all-day and slots) */
	
.fc-agenda-divider-inner {
	height: 2px;
	overflow: hidden;
	}
	
.fc-widget-header .fc-agenda-divider-inner {
	background: #eee;
	}
	
/* slot rows */
	
.fc-agenda-slots th {
	border-width: 1px 1px 0;
	}
	
.fc-agenda-slots td {
	border-width: 1px 0 0;
	background: none;
	}
	
.fc-agenda-slots td div {
	height: 20px;
	}
	
.fc-agenda-slots tr.fc-slot0 th,
.fc-agenda-slots tr.fc-slot0 td {
	border-top-width: 0;
	}
	
.fc-agenda-slots tr.fc-minor th.ui-widget-header {
	*border-top-style: solid; /* doesn't work with background in IE6/7 */
	}
	


/* Vertical Events
------------------------------------------------------------------------*/

.fc-event-vert {
	border-width: 0 1px;
	}

.fc-event-vert.fc-event-start {
	border-top-width: 1px;
	border-top-left-radius: 3px;
	border-top-right-radius: 3px;
	}

.fc-event-vert.fc-event-end {
	border-bottom-width: 1px;
	border-bottom-left-radius: 3px;
	border-bottom-right-radius: 3px;
	}
	
.fc-event-vert .fc-event-time {
	white-space: nowrap;
	font-size: 10px;
	}

.fc-event-vert .fc-event-inner {
	position: relative;
	z-index: 2;
	}
	
.fc-event-vert .fc-event-bg { /* makes the event lighter w/ a semi-transparent overlay  */
	position: absolute;
	z-index: 1;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #fff;
	opacity: .25;
	filter: alpha(opacity=25);
	}
	
.fc .ui-draggable-dragging .fc-event-bg, /* TODO: something nicer like .fc-opacity */
.fc-select-helper .fc-event-bg {
	display: none\9; /* for IE6/7/8. nested opacity filters while dragging don't work */
	}
	
/* resizable */
	
.fc-event-vert .ui-resizable-s {
	bottom: 0        !important; /* importants override pre jquery ui 1.7 styles */
	width: 100%      !important;
	height: 8px      !important;
	overflow: hidden !important;
	line-height: 8px !important;
	font-size: 11px  !important;
	font-family: monospace;
	text-align: center;
	cursor: s-resize;
	}
	
.fc-agenda .ui-resizable-resizing { /* TODO: better selector */
	_overflow: hidden;
	}
	
thead tr.fc-first{
    background-color: #f7f7f7;
}
table.fc-header{
    background-color: #FFFFFF;
    border-radius: 6px 6px 0 0;
}

.fc-week .fc-day > div .fc-day-number{
    font-size: 15px;
    margin: 2px;
    min-width: 19px;
    padding: 6px;
    text-align: center;
       width: 30px;
    height: 30px;
}
.fc-sun, .fc-sat{
    color: #b8b8b8;
}

.fc-week .fc-day:hover .fc-day-number{
    background-color: #B8B8B8;
    border-radius: 50%;
    color: #FFFFFF;
    transition: background-color 0.2s;
}
.fc-week .fc-day.fc-state-highlight:hover .fc-day-number{
    background-color:  #ff3b30;
}
.fc-button-today{
    border: 1px solid rgba(255,255,255,.0);
}
.fc-view-agendaDay thead tr.fc-first .fc-widget-header{
    text-align: right;
    padding-right: 10px;
}

/*!
 * FullCalendar v1.6.4 Print Stylesheet
 * Docs & License: http://arshaw.com/fullcalendar/
 * (c) 2013 Adam Shaw
 */

/*
 * Include this stylesheet on your page to get a more printer-friendly calendar.
 * When including this stylesheet, use the media='print' attribute of the <link> tag.
 * Make sure to include this stylesheet IN ADDITION to the regular fullcalendar.css.
 */
 
 
 /* Events
-----------------------------------------------------*/
 
.fc-event {
	background: #fff !important;
	color: #000 !important;
	}
	
/* for vertical events */
	
.fc-event-bg {
	display: none !important;
	}
	
.fc-event .ui-resizable-handle {
	display: none !important;
	}
	
	

	body {
	    margin-bottom: 40px;
		margin-top: 40px;
		text-align: center;
		font-size: 14px;
		font-family: 'Roboto', sans-serif;
		background:url(http://www.digiphotohub.com/wp-content/uploads/2015/09/bigstock-Abstract-Blurred-Background-Of-92820527.jpg);
		}
		
	#wrap {
	
		margin: 0 auto;
		}
		
	#external-events {
		float: left;
		width: 150px;
		padding: 0 10px;
		text-align: left;
		}
		
	#external-events h4 {
		font-size: 16px;
		margin-top: 0;
		padding-top: 1em;
		}
		
	.external-event { /* try to mimick the look of a real event */
		margin: 10px 0;
		padding: 2px 4px;
		background: #3366CC;
		color: #fff;
		font-size: .85em;
		cursor: pointer;
		}
		
	#external-events p {
		margin: 1.5em 0;
		font-size: 11px;
		color: #666;
		}
		
	#external-events p input {
		margin: 0;
		vertical-align: middle;
		}

	#calendar {
/* 		float: right; */
        margin: 0 auto;
		background-color: #FFFFFF;
		  border-radius: 6px;
        box-shadow: 0 1px 2px #C3C3C3;
		-webkit-box-shadow: 0px 0px 21px 2px rgba(0,0,0,0.18);
-moz-box-shadow: 0px 0px 21px 2px rgba(0,0,0,0.18);
box-shadow: 0px 0px 21px 2px rgba(0,0,0,0.18);
		}
    </style>      

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
           }
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
    height: 550px;
    border: 1px solid rgb(192, 189, 189);
    padding: 27px;
    border-radius: 15px;
    background: snow;
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
               
              
              
              <span class="visuallyhidden">Add</span>
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
                            <li class="list-group-item"><a href="admin_add_employee.jsp">회원추가</a></li>
                            <li class="list-group-item"><a href="admin_board_employee.jsp">회원목록</a></li>
                            <li class="list-group-item"><a href="admin_board_list.jsp">게시글 관리</a></li>
                            <li class="list-group-item"><a href="admin_foodlist.jsp">식단관리</a></li>
                            </ul>
                </div>                    
        </div><br>                            
                  <div class="page-content">
                 		<form action="/Semi/madd.em">
                      <div id=namearea> 회원 추가하기 
                        <table cellspacing='1' cellpadding='0' class="table table-bordered" style="margin: auto; text-align: center;">
                         
                         	<tr>
                         	<img src='http://cafefiles.naver.net/20160207_240/faini0605_1454771377816gIOrs_PNG/temp_1454771344361.-647037276.png'  width='120' class='ti' >
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
                              <!-- <td colspan='4' style='font-size:12px;'>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;생년월일
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  &nbsp;&nbsp;<input type="text" style="width: 70px;">년
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" style="width: 50px;">월
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" style="width: 50px;">일생
                                  &nbsp;&nbsp;&nbsp;&nbsp;
                              </td> -->
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
                
                <script>
                console.log(document.getElementsByTagName('td')[5]);
                </script>
              </div>
           </div>
          </div>
          <footer class="mdl-mega-footer" style="text-align: center; ">
            <div class="mdl-mega-footer--middle-section">
              <div class="mdl-mega-footer--drop-down-section" style="    position: relative;
              left: 655px;">
            
                <!--하단바 컨텐츠 -->
               
           
                <ul id=info style="list-style: none;">
                    <h4 style="font-weight: 700; font-style: normal;">Company Information</h4>
                  <li>상호 : 주식회사 T&H Company</li>
                  <li>주소 : 경기도 성남시 수정구 태평동 5380 501호</li>
                  <li>대표자 : 문태환 Moon Tae Hwan</li>
                  <li>사업자 등록번호 : 111 - 39 - 33140</li>
                  <li>Tel : 033-552-7517 / 010-8634-7517</li>
                  <li>E-Mail : itmoon@kakao.com</li>
              
                </ul>
     
              </div>
            
            </div>
            <div class="mdl-mega-footer--bottom-section">
              <div class="mdl-logo">
                More Information
              </div>
              <ul class="mdl-mega-footer--link-list">
                <li><a href="https://developers.google.com/web/starter-kit/">Web Starter Kit</a></li>
                <li><a href="#">Help</a></li>
                <li><a href="#">Privacy and Terms</a></li>
              </ul>
            </div>
          </footer>
            

>>>>>>> branch 'master' of https://github.com/khmooon/semi.git
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