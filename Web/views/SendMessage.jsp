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
  <link rel="stylesheet" href="styles.css" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
  <!-- <link type="text/css" rel="stylesheet" href="../jquery-te-1.4.0.css"> -->
  <script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link
    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
  <script type="text/javascript" src="http://code.jquery.com/jquery.min.js" charset="utf-8"></script>
  <!-- <link type="text/css" rel="stylesheet" href="demo.css"> -->
  <link type="text/css" rel="stylesheet" href="jquery-te-1.4.0.css">

  <script type="text/javascript" src="http://code.jquery.com/jquery.min.js" charset="utf-8"></script>
  <script type="text/javascript" src="jquery-te-1.4.0.min.js" charset="utf-8"></script>
</head>

<body class="a">
  <div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer">
    <div class="mdl-layout__drawer">
      <span class="mdl-layout-title" style="font-size: 20pt;"><a href=message.html>메세지함</a></span>
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
        <h1 class="h3 mb-2 text-gray-800">매세지 보내기</h1>
        <p class="mb-4"> </p>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"></h6>
          </div>
          
          <div class="card-body">
            <label> 받는사람 : </label>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable" id="searchicon" >
                  <label class="mdl-button mdl-js-button mdl-button--icon" for="sample6">
                    <i class="material-icons">search</i>
                  </label>
                  <div class="mdl-textfield__expandable-holder">
                   
                    <input type="text" list="mylist"  class="mdl-textfield__input" id="sample6">
                    
                    <datalist id="mylist">
                        <option value="김미영">팀장 </option>
                        <option value="아무개">사원</option>
                        <option value="가">대리</option>
                        <option value="다">사원</option>
                        <option value="라">?</option>
                        <option value="마">과장</option>
                        <option value="사">차장</option>
                    </datalist> 

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
                      <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab" onclick="addlist();">
                          <i class="material-icons">add</i>
                        </button>
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
                  <input class="mdl-textfield__input" type="text" id="sample3">
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
                <li disabled class="mdl-menu__item">답장하기</li>
                <li disabled class="mdl-menu__item">삭제하기</li>
                <li disabled class="mdl-menu__item">전달하기</li>
                <li class="mdl-menu__item">임시 저장하기</li>
              </ul>
            </div>
            <!--텍스트 에디터-->
        

	<!------------------------------------------------------------ jQUERY TEXT EDITOR ------------------------------------------------------------>

	<textarea name="textarea"
		class="jqte-test" id="jqte-test"></textarea>



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
    
      </script>
  <input type="button" onclick="test1();" value=" ↓ 텍스트에디터 읽어지는지 확인 ↓">
  <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
      전송하기
    </button>
    <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
        취소
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
  <script>

    function test1(){
      
        var str ="";
        str += document.getElementsByClassName("jqte_editor")[0].innerHTML;
      
      document.getElementById("AAA").innerHTML = "제목 : " + document.getElementById('sample3').value +"<br>";
     document.getElementById("AAA").innerHTML += str;
    }

  //   var datalist = new Array();

  //   for (var i = 0; i < 100; i++) {
  //     var str = ""

  //     var msgdata = {
  //       msgnum: i,
  //       name: "",
  //       job: "",
  //       dept: "",
  //       dateyear: "",
  //       datemonth: "",
  //       dateday: "",
  //       readcheck: "",
  //       msgtitle: "",
  //       msginfo: "아무렇게나 막 넣어본 쪽지 내용 " + i
  //     };
  //     switch (i % 4) {
  //       case 0:
  //         str += "<tr role='row'>" + "<td>" + "Bryan Cranston" + "</td>";
  //         msgdata.name = 'Bryan Cranston'; break;
  //       case 1:
  //         str += "<tr role='row'>" + "<td>" + "Aaron Paul" + "</td>";
  //         msgdata.name = 'Aaron Paul'; break;
  //       case 2:
  //         str += "<tr role='row'>" + "<td>" + "Cust omizable" + "</td>";
  //         msgdata.name = 'Cust omizable'; break;
  //       case 3:
  //         str += "<tr role='row'>" + "<td>" + "Bob Odenkirk" + "</td>";
  //         msgdata.name = 'Bob Odenkirk'; break;
  //     }

  //     switch (i % 4) {
  //       case 0: str += " <td>" + "사장" + "</td>"; msgdata.job = "사장"; break;
  //       case 1: str += " <td>" + "부장" + "</td>"; msgdata.job = "부장"; break;
  //       case 2: str += " <td>" + "차장" + "</td>"; msgdata.job = "차장"; break;
  //       case 3: str += " <td>" + "대리" + "</td>"; msgdata.job = "대리"; break;
  //     }

  //     switch (i % 4) {
  //       case 0: str += " <td>인사부</td>"; msgdata.dept = "인사부"; break;
  //       case 1: str += " <td>마케팅부</td>"; msgdata.dept = "마케팅부"; break;
  //       case 2: str += " <td>영업부</td>"; msgdata.dept = "영업부"; break;
  //       case 3: str += " <td>월급루팡부</td>"; msgdata.dept = "월급루팡부"; break;
  //     }

  //     str += "<td>" + "<a href=#>ㅁㄴㅇㅁㄴㅇㅁㄴㅇ메세지 제목 " + i + "</a></td>";
  //     msgdata.msgtitle = "ㅁㄴㅇㅁㄴㅇㅁㄴㅇ메세지 제목 " + i;
  //     msgdata.dateyear = 2019;
  //     msgdata.datemonth = (Math.floor(Math.random() * 12) + 1);
  //     msgdata.dateday = (Math.floor(Math.random() * 30) + 1);
  //     str += "<td>" + msgdata.dateyear + "/" + msgdata.datemonth + "/" + msgdata.dateday + "</td>" +
  //       " <td>읽음</td>" + " </tr>";
  //     document.getElementById('tablebody').innerHTML += str;

  //     datalist.push(msgdata);
  //   }


  //   function MsgOpen(msgnum) {
  //     //   document.getElementsByName('submit1').submit;

  //   }
  // </script>
  <script>
    function filtering(username) {

      console.log(username);
      document.getElementById('tablebody').innerHTML = "";
      for (var i = 0; i < datalist.length; i++) {
        var str = "";
        if (datalist[i].name == username) {
          str += "<tr role='row'><td>" + datalist[i].name + '</td>' + '<td>' + datalist[i].job + '</td>' +
            "<td>" + datalist[i].dept + "</td>" + "<td><a href=#>" + datalist[i].msgtitle + "</a></td>" +
            "<td>" + datalist[i].dateyear + "/" + datalist[i].datemonth + "/" + datalist[i].dateday + "</td>" +
            "<td> 읽음 </td>" + "</tr>";
          document.getElementById('tablebody').innerHTML += str;

        }
      }


    }

  </script>


  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/datatables-demo.js"></script>
  
</body>

</html>