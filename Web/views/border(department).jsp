<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>부서별 게시판</title>


    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="images/android-desktop.png">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Material Design Lite">
    <link rel="apple-touch-icon-precomposed" href="images/ios-desktop.png">

    <meta name="msapplication-TileImage" content="images/touch/ms-touch-icon-144x144-precomposed.png">
    <meta name="msapplication-TileColor" content="#3372DF">

    <link rel="shortcut icon" href="images/favicon.png">

  
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.deep_purple-pink.min.css">
    <link rel="stylesheet" href="./css/styles.css">

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    

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

    .main{ position: relative; height: 1000px; padding: 20px;}

    .left{width: 300px; height: 1000px;}

    .center{width: 1150px; height: 800px; border: 1px solid lightgray; position: absolute; left: 350px; top: 21px;}

    .centerlow{width: 1150px; height: 170px; position: absolute; left: 350px; top: 850px;}
    
    

        /* WHAT YOU NEED */
    .fading-side-menu.affix-top {
        opacity: 1;
        transition: opacity 1s
    }
    .fading-side-menu.affix {
        top: 11.5px;
    }
    .fading-side-menu.affix {
        opacity: 0.2;
        transition: opacity 5s
    }
    .fading-side-menu.affix:hover {
        opacity: 1;
        transition: opacity 0.3s
    }
    /* RECOMMENDED STYLING BUT NOT REQUIRED */
    .fading-side-menu a {
        color: rgb(102, 102, 102);
    }
    .fading-side-menu a .fa {
        padding-right:15px;
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

        /* 게시판 리스트 목록 */
    .sub_news,.sub_news th,.sub_news td{border:0}
    .sub_news a{color:#383838;text-decoration:none}
    .sub_news{width:100%;border-bottom:1px solid #999;color:#666;font-size:12px;table-layout:fixed}
    .sub_news caption{display:none}
    .sub_news th{padding:5px 0 6px;border-top:solid 1px #999;border-bottom:solid 1px #b2b2b2;background-color:#f1f1f4;color:#333;font-weight:bold;line-height:20px;vertical-align:top}
    .sub_news td{padding:8px 0 9px;border-bottom:solid 1px #d2d2d2;text-align:center;line-height:18px;}
    .sub_news .date,.sub_news .hit{padding:0;font-family:Tahoma;font-size:11px;line-height:normal}
    .sub_news .title{text-align:left; padding-left:15px; font-size:13px;}
    .sub_news .title .pic,.sub_news .title .new{margin:0 0 2px;vertical-align:middle}
    .sub_news .title a.comment{padding:0;background:none;color:#f00;font-size:12px;font-weight:bold}
    .sub_news tr.reply .title a{padding-left:16px;background:url(첨부파일/ic_reply.png) 0 1px no-repeat}
    /* //게시판 리스트 목록 */
    .list-group-item{
      margin-bottom: 20px;
      border: 0px;
      padding-left: 50px;
    }
    .list-group-item a{
      color : black;
    }
    </style>
   
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
          <main class="mdl-layout__content">
          <div class="mdl-layout__tab-panel is-active" id="overview">
            
         <div class="main">      
                <div class="left">
                    <!-- 사이드 바 메뉴-->
                    <!-- 패널 타이틀1 -->
                    <div class="panel panel-info">
                      <div class="panel-heading" style=" padding: 20px;" >
                        <h3 class="panel-title" style="font-size: 20px;
                        font-weight: 900;">게시판</h3>
                        </div>
                        <!-- 사이드바 메뉴목록1 -->
                        <ul class="list-group">
                          <li class="list-group-item"><a href="border(total).jsp">전체공지 게시판</a></li>
                          <li class="list-group-item"><a href="border(department).jsp">부서별 게시판</a></li>
                          <li class="list-group-item"><a href="border(community).jsp">사내 커뮤니티 게시판</a></li>
                          <li class="list-group-item"><a href="border(Investigation).jsp">사내 경조사 게시판</a></li>
                          <li class="list-group-item"><a href="border(change dept).jsp">인사발령 게시판</a></li>
                        </ul>
                    </div>                    
            </div><br>            
            <div class="center">     
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>날짜</th>
                            <th>조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td><a onclick="viewOpen();">1월 14일 부서별 공지사항 입니다.</a></td> 
                            <td>관리자</td>
                            <td>2020.1.11</td>
                            <td>5</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td><a onclick="viewOpen();">1월 15일 부서별 공지사항 입니다.</a></td>
                            <td>관리자</td>
                            <td>2020.1.11</td>
                            <td>5</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td><a onclick="viewOpen();">1월 16일 부서별 공지사항 입니다.</a></td>
                            <td>관리자</td>
                            <td>2020.1.11</td>
                            <td>5</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td><a onclick="viewOpen();">1월 17일 부서별 공지사항 입니다.</a></td>
                            <td>관리자</td>
                            <td>2020.1.11</td>
                            <td>5</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td><a onclick="viewOpen();">1월 18일 부서별 공지사항 입니다.</a></td>
                            <td>관리자</td>
                            <td>2020.1.11</td>
                            <td>5</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td><a onclick="viewOpen();">1월 19일 부서별 공지사항 입니다.</a></td>
                            <td>관리자</td>
                            <td>2020.1.11</td>
                            <td>5</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td><a onclick="viewOpen();">1월 20일 부서별 공지사항 입니다.</a></td>
                            <td>관리자</td>
                            <td>2020.1.11</td>
                            <td>5</td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td><a onclick="viewOpen();">1월 21일 부서별 공지사항 입니다.</a></td>
                            <td>관리자</td>
                            <td>2020.1.11</td>
                            <td>5</td>
                        </tr>
                        <tr>                            
                            <td>9</td>
                            <td><a onclick="viewOpen();">1월 22일 부서별 공지사항 입니다.</a></td>
                            <td>관리자</td>
                            <td>2020.1.11</td>
                            <td>5</td>
                        </tr>
                        <tr>                            
                            <td>10</td>
                            <td><a onclick="viewOpen();">1월 23일 부서별 공지사항 입니다.</a></td>
                            <td>관리자</td>
                            <td>2020.1.11</td>
                            <td>5</td>
                        </tr>
                        <tr>
                          <td>11</td>
                          <td><a onclick="viewOpen();">1월 24일 부서별 공지사항 입니다.</a></td> 
                          <td>관리자</td>
                          <td>2020.1.11</td>
                          <td>5</td>
                      </tr>
                      <tr>
                          <td>12</td>
                          <td><a onclick="viewOpen();">1월 25일 부서별 공지사항 입니다.</a></td>
                          <td>관리자</td>
                          <td>2020.1.11</td>
                          <td>5</td>
                      </tr>
                      <tr>
                          <td>13</td>
                          <td><a onclick="viewOpen();">1월 26일 부서별 공지사항 입니다.</a></td>
                          <td>관리자</td>
                          <td>2020.1.11</td>
                          <td>5</td>
                      </tr>
                      <tr>
                          <td>14</td>
                          <td><a onclick="viewOpen();">1월 27일 부서별 공지사항 입니다.</a></td>
                          <td>관리자</td>
                          <td>2020.1.11</td>
                          <td>5</td>
                      </tr>
                      <tr>
                          <td>15</td>
                          <td><a onclick="viewOpen();">1월 28일 부서별 공지사항 입니다.</a></td>
                          <td>관리자</td>
                          <td>2020.1.11</td>
                          <td>5</td>
                      </tr>
                      <tr>
                          <td>16</td>
                          <td><a onclick="viewOpen();">1월 29일 부서별 공지사항 입니다.</a></td>
                          <td>관리자</td>
                          <td>2020.1.11</td>
                          <td>5</td>
                      </tr>
                      <tr>
                          <td>17</td>
                          <td><a onclick="viewOpen();">1월 30일 부서별 공지사항 입니다.</a></td>
                          <td>관리자</td>
                          <td>2020.1.11</td>
                          <td>5</td>
                      </tr>
                      <tr>
                          <td>18</td>
                          <td><a onclick="viewOpen();">1월 31일 부서별 공지사항 입니다.</a></td>
                          <td>관리자</td>
                          <td>2020.1.11</td>
                          <td>5</td>
                      </tr>
                      <tr>                            
                          <td>19</td>
                          <td><a onclick="viewOpen();">2월 1일 부서별 공지사항 입니다.</a></td>
                          <td>관리자</td>
                          <td>2020.1.11</td>
                          <td>5</td>
                      </tr>
                      <tr>                            
                          <td>20</td>
                          <td><a onclick="viewOpen();">2월 2일 부서별 공지사항 입니다.</a></td>
                          <td>관리자</td>
                          <td>2020.1.11</td>
                          <td>5</td>
                      </tr>
                    </tbody>
                </table>                    
            </div>
            <div class="centerlow">

                <a onclick="writeOpen();" class="btn btn-default btn-primary pull-right">글쓰기</a>
               <script>
                function writeOpen(){ //메세지창 열기
                  window.open('border(write).html','글쓰기','width=1280px,height=960px');
                }

                function viewOpen(){
                  window.open('border(detail).html','상세보기','width=1280px,height=960px');
                }
                      </script>
                <div class="text-center">
                    <ul class="pagination">
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

              // checkbox 모두 체크만들기 
            $(document).ready(function(){
                $('.checkAll').click(function(){
    
                    if($(".checkAll").prop("checked")){
                        $(".chkbox").prop("checked",true);
                    }else{
                        $(".chkbox").prop("checked",false);
                    }
                });
            });
            function MessageOpen(){ //메세지창 열기
        window.open('message.html','메세지함','width=1280px,height=960px');
      }
            </script>
            
</body>
</html>