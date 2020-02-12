<%@page import="com.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    Member m = (Member)session.getAttribute("member");
    	%>

<!doctype html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>관리자 게시판</title>


    <meta name="mobile-web-app-capable" content="yes">
    <!-- <link rel="icon" sizes="192x192" href="images/android-desktop.png"> -->

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Material Design Lite">
    <!-- <link rel="apple-touch-icon-precomposed" href="images/ios-desktop.png"> -->

    <!-- <meta name="msapplication-TileImage" content="images/touch/ms-touch-icon-144x144-precomposed.png"> -->
    <meta name="msapplication-TileColor" content="#3372DF">

    <!-- <link rel="shortcut icon" href="images/favicon.png"> -->

   

    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.deep_purple-pink.min.css">
    <link rel="stylesheet" href="./css/styles.css">

    <!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script> -->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>

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

    .main{ position: relative; height: 1135px; padding: 20px;}

    .side-bar{width: 300px; height: 1000px;}

    .page-content{width: 1150px; height: 800px;  position: absolute; left: 350px; top: 0px;}

    .centerlow{width: 1150px; height: 170px; position: absolute; left: 350px; top: 850px;}
    
    

    

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

    
    table td{
      font-size: 13px;
     padding-left: 100px;
    }
    th{
      font-size: 13px;
      padding-left: 100px;
    }
    table{
      padding-left: 100px;
    }
    .list-group-item{
      margin-bottom: 20px;
      border: 0px;
      padding-left: 50px;
    }
    .list-group-item a{
      color : black;
    }
    </style>
 
 <script>
         $(function(){
          $('#adminlist').find('a').attr('href','./border(detail).html').css('color','black');
         
         });   
         function windowopen(){

          window.open('border(detail_admin).html');

}                                 
</script>
</head>

<body>
    <body class="mdl-demo mdl-color--grey-100 mdl-color-text--grey-700 mdl-base">
        <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
          <header class="mdl-layout__header mdl-layout__header--scroll mdl-color--primary">
            <div class="mdl-layout--large-screen-only mdl-layout__header-row">
            </div>
            <div class="mdl-layout--large-screen-only mdl-layout__header-row" id="top">
       <img src="../resource/images/로고1.png" id="logo">
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
               <!--사이드바-->
              <script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
                
              <!-- Material Design icon font -->
              <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
              <!--사이드바-->                           
                <span class="visuallyhidden">Add</span>
              </button>
            </div>
          </header>
          <main class="mdl-layout__content">
          <div class="mdl-layout__tab-panel is-active" id="overview">
            
         <div class="main">      
                <div class="left">
                    <!-- 사이드 바 메뉴-->
                    <!-- 패널 타이틀1 -->
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
                            <li class="list-group-item"><a href="admin_add_user.jsp">회원추가</a></li>
                            <li class="list-group-item"><a href="admin_board_employee.jsp">회원목록</a></li>
                            <li class="list-group-item"><a href="admin_board_list.jsp">게시글 관리</a></li>
                            <li class="list-group-item"><a href="admin_foodlist.jsp">식단관리</a></li>
                            </ul>
                        </div>                    
                </div><br>                          
                      
                        <div class="page-content"><!-- Your content goes here -->
                          <table id="adminlist"  class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
                            <thead>
                              <tr>
                                <th style="font-size: 15px;" class="mdl-data-table__cell--non-numeric">번호</th>
                                <th style="font-size: 15px; text-align: center;" >제목</th>
                                <th style="font-size: 15px;">작성자</th>
                                <th style="font-size: 15px;">날짜</th>
                                <th style="font-size: 15px;">조회수</th>  
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td class="mdl-data-table__cell--non-numeric">1</td>
                                <td><a>게시물 제목제목</a></td> 
                                <td>관리자</td>
                                <td>2020.1.11</td>
                                <td>5</td>
                                <td><button onclick="windowopen();" class="mdl-button mdl-js-button mdl-button--raised">
                                  수정
                                </button></td>
                            </tr>
                            <tr>
                                <td class="mdl-data-table__cell--non-numeric">2</td>
                                <td><a href="">게시물 제목제목</a></td>
                                <td>관리자</td>
                                <td>2020.1.11</td>
                                <td>5</td>
                                <td><button class="mdl-button mdl-js-button mdl-button--raised">
                                  수정
                                </button></td>
                            </tr>
                            <tr>
                                <td class="mdl-data-table__cell--non-numeric">3</td>
                                <td><a href="">게시물 제목제목</a></td>
                                <td>관리자</td>
                                <td>2020.1.11</td>
                                <td>5</td>
                                <td><button class="mdl-button mdl-js-button mdl-button--raised">
                                  수정
                                </button></td>
                            </tr>
                            <tr>
                                <td class="mdl-data-table__cell--non-numeric">4</td>
                                <td><a href="">게시물 제목제목</a></td>
                                <td>관리자</td>
                                <td>2020.1.11</td>
                                <td>5</td>
                                <td><button class="mdl-button mdl-js-button mdl-button--raised">
                                  수정
                                </button></td>
                            </tr>
                            <tr>
                                <td class="mdl-data-table__cell--non-numeric">5</td>
                                <td><a href="">게시물 제목제목</a></td>
                                <td>관리자</td>
                                <td>2020.1.11</td>
                                <td>5</td>
                                <td><button class="mdl-button mdl-js-button mdl-button--raised">
                                  수정
                                </button></td>
                            </tr>
                            <tr>
                                <td class="mdl-data-table__cell--non-numeric">6</td>
                                <td><a href="">게시물 제목제목</a></td>
                                <td>관리자</td>
                                <td>2020.1.11</td>
                                <td>5</td>
                                <td><button class="mdl-button mdl-js-button mdl-button--raised">
                                  수정
                                </button></td>
                            </tr>
                            <tr>
                                <td class="mdl-data-table__cell--non-numeric">7</td>
                                <td><a href="">게시물 제목제목</a></td>
                                <td>관리자</td>
                                <td>2020.1.11</td>
                                <td>5</td>
                                <td><button class="mdl-button mdl-js-button mdl-button--raised">
                                  수정
                                </button></td>
                            </tr>
                            <tr>
                                <td class="mdl-data-table__cell--non-numeric">8</td>
                                <td><a href="">게시물 제목제목</a></td>
                                <td>관리자</td>
                                <td>2020.1.11</td>
                                <td>5</td>
                                <td><button class="mdl-button mdl-js-button mdl-button--raised">
                                  수정
                                </button></td>
                            </tr>
                            <tr>                            
                                <td class="mdl-data-table__cell--non-numeric">9</td>
                                <td><a href="">게시물 제목제목</a></td>
                                <td>관리자</td>
                                <td>2020.1.11</td>
                                <td>5</td>
                                <td><button class="mdl-button mdl-js-button mdl-button--raised">
                                  수정
                                </button></td>
                            </tr>
                            <tr>                            
                                <td class="mdl-data-table__cell--non-numeric">10</td>
                                <td><a href="">게시물 제목제목</a></td>
                                <td>관리자</td>
                                <td>2020.1.11</td>
                                <td>5</td>
                                <td><button class="mdl-button mdl-js-button mdl-button--raised">
                                  수정
                                </button></td>
                            </tr>
                            <tr>
                              <td class="mdl-data-table__cell--non-numeric">1</td>
                              <td><a href="">게시물 제목제목</a></td> 
                              <td>관리자</td>
                              <td>2020.1.11</td>
                              <td>5</td>
                              <td><button class="mdl-button mdl-js-button mdl-button--raised">
                                수정
                              </button></td>
                          </tr>
                          <tr>
                              <td class="mdl-data-table__cell--non-numeric">2</td>
                              <td><a href="">게시물 제목제목</a></td>
                              <td>관리자</td>
                              <td>2020.1.11</td>
                              <td>5</td>
                              <td><button class="mdl-button mdl-js-button mdl-button--raised">
                                수정
                              </button></td>
                          </tr>
                          <tr>
                              <td class="mdl-data-table__cell--non-numeric">3</td>
                              <td><a href="">게시물 제목제목</a></td>
                              <td>관리자</td>
                              <td>2020.1.11</td>
                              <td>5</td>
                              <td><button class="mdl-button mdl-js-button mdl-button--raised">
                                수정
                              </button></td>
                          </tr>
                          <tr>
                              <td class="mdl-data-table__cell--non-numeric">4</td>
                              <td><a href="">게시물 제목제목</a></td>
                              <td>관리자</td>
                              <td>2020.1.11</td>
                              <td>5</td>
                              <td><button class="mdl-button mdl-js-button mdl-button--raised">
                                수정
                              </button></td>
                          </tr>
                          <tr>
                              <td class="mdl-data-table__cell--non-numeric">5</td>
                              <td><a href="">게시물 제목제목</a></td>
                              <td>관리자</td>
                              <td>2020.1.11</td>
                              <td>5</td>
                              <td><button class="mdl-button mdl-js-button mdl-button--raised">
                                수정
                              </button></td>
                          </tr>
                         
                            </tbody>
                          </table>
                          
                        
                          
                          <div class="text-center" style="position: relative;
                          left: 515px;"> 
                            <ul class="pagination" style="position: relative;
                            right: 515px;">
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                            </ul>
                            </div>
                            <div id="searchForm" class="text-center">
                              <form>
                                  <select name="opt">
                                      <option value="0">제목</option>
                                      <option value="1">내용</option>
                                      <option value="2">제목+내용</option>
                                      <option value="3">글쓴이</option>
                                  </select>
                                  <input type="text" size="20" name="condition"/>&nbsp;
                                  <a class="btn btn-default btn-primary">검색</a>
                              </form>    
                          </div>
                          <a style="position: relative;right: 35px;
                          bottom: 35px;" class="btn btn-default btn-primary pull-right" onclick="del();">선택항목삭제</a>
                        </div>
                      
                      
                    </div>                  
            </div><br>            
              
              <script>
                function del(){
                  confirm("선택 항목을 삭제 하시겠습니까?")
                }

                // console.log(document.getElementsByTagName('td'));
                td = document.getElementsByTagName('td')
                for(var i=1;i<16;i++){
                
                  td[(6*i)-5].style = "padding-right:480px; text-align:left;"
              
                  function windowopen(){

                      window.open('border(detail_admin).html');

                  }       
                }
               </script>
            
            <div class="centerlow">

               
            </div>         
        </div>   
        </div>
      <%@ include file="./common/footer.jsp" %>
            </main>

            <script>
              window.onfocus=function(){
              }
              window.onload=function(){
              window.focus(); // 현재 window 즉 익스플러러를 윈도우 최상단에 위치
              window.moveTo(0,0); // 웹 페이지의 창 위치를 0,0 (왼쪽 최상단) 으로 고정
              window.resizeTo(1280,800); // 웹페이지의 크기를 가로 1280 , 세로 800 으로 고정(확장 및 축소)
              window.scrollTo(0,250); // 페이지 상단 광고를 바로 볼 수 있게 스크롤 위치를 조정
              };
              function MessageOpen(){ //메세지창 열기
        window.open('message.html','메세지함','width=1280px,height=960px');
      }
             
            </script>
            
</body>
</html>