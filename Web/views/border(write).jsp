<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
    pageEncoding="UTF-8" import="java.util.*, com.board.model.vo.*, com.member.model.vo.*"%>
<% Member m = (Member)session.getAttribute("member"); %>
<!doctype html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>ê²ìí ë©ì¸</title>


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
    <link rel="stylesheet" href="../semi/css/styles.css">

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- Bootstrap CSS -->

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

    <!-- include summernote css/js-->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
    

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

    .main{ position: relative; height: 1600px; padding: 20px;}

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
              <img src="../resource/images/ìë°ë¡ê³ .png" id="logo">
            </div>
            <div class="mdl-layout--large-screen-only mdl-layout__header-row">
            </div>
            <div class="mdl-layout__tab-bar mdl-js-ripple-effect mdl-color--primary-dark">
              <a href="#overview" class="mdl-layout__tab">í</a>
              <a href="#features" class="mdl-layout__tab">ê²ìí</a>
              <a href="#features" class="mdl-layout__tab">ì£¼ìë¡</a>
              <a href="#features" class="mdl-layout__tab">ê·¼íê´ë¦¬</a>
              <a href="#features" class="mdl-layout__tab">ì ìê²°ì </a>
              <a href="#features" class="mdl-layout__tab">ë§ì´íì´ì§</a>
              <a id="login" href="#features" class="mdl-layout__tab">ë¡ê·¸ì¸</a>
              
                                         
                <span class="visuallyhidden">Add</span>
              </button>
            </div>
          </header>
          <main class="mdl-layout__content">
          <div class="mdl-layout__tab-panel is-active" id="overview">
            
         <div class="main">      
                <div class="left">
                    <!-- ì¬ì´ë ë° ë©ë´-->
                    <!-- í¨ë íì´í1 -->
                    <div class="panel panel-info">
                        <div class="panel-heading">
                        <h3 class="panel-title">ê²ìí</h3>
                        </div>
                        <!-- ì¬ì´ëë° ë©ë´ëª©ë¡1 -->
                        <ul class="list-group">
                        <li class="list-group-item"><a href="border(total).html">ì ì²´ê³µì§ ê²ìí</a></li>
                        <li class="list-group-item"><a href="border(department).html">ë¶ìë³ ê²ìí</a></li>
                        <li class="list-group-item"><a href="border(community).html">ì¬ë´ ì»¤ë®¤ëí° ê²ìí</a></li>
                        <li class="list-group-item"><a href="border(Investigation).html">ì¬ë´ ê²½ì¡°ì¬ ê²ìí</a></li>
                        <li class="list-group-item"><a href="border(change dept).html">ì¸ì¬ë°ë ¹ ê²ìí</a></li>
                        </ul>
                    </div>                    
            </div><br>      
            <% if (m != null) { %>      
            <div class="center">     
                <div class="container">

                    <div class="row">
                                
            			  <form action="<%= request.getContextPath() %>/nInsert.no" method="post">
                            <table class="table table-striped"
            
                                style="text-align: center; border: 1px solid #dddddd">
            
                                <thead>
            
                                    <tr>
            
                                        <th colspan="2"
            
                                            style="background-color: #eeeeee; text-align: center;">ê²ìí ìì±</th>
            
                                    </tr>
            
                                </thead>
            
                                <tbody>
            
                                    <tr>
            
                                        <td><input type="text" class="form-control" placeholder="ê¸ ì ëª©" name="title" maxlength="50"/></td>
            
                                    </tr>
                                    <tr>
            
                                        <td><input type="text" value="<%= m.getEmpName() %>" class="form-control" placeholder="ìì±ì" name="writer" maxlength="50" readonly/></td>
                                        <td><input type="hidden" value="<%= m.getEmpId() %>" class="form-control" placeholder="ìì±ì" name="empId" maxlength="50"/></td>
            
                                    </tr>
                                    <tr>
                                        <td><input type="text" class="form-control" placeholder="ìì±ì¼" name="date" maxlength="10"/>
                                         </td>        
            
                                    </tr>
            
                                    <tr>
            
                                        <td>
                                        <input type=hidden name="content" value="123123">
                                        <div id="summernote"></div></td>
            
                                    </tr>

                                   
            
                                </tbody>
            
                            </table>	
            
                            <input type="submit" class="btn btn-primary pull-right" value="ì·¨ì" />
                            <input type="submit" class="btn btn-primary pull-right" value="ìì±" />
            				</form>
                        
            
                    </div>
            
                </div>                   
            </div>
            <% } else { 
				request.setAttribute("msg", "íìë§ ì´ë ê°ë¥í©ëë¤.");
			 } %>
            <div class="centerlow">
                
               <script>
                function writeOpen(){ //ë©ì¸ì§ì°½ ì´ê¸°
                  window.open('border(write).html','ê¸ì°ê¸°','width=1280px,height=960px');
                }

                function viewOpen(){
                  window.open('border(detail).html','ìì¸ë³´ê¸°','width=1280px,height=960px');
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
                              <option value="0">ì ëª©</option>
                              <option value="1">ë´ì©</option>
                              <option value="2">ì ëª©+ë´ì©</option>
                              <option value="3">ê¸ì´ì´</option>
                          </select>
                          <input type="text" size="20" name="condition"/>&nbsp;
                          <a class="btn btn-default btn-primary">ê²ì</a>
                      </form>    
                  </div>
              
            </div>         
        </div>   
        </div>
            <footer class="mdl-mega-footer">
                <div class="mdl-mega-footer--middle-section">
                  <div class="mdl-mega-footer--drop-down-section">
                    <input class="mdl-mega-footer--heading-checkbox" type="checkbox" checked>
                    <!--íë¨ë° ì»¨íì¸  -->
                    <h1 class="mdl-mega-footer--heading"> T&H Company</h1>
                    <ul class="mdl-mega-footer--link-list" id=info>
                      <li><a href="#">ì±ë¨ì ìì êµ¬ ííë 5380 501í¸</a></li>
                      <li><a href="#">ëí : ë¬¸íí</a></li>
                      <li><a href="#">ì¬ìì ë±ë¡ë²í¸ : 111 - 39 - 33140</a></li>
                      <li><a href="#">Tel : 033-552-7517</a></li>
                      <li><a href="#">ì¦</a></li>
                    </ul>
                  </div>
                  <div class="mdl-mega-footer--drop-down-section">
                    <input class="mdl-mega-footer--heading-checkbox" type="checkbox" checked>
                    <!--íë¨ë° ì»¨íì¸  -->
                    <h1 class="mdl-mega-footer--heading"></h1>
                    <ul class="mdl-mega-footer--link-list">
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
                    </ul>
                  </div>
                  <div class="mdl-mega-footer--drop-down-section">
                    <input class="mdl-mega-footer--heading-checkbox" type="checkbox" checked>
                    <!--íë¨ë° ì»¨íì¸  -->
                    <h1 class="mdl-mega-footer--heading"></h1>
                    <ul class="mdl-mega-footer--link-list" id=info>
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
                    </ul>
                  </div>
                  <div class="mdl-mega-footer--drop-down-section">
                    <input class="mdl-mega-footer--heading-checkbox" type="checkbox" checked>
                   <!--íë¨ë° ì»¨íì¸  -->
                    <h1 class="mdl-mega-footer--heading"></h1>
                    <ul class="mdl-mega-footer--link-list">
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
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
              window.focus(); // íì¬ window ì¦ ìµì¤íë¬ë¬ë¥¼ ìëì° ìµìë¨ì ìì¹
              window.moveTo(0,0); // ì¹ íì´ì§ì ì°½ ìì¹ë¥¼ 0,0 (ì¼ìª½ ìµìë¨) ì¼ë¡ ê³ ì 
              window.resizeTo(1280,800); // ì¹íì´ì§ì í¬ê¸°ë¥¼ ê°ë¡ 1280 , ì¸ë¡ 800 ì¼ë¡ ê³ ì (íì¥ ë° ì¶ì)
              window.scrollTo(0,250); // íì´ì§ ìë¨ ê´ê³ ë¥¼ ë°ë¡ ë³¼ ì ìê² ì¤í¬ë¡¤ ìì¹ë¥¼ ì¡°ì 
              };

              // checkbox ëª¨ë ì²´í¬ë§ë¤ê¸° 
            $(document).ready(function(){
                $('.checkAll').click(function(){
    
                    if($(".checkAll").prop("checked")){
                        $(".chkbox").prop("checked",true);
                    }else{
                        $(".chkbox").prop("checked",false);
                    }
                });
            });

            $(document).ready(function() {
            $('#summernote').summernote();
            });

            $('#summernote').summernote({
            height: 380,
            width:1120,   //set editable area's height
            codemirror: { // codemirror options
                theme: 'monokai'
            }
            });

            </script>
            
</body>
</html>
=======
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
<title>글 쓰기</title>
<meta charset="UTF-8">
<head>
	<script type="text/javascript" src="../semi/smarteditor2-master/workspace/static/js/service/HuskyEZCreator.js"></script>
	 


<!-- jQuery -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>



<!-- Bootstrap CSS -->

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

<title>write</title>



<script>

	$(document).on('click', '#btnSave', function(e){

		e.preventDefault();

		

		$("#form").submit();

	});

	

	$(document).on('click', '#btnList', function(e){

		e.preventDefault();

		

		location.href="${pageContext.request.contextPath}/board/getBoardList";

	});


</script>



	
<style>

body {

  padding-top: 70px;

  padding-bottom: 30px;

}

#summernote{
	width: 10px;
	height: 500px;
	margin: 100px;
}

</style>

</head>

<body>

	<article>

		<div class="container" role="main">

			<h2>글 쓰기</h2>

			<form name="form" id="form" role="form" method="post" action="${pageContext.request.contextPath}/board/saveBoard">

				<div class="mb-3">

					<label for="title">제목</label>

					<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">

				</div>

				<div class="mb-3">

					<label for="reg_id">작성자</label>

					<input type="text" class="form-control" name="reg_id" id="reg_id" placeholder="이름을 입력해 주세요">

				</div>
	
				<label>내용</label>
				
				<div id="summernote"></div>

				<div class="mb-3">

					<label for="tag">TAG</label>

					<input type="text" class="form-control" name="tag" id="tag" placeholder="태그를 입력해 주세요">

				</div>

			

			</form>

			<div >

				<button type="button" class="btn btn-sm btn-primary" id="btnSave">저장</button>

				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>

			</div>

		</div>

	</article>


	<script>
		$(document).ready(function() {
		$('#summernote').summernote();
		});

		$('#summernote').summernote({
		height: 400,   //set editable area's height
		codemirror: { // codemirror options
			theme: 'monokai'
		}
		});


	</script>
</body>

</html>



>>>>>>> branch 'master' of https://github.com/khmooon/semi.git
