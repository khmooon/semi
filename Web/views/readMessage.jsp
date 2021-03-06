<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.message.model.vo.Message"%>
    <%
    Message m = (Message)request.getAttribute("msg");
    int no = Integer.parseInt(request.getParameter("emp_no"));
    %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>메신저임</title>
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
  <link rel="stylesheet" href="https://code.getmdl.io/1.0.6/material.grey-pink.min.css" />
  <link rel="stylesheet" href="views/styles.css" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
  <script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link
    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="views/css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="views/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>

<body>
  <div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer">
    <div class="mdl-layout__drawer">
      <span class="mdl-layout-title" style="font-size: 20pt;"><a href=msglist.do?emp_no=<%=no %>>메세지함</a></span>
      <nav class="mdl-navigation">


        <ul class="demo-list-two mdl-list">
          <li class="mdl-list__item mdl-list__item--two-line mdl-navigation__link">
            <span class="mdl-list__item-primary-content ">
              <i class="material-icons mdl-list__item-avatar">person</i>
              <span>Bryan Cranston</span>
              <span class="mdl-list__item-sub-title" style="font-size: 6px;">62 읽지않은 메세지</span>
            </span>
            <span class="mdl-list__item-secondary-content">
              <span class="mdl-list__item-secondary-info">팀장</span>
            </span>
          </li>

          <a onclick="filtering('Aaron Paul');">
            <li class="mdl-list__item mdl-list__item--two-line mdl-navigation__link">
              <span class="mdl-list__item-primary-content ">
                <i class="material-icons mdl-list__item-avatar">person</i>
                <span>Aaron Paul</span>
                <span class="mdl-list__item-sub-title" style="font-size: 6px;">2 읽지않은 메세지</span>
              </span>
              <span class="mdl-list__item-secondary-content">
                <span class="mdl-list__item-secondary-info">파트장</span>
              </span>
            </li>
          </a>
          <li class="mdl-list__item mdl-list__item--two-line mdl-navigation__link">
            <span class="mdl-list__item-primary-content ">
              <i class="material-icons mdl-list__item-avatar">person</i>
              <span>Cust omizable</span>
              <span class="mdl-list__item-sub-title" style="font-size: 6px;">2 읽지않은 메세지</span>
            </span>
            <span class="mdl-list__item-secondary-content">
              <span class="mdl-list__item-secondary-info">고추장</span>
            </span>
          </li>

          <li class="mdl-list__item mdl-list__item--two-line mdl-navigation__link">
            <span class="mdl-list__item-primary-content ">
              <i class="material-icons mdl-list__item-avatar">person</i>
              <span>Bob Odenkirk</span>
              <span class="mdl-list__item-sub-title" style="font-size: 6px;">2 읽지않은 메세지</span>
            </span>
            <span class="mdl-list__item-secondary-content">
              <span class="mdl-list__item-secondary-info">사원</span>
            </span>
          </li>
          </li>


      </nav>
    </div>
    <main class="mdl-layout__content">
        <div class="container-fluid">

            <!-- Page Heading -->
            <br>
            <h1 class="h3 mb-2 text-gray-800">메세지 수신함</h1>
            <p class="mb-4"> </p>
    
            <!-- DataTales Example -->
            <div class="card shadow mb-4">
              <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary"></h6>
              </div>
              
              <div class="card-body">
                <label> 보낸 사람 : </label>
                  <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable" id="searchicon" >
                   
                      <div class="mdl-textfield__expandable-holder">
                       
                        <input type="text" class="mdl-textfield__input" id="sample6" value="<%=m.getSend_emp_name() %> <%=m.getSend_job_name() %>" disabled 
                        style="    background-color: transparent;
                        border-bottom: 1px dotted rgba(0,0,0,.12);
                        color: rgba(0,0,0);">
                        
                   
    
                        <script>
                        var sendlist = new Array();
                        sendlist.push('김미영');
                        sendlist.push('아무개');
                        sendlist.push('가');
                        sendlist.push('다');
                        sendlist.push('라');
                        sendlist.push('마');
                        sendlist.push('사');
     
                        console.log(sendlist);
                        console.log(sendlist.indexOf('뀨'));
                        </script>
                        
                        <label class="mdl-textfield__label" for="sample-expandable">Expandable Input</label>
                      </div>
                       
                    </div>
                    <br>
                    <div id="sendlist">
    
                    </div>
                    <label> 제목 : </label> 
                     <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label"
                     style = "position: relative;
                     font-size: 16px;
                     display: inline-block;
                     box-sizing: border-box;
                     width: 600px;
                     max-width: 100%;
                     margin: 0;
                     padding: 20px 0;"
                     id="sendlist">
                      <input class="mdl-textfield__input" type="text" id="sample3" value="<%=m.getSend_title() %>" disabled
                      style="    background-color: transparent;
                      border-bottom: 1px dotted rgba(0,0,0,.12);
                      color: rgba(0,0,0);"
                      >
                      <label class="mdl-textfield__label" for="sample3"></label>
                    </div>
                </select>
    
                <script>
    
                  var SendListIndex = 0;
              function addlist() {
                  console.log(document.getElementById('sample6').value);
                  console.log(document.getElementById('mylist').value);
    
                  if(sendlist.indexOf(document.getElementById('sample6').value) != -1){
                  document.getElementById('sendlist').innerHTML += '<span class="mdl-chip mdl-chip--deletable" id = SLI'+ SendListIndex +'>'
                    + '<span class="mdl-chip__text">'+document.getElementById('sample6').value+'</span>'
                    + '<button type="button" class="mdl-chip__action" onclick="DeleteSendlist('+SendListIndex+');"><i class="material-icons">cancel</i></button>'
                    + '</span>';
                    SendListIndex++;
                  }else{
                    alert('해당 사원은 존재하지 않습니다!');
                  }
                    document.getElementById('sample6').value = '';
                  
                }
    
                function DeleteSendlist(index){
                  document.getElementById("SLI"+index).remove();
                }
                </script>
    
                <div class="table-responsive  mdl-textfield--align-right">
                  <!-- Right aligned menu below button -->
                  <button id="demo-menu-lower-right" class="mdl-button mdl-js-button mdl-button--icon ">
                    <i class="material-icons">more_vert</i>
                  </button>
    
                  <ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect" for="demo-menu-lower-right">
                    <li class="mdl-menu__item">답장하기</li>
                    <li class="mdl-menu__item">삭제하기</li>
                    <li class="mdl-menu__item">전달하기</li>
                    <li class="mdl-menu__item">임시 저장하기</li>
                  </ul>
                </div>
                <!--텍스트 에디터-->
            
    
      <!------------------------------------------------------------ jQUERY TEXT EDITOR ------------------------------------------------------------>
    
    
    
<%=m.getSend_content() %>
    
      <script>
        $('.jqte-test').jqte();
    
        // settings of status
        var jqteStatus = true;
        $(".status").click(function () {
          jqteStatus = jqteStatus ? false : true;
          $('.jqte-test').jqte({ "status": jqteStatus })
        });
      </script>
    
      <!------------------------------------------------------------ jQUERY TEXT EDITOR ------------------------------------------------------------>
    
    
      <hr>
      <div style="text-align: center;">
      <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored" onclick="reply();">

          답장하기
        </button>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
           전달하기
          </button>
      </div>
      <div class="footer">
            <div id=AAA></div>
      </div>
              </div>
            </div>
    
          </div>
      <!-- /.container-fluid -->

  </div>
  </div>
  <!-- Bootstrap core JavaScript-->
 


  <script src="views/vendor/jquery/jquery.min.js"></script>
  <script src="views/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  
  <!-- Core plugin JavaScript-->
  <script src="views/vendor/jquery-easing/jquery.easing.min.js"></script>
  
  <!-- Custom scripts for all pages-->
  <script src="views/js/sb-admin-2.min.js"></script>
  
  <!-- Page level plugins -->
  <script src="views/vendor/datatables/jquery.dataTables.min.js">  </script> <!--테이블 페이징-->
  <script src="views/vendor/datatables/dataTables.bootstrap4.min.js"></script>
  
  <!-- Page level custom scripts -->
  <script src="views/js/demo/datatables-demo.js"></script>
	<form id=replyfrm action="views/replymessage.jsp" method="get">
		<input type=hidden name="emp_no" value="<%=no %>">
		<input type=hidden name="replyempname" value=<%=m.getSend_emp_name() %>>
		<input type=hidden name="replydept" value=<%=m.getSend_dept_name() %>>
		<input type=hidden name="replyjob" value=<%=m.getSend_job_name() %>>
		<input type=hidden name="replycontent" value="<%=m.getSend_content()%>">
		
	</form>
  <script>
      $('.jqte-test').jqte();
  
      // settings of status
      var jqteStatus = true;
      $(".status").click(function () {
        jqteStatus = jqteStatus ? false : true;
        $('.jqte-test').jqte({ "status": jqteStatus })
      });
      
      function reply(){
    	  document.getElementById("replyfrm").submit();
      }
    </script>

</body>
</html>