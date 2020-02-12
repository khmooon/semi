<<<<<<< HEAD
<%@page import="com.member.service.MemberService"%>
<%@page import="com.member.model.vo.Member"%>
<%@page import="com.message.model.vo.Message"%>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      <%
  
  ArrayList<Message> msglist = (ArrayList<Message>)request.getAttribute("msglist");
      ArrayList<Member> mlist = new MemberService().allEmployee();
      for(int i=0;i<mlist.size();i++){
      System.out.println(mlist.get(i).getEmpName());
      }
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
  <link rel="stylesheet" href="views/css/styles.css" />
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
      <span class="mdl-layout-title" style="font-size: 20pt;"> <a href=message.jsp>메세지함</a></span>
      <nav class="mdl-navigation">


        <ul class="demo-list-two mdl-list">
        <%for(int i=0;i<mlist.size();i++) {%>
          <li class="mdl-list__item mdl-list__item--two-line mdl-navigation__link">
            <span class="mdl-list__item-primary-content ">
              <i class="material-icons mdl-list__item-avatar">person</i>
              <span><%=mlist.get(i).getEmpName() %></span>
              <span class="mdl-list__item-sub-title" style="font-size: 6px;">62 읽지않은 메세지</span>
            </span>
            <span class="mdl-list__item-secondary-content">
              <span class="mdl-list__item-secondary-info"><%=mlist.get(i).getJobName() %></span>
            </span>
          </li>

<% }%>

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
          </ul>


      </nav>
    </div>
    <main class="mdl-layout__content">
      <div class="container-fluid">

        <!-- Page Heading -->
        <br>
        <h1 class="h3 mb-2 text-gray-800">받은 메세지 함</h1>
        <p class="mb-4"> </p>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">총 <b>"<%=msglist.size() %>"</b>개의 메세지가 있습니다.</h6>
            <br>
            <div style="text-align: left;">
              <a href="views/SendMessage.jsp?emp_no=<%=request.getParameter("emp_no")%>">  
              <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
                    새 메세지 쓰기
                  </button>
                  </a>
            </div>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th>이름</th>
                    <th>직급</th>
                    <th>부서</th>
                    <th>제목</th>
                    <th>보낸날짜</th>
                    <th>읽음표시</th>
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                    <th>이름</th>
                    <th>직급</th>
                    <th>부서</th>
                    <th>제목</th>
                    <th>보낸날짜</th>
                    <th>읽음표시</th>
                  </tr>
                </tfoot>

                <tbody id='tablebody'>

                                                  </tbody>
              </table>
            </div>
          </div>
        </div>

      </div>
      <!-- /.container-fluid -->

  </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  

  <script>
	var datalist = new Array();
     var str="";
     <% for(int i=0;i<msglist.size();i++){%>
     <%
     	  Message m = msglist.get(i);%>
    	  str+="<tr role='row'>" + "<td>" + "<%=m.getSend_emp_name()%>" + "</td>";
    	  str+="<td>"+"<%=m.getSend_job_name()%>" + "</td>";
    	  str+="<td>"+"<%=m.getSend_dept_name()%>" + "</td>";
    	  
    	  str+="<td>"+"<a href=msgRead.do?MessageId=<%=m.getMessage_Id()%>&emp_no=<%=request.getParameter("emp_no")%>><%=m.getSend_title()%>"+"</a></td>";
=======
<%@page import="com.message.model.vo.Message"%>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <link rel="stylesheet" href="views/css/styles.css" />
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
      <span class="mdl-layout-title" style="font-size: 20pt;"> <a href=message.jsp>메세지함</a></span>
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
        <h1 class="h3 mb-2 text-gray-800">받은 메세지 함</h1>
        <p class="mb-4"> </p>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">총 "100"개의 메세지가 있습니다.</h6>
            <br>
            <div style="text-align: left;">
              <a href="SendMessage.html">  
              <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
                    새 메세지 쓰기
                  </button>
                  </a>
            </div>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th>이름</th>
                    <th>직급</th>
                    <th>부서</th>
                    <th>제목</th>
                    <th>보낸날짜</th>
                    <th>읽음표시</th>
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                    <th>이름</th>
                    <th>직급</th>
                    <th>부서</th>
                    <th>제목</th>
                    <th>보낸날짜</th>
                    <th>읽음표시</th>
                  </tr>
                </tfoot>

                <tbody id='tablebody'>

                                                  </tbody>
              </table>
            </div>
          </div>
        </div>

      </div>
      <!-- /.container-fluid -->

  </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  
  <%
  
  ArrayList<Message> msglist = (ArrayList<Message>)request.getAttribute("msglist");
  
  %>
  <script>
	var datalist = new Array();
     var str="";
     <% for(int i=0;i<msglist.size();i++){%>
     <%
     	  Message m = msglist.get(i);%>
    	  str+="<tr role='row'>" + "<td>" + "<%=m.getSend_emp_name()%>" + "</td>";
    	  str+="<td>"+"<%=m.getSend_job_name()%>" + "</td>";
    	  str+="<td>"+"<%=m.getSend_dept_name()%>" + "</td>";
    	  
    	  str+="<td>"+"<a href=msgRead.do?MessageId=<%=m.getMessage_Id()%>><%=m.getSend_title()%>"+"</a></td>";
>>>>>>> branch 'master' of https://github.com/khmooon/semi.git
    	  
    	  str+="<td>"+"<%=m.getSend_date()%>" + "</td>";
    	  str+="<td>읽음</td>";
      <%}
      
      %>
      str+="</tr>";

      document.getElementById('tablebody').innerHTML += str;


    
    function MsgOpen(msgnum){
   //   document.getElementsByName('submit1').submit;
      
    }
    </script>



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

  <script>
   /*    $('.jqte-test').jqte();
  
      // settings of status
      var jqteStatus = true;
      $(".status").click(function () {
        jqteStatus = jqteStatus ? false : true;
        $('.jqte-test').jqte({ "status": jqteStatus })
      }); */
    </script>

</body>
</html>