<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.board.model.vo.*"%>
<%@ page import=" com.member.model.vo.*" %>
<% 
   Member m = (Member)session.getAttribute("member");
   Board b = (Board)request.getAttribute("Board");
%>

<!doctype html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>게시판 메인</title>

	<script src="<%= request.getContextPath() %>/resource/js/jquery-3.4.1.min.js"></script>
	
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
              <img src="../resource/images/로고1.png" id="logo">
            </div>
            <div class="mdl-layout--large-screen-only mdl-layout__header-row">
            </div>
            <div class="mdl-layout__tab-bar mdl-js-ripple-effect mdl-color--primary-dark">
              <a href="mainpage.jsp" class="mdl-layout__tab">홈</a>
              <a class="mdl-layout__tab" onclick="goNotice()">공지사항</a>
              <a class="mdl-layout__tab" onclick="goBoard()">게시판</a>
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
                        <li class="list-group-item"><a onclick="goNotice();">전체공지 게시판</a></li>
                        <li class="list-group-item"><a href="border(department).jsp">부서별 게시판</a></li>
                        <li class="list-group-item"><a href="border(community).jsp">사내 커뮤니티 게시판</a></li>
                        <li class="list-group-item"><a href="border(Investigation).jsp">사내 경조사 게시판</a></li>
                        <li class="list-group-item"><a href="border(change dept).jsp">인사발령 게시판</a></li>
                        </ul>
                    </div>                    
            </div><br>            
            <div class="center">     
                <div class="container">

                    <div class="row">                                
            			 
                            <table class="table table-striped"
            
                                style="text-align: center; border: 1px solid #dddddd">
            
                                <thead>
            
                                    <tr>
            
                                        <th colspan="2"
            
                                            style="background-color: #eeeeee; text-align: center;">공지사항 내용</th>
            
                                    </tr>
            
                                </thead>
            
                                <tbody>
            
                                    <tr>
            						
                                        <td><input type="text" class="form-control" value="<%= b.getBtitle() %>" name="title" maxlength="50" readonly/></td>
            
                                    </tr>
                                    <tr>
            
                                        <td><input type="text" value="<%= b.getBwriter() %>" class="form-control" placeholder="작성자" name="writer" maxlength="50" readonly/></td>
            
                                    </tr>
                                    <tr>
                                        <td><input type="text" class="form-control" value="<%= b.getBdate() %>" name="date" maxlength="10" readonly/>
                                         </td>        
            
                                    </tr>
            
                                    <tr>
            							<td><input type="text" class="form-control" style="height: 380px;" value="<%=b.getBcontent() %>" readonly/>
            							</td>                                                                                
            
                                    </tr>

                                   
            
                                </tbody>
            
                            </table>	
            				<% if( m != null && m.getEmpId().equals("admin")) { %>
                            <input type="submit" class="btn btn-primary pull-right" value="수정하기" onclick="goUpdate();" />
                            <% } %>
                            <input type="submit" class="btn btn-primary pull-right" value="메뉴로 돌아가기" onclick="back();" />
                            
            				
                        
            
                    </div>
            
                </div>                   
            </div>
            <div class="centerlow">

              <a onclick="writeOpen();" class="btn btn-default btn-primary pull-right">글쓰기</a>
               <script>
                function writeOpen(){ //메세지창 열기
                  window.open(location.href="views/Board/BoardInsert.jsp",'글쓰기','width=1280px,height=960px');
                }
                
                function back(){
                	location.href="selectList.bo";
                }
                
                function goUpdate(){
                	location.href="bUpView.bo?bno=<%=b.getBno()%>";
                }
                
                function goNotice(){
            		location.href="/Semi/selectList.no";
            	}
                function goBoard(){
            		location.href="/Semi/selectList.bo";
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
            
            $(function(){
    			
    			$("#listArea td").mouseenter(function(){
    				$(this).parent().css({"background":"darkgray", "cursor":"pointer"});
    			}).mouseout(function(){
    				$(this).parent().css({"background":"black"});
    			}).click(function(){
    				//console.log($(this).parent().children().eq(0).text());
    				var nno = $(this).parent().children().eq(0).text();
    				location.href="<%=request.getContextPath()%>/selectOne.no?nno=" + nno;
    			});
    		});
    		
    		function search(){
    			location.href="<%=request.getContextPath()%>/searchNotice.no?con="+$('#searchCondition').val()+"&keyword="+$('#keyword').val();
    		}
            </script>
            
</body>
</html>