<%@page import="com.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%
//	Member m = (Member)session.getAttribute("member");
	 // session.setMaxInactiveInterval(1000);
	%>
<!doctype html>

<html lang="en">
  <head>
    
    <meta charset="utf-8">
    
    <meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>메인 페이지</title>

    <!-- 게시판 부트스트랩 cnd-->
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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/views/css/mainstyles.css">
	
	<!-- 정리한 JS -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/views/js/newMainpage.js" charset="utf-8"></script>
	<!-- 정리한 JS -->
	<!-- 정리한 CSS -->
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/views/css/newMainpage.css">
	<!-- 정리한 CSS -->
	
</head>

 <body>
	 
    <body class="mdl-demo mdl-color--grey-100 mdl-color-text--grey-700 mdl-base">
        <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
         
         <!-- 공유한 해더 심음. -->
         <%@ include file="/views/common/header.jsp" %>
         <!-- 공유한 해더 심음. -->
         
          <main class="mdl-layout__content">
          <div class="mdl-layout__tab-panel is-active" id="overview">
            
            <div class="main">
            <div class="article left">
              <div class="profile">
                <img class="myphoto" src="../resource/images/자바로고.png" alt="">
                <p class="name" style="left: 143.58px;"><%=m.getEmpName() %></p>
                <p class="title">영업부 사원</p>
                <p class="todaycheck"> º 오늘의 일정 : <sapn>0 건</sapn></p>
                <p class="todaycheck1"> º 오늘 근무현황 : <span>휴가</span></p>
              </div> <br>
              <div class="check">

                <p class="checkpaper">※전자결제 알림창</p><hr><br><br>
                <ul class="checklist">
                  <li>º 미확인 서류 : <span>0건</span></li><br>
                  <li>º 결제진행중 서류 : <span>0건</span></li><br>
                  <li>º 결제완료 서류 : <span>0건</span></li><br>
                  <li>º 임시저장 서류 : <span>0건</span></li>
                </ul>
              </div><br><br>
                <div class="foodlist" align="center" style="font-size: 15px; font-weight: 30px;"><br> 
                  <label style="  
                  position: relative;
                  top: -5px;
                  left: -87px;
                  font-weight: 900;
                  font-size: 20px;
                  line-height: 46px;
                  letter-spacing: 0.04em;
                  color: #000000;">※사내 식당 메뉴</label><hr>
                  <table  id="foodtable"class="table table-striped" style="border: 1px solid black;">
                  <thead>
                    <tr>
                      <th>날짜</th>
                      <th colspan="3">메뉴</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr >
                      <td >2010-01-10</td >
                      <td><span>콩밥</span></td>
                      <td>콩나물국</td>
                      <td>콩나물 무침</td>
                    </tr>
                    <tr>
                      <td>2010-01-11</td>
                      <td><span>콩밥  -</span></td>
                      <td>콩나물국  -</td>
                      <td>콩나물 무침</td>
                    </tr>
                    <tr>
                      <td>2010-01-12</td>
                      <td><span>콩밥  -</span></td>
                      <td>콩나물국  -</td>
                      <td>콩나물 무침</td>
                    </tr>
                    <tr>
                      <td>2010-01-13</td>
                      <td><span>콩밥  -</span></td>
                      <td>콩나물국  -</td>
                      <td>콩나물 무침</td>
                    </tr>
                    <tr>
                      <td>2010-01-14</td>
                      <td><span>콩밥  -</span></td>
                      <td>콩나물국  -</td>
                      <td>콩나물 무침</td>
                    </tr>
                    <tr>
                      <td>2010-01-15</td>
                      <td><span>콩밥  -</span></td>
                      <td>콩나물국  -</td>
                      <td>콩나물 무침</td>
                    </tr>
                    <tr>
                      <td>2010-01-16</td>
                      <td><span>콩밥  -</span></td>
                      <td>콩나물국  -</td>
                      <td>콩나물 무침</td>
                    </tr>
                  </tbody>
                </table>
                </div>
            </div>
          <div class="article center">
            <div class="non"> <!--메인-->
              <div id='wrap'>
                  <div id='calendar'></div>
                  <div style='clear:both'></div>
                  </div>
            </div> 
            
            <div class="board"> <p style=" font-weight: 900;
                font-size: 20px;
                line-height: 46px;
                letter-spacing: 0.04em;
                color: #000000;">※ 사내 전체공지</p>
                 <a style="padding-right: 670px;" href="">+더보기</a>
               <table id="boardtable" class="table table-hover"><hr>
                <thead>
                  <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>날짜</th>
                    <th>조회수</th>
                  </tr>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td><a href="">첫번쨰 게시물</a></td>
                      <td>문태환</td>
                      <td>2020-01-10</td>
                      <td>1</td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td><a href="">첫번쨰 게시물</a></td>
                      <td>문태환</td>
                      <td>2020-01-10</td>
                      <td>2</td>
                    </tr>
                    <tr>
                      <td>3</td>
                      <td><a href="">첫번쨰 게시물</a></td>
                      <td>문태환</td>
                      <td>2020-01-10</td>
                      <td>2</td>
                    </tr>
                    <tr>
                      <td>4</td>
                      <td><a href="">첫번쨰 게시물</a></td>
                      <td>문태환</td>
                      <td>2020-01-10</td>
                      <td>2</td>
                    </tr> 
                    <tr>
                      <td>5</td>
                      <td><a href="">첫번쨰 게시물</a></td>
                      <td>문태환</td>
                      <td>2020-01-10</td>
                      <td>2</td>
                    </tr>
                  </tr>
                   <tr>
                    <td>6</td>
                    <td><a href="">첫번쨰 게시물</a></td>
                    <td>문태환</td>
                    <td>2020-01-10</td>
                    <td>2</td>
                  </tr>
                   <tr>
                    <td>7</td>
                    <td><a href="">첫번쨰 게시물</a></td>
                    <td>문태환</td>
                    <td>2020-01-10</td>
                    <td>2</td>
                  </tr>
                   <tr>
                    <td>8</td>
                    <td><a href="">첫번쨰 게시물</a></td>
                    <td>문태환</td>
                    <td>2020-01-10</td>
                    <td>2</td>
                  </tr>
                   <tr>
                    <td>9</td>
                    <td><a href="">첫번쨰 게시물</a></td>
                    <td>문태환</td>
                    <td>2020-01-10</td>
                    <td>2</td>
                  </tr>
                   <tr>
                    <td>10</td>
                    <td><a href="">첫번쨰 게시물</a></td>
                    <td>문태환</td>
                    <td>2020-01-10</td>
                    <td>2</td>
                  </tr>
                   <tr>
                    <td>11</td>
                    <td><a href="">첫번쨰 게시물</a></td>
                    <td>문태환</td>
                    <td>2020-01-10</td>
                    <td>2</td>
                  </tr>
                  </tbody>
                </thead>
               </table> 
              </div> <br>
          </div>
          <div class="article right">

            <div id="chat" style="overflow:auto; text-align:left;" >
            </div>  <br>
              <input type="text" id="chattext">
                <input type="button" id="chatbutton" value="전송" onclick="chat();" >
           
            <script>
               function chat(){
                var name = "user1"
                 var chattext = document.getElementById('chattext');
                 var chat = document.getElementById('chat');
                 var D = new Date();

                 chat.innerHTML += "<span class='mdl-chip mdl-chip--contact'>"+
                "<span class='mdl-chip__contact mdl-color--teal mdl-color-text--white'><font size=2>사원이름</font></span>"+
                "<span class='mdl-chip__text'>"+chattext.value+"</span>"+
                "</span><sub>" + AMPM(D)+D.getHours() + ":" + D.getMinutes()+"</sub><br>";
                chat.scrollTop = chat.scrollHeight;
                chattext.value="";
               } 

function AMPM(D){
   var ampm = D.getHours() < 12 ?"오전" : "오후";

    return ampm;
}
            </script>
           
             <div class="emergency">
                <div class="container">
                    <div class="row">
                      
                            <div id="card" class="weater">
                                <div class="city-selected">
                                    <article>
            
                                        <div class="info">
                                            <div class="city" style="height: 85px; color: black; padding: 15px;" ><span style=" color: black; font-size: 40px;">City : </span> 
                                                <!-- 도시이름 -->
                                                <span id="cityName" style="color: black; font-size: 40px;"></span> 
                                                <!-- 도시이름 -->
                                            </div>
                                            <div class="temp">
                                                <!-- 온도 -->
                                                <span id="cityTemp" style="font-size: 80px;
                                                color: black;"> </span><span style="color:black;">°</span> 
                                                <!-- 온도 -->
                                            </div>	
                                            <div class="weather" style="font-size: 35px; padding: 20px;"><span style="font-size: 40px;"></span></div>
                                                <!--날씨-->
                                                <span id="cityWeather" style="font-size: 40px;
                                                color: black;"></span>
                                                <!--날씨-->
                                            <div class="Time">
                                                <div id="realTime"></div>
                                            </div>
                                        </div>
            
                                          </div>
            
                                    </article>
                                    
                                </div>
                            
                        </div>
                    </div>
                </div>

                <!-- 날씨 넣기 지도 넣고 옆에 회사 위치 날씨 정보 집어 넣기 모자라다 싶으면 
                수도권 날씨 셀렉트 옵션으로 집어넣기 -->
            </div> 
         </div>
        </div> 
          </div>
            <footer class="mdl-mega-footer" >
                <div class="mdl-mega-footer--middle-section">
                  <div class="mdl-mega-footer--drop-down-section" style="    position: relative;
                  left: 655px;">
                
                    <!--하단바 컨텐츠 -->
                   
               
                    <ul id=info>
                        <h4 style="font-weight: 700">Company Information</h4>
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
                    <li><a href="">Web Starter Kit</a></li>
                    <li><a href="#">Privacy and Terms</a></li>
                   <%if(m.getEmpId().equals("admin")){ %>
                    <li><a onclick="admin()">관리자메뉴</a></li>
                    <%} %>
                  </ul>
    
                </div>
    			 <script >
        			function admin() {
        			location.href="/Semi/mList.em";
        				
					}	
		       	 </script>
    
              </footer>
            </main>
	
<form action="/Semi/msglist.do" name="msgfrm" id="msgfrm" >
	 <input name=emp_no type=hidden value=<%=m.getEmpNo()%>>
</form>
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
        window.open('/Semi/msglist.do?emp_no=<%=m.getEmpNo()%>','메세지함','width=1280px,height=960px');

      }
            </script>
</body>
</html>