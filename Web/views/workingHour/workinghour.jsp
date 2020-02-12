<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WorkingHour</title>

<script src='<%=request.getContextPath()%>/resources/js/jquery-3.4.1.min.js'></script>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/working_box2.css">

<!-- 프로그래스바 -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/normalize.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css">
<script src="<%=request.getContextPath()%>/resources/js/jquery.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/js/modernizr.js" type="text/javascript"></script>
<script>
	$(document).ready(function() {
		if(!Modernizr.meter){
			alert('Sorry your brower does not support HTML5 progress bar');
		} else {
			var progressbar = $('#progressbar'),
				max = progressbar.attr('max'),
				time = (1/max),	
		        value = progressbar.val();
		
		    var loading = function() {
		        value += 1;
		        addValue = progressbar.val(value);
		        
		        $('.progress-value').html(value + '%');
		
		        if (value == max) {
		            clearInterval(animate);			           
		        }
		    };
		
		    var animate = setInterval(function() {
		        loading();
		    }, time);
		};
	});
</script>
<!-- 프로그래스바 -->

<style>
    /* 프로그래스바 */
    progress{
        border-radius: 9px;
        width: 100%;
    }
    progress::-webkit-progress-bar {
        background-color: white;
        border: 1px;
        height: 20px;
        width: 100%;
        border-radius: 2px;
        opacity: 0.6;
    }
    progress::-webkit-progress-value {
        background-color: rgb(162, 162, 255);
        border: 1px;
        height: 20px;
        width: 100%;
        border-radius: 2px;
        opacity: 0.6;
    }
    /* 프로그래스바 */
</style>

<script>

    week = ['일','월','화','수','목','금','토'];
    weekarr = new Array();
    plus = 0;

    /* 시작하자마자 바로 실행. */
    (function(){
        // 현재 요일
        var now1 = new Date();

        /* 일~토 구하는 로직 */
        // var week = ['일','월','화','수','목','금','토'];
        // 현재요일을 받음
        var dayOfWeek = week[new Date().getDay()];

        if(dayOfWeek == '일'){
            // 아모고토 안하고 바로 직통
        }
        if(dayOfWeek == '월'){
            var minusday = now1.getTime() - (1*(24*60*60*1000));
            now1 = new Date(minusday);
        }
        if(dayOfWeek == '화'){
            var minusday = now1.getTime() - (2*(24*60*60*1000));
            now1 = new Date(minusday);
        }
        if(dayOfWeek == '수'){
            var minusday = now1.getTime() - (3*(24*60*60*1000));
            now1 = new Date(minusday);
        }
        if(dayOfWeek == '목'){
            var minusday = now1.getTime() - (4*(24*60*60*1000));
            now1 = new Date(minusday);
        }
        if(dayOfWeek == '금'){
            var minusday = now1.getTime() - (5*(24*60*60*1000));
            now1 = new Date(minusday);
        }
        if(dayOfWeek == '토'){
            var minusday = now1.getTime() - (6*(24*60*60*1000));
            now1 = new Date(minusday);
        }

        for(var i =0; i<14; i++){
            weekarr[i] = now1;
            var plusday = now1.getTime()+(24*60*60*1000);
            now1 = new Date(plusday);
        }   

        console.log(weekarr);

        // div에 뿌리기

        $('#box2-2>div, #box2-3>div').each(function(index,date){
            date.innerHTML = 
                weekarr[index].getDate() + " (" + week[weekarr[index].getDay()] + ")";
        });

        document.getElementById('twoweeks').innerHTML = 
                weekarr[0].getFullYear() + " " + (weekarr[0].getMonth()+1) + ". " +
                weekarr[0].getDate() + " ~ " + 
                " " + (weekarr[13].getMonth()+1) + ". " +
                weekarr[13].getDate();

    })();


    function beforew(){
        
        for(var i =0; i<14; i++){
            var minus = weekarr[i].getTime()-(14*(24*60*60*1000));
            weekarr[i] = new Date(minus);
        }

        $('#box2-2>div, #box2-3>div').each(function(index,date){
            date.innerHTML = 
                weekarr[index].getDate() + " (" + week[weekarr[index].getDay()] + ")";
        });

        document.getElementById('twoweeks').innerHTML = 
                weekarr[0].getFullYear() + " " + (weekarr[0].getMonth()+1) + ". " +
                weekarr[0].getDate() + " ~ " + 
                " " + (weekarr[13].getMonth()+1) + ". " +
                weekarr[13].getDate();

    }

    function nextw(){

        for(var i =0; i<14; i++){
            var minus = weekarr[i].getTime()+(14*(24*60*60*1000));
            weekarr[i] = new Date(minus);
        }

        $('#box2-2>div, #box2-3>div').each(function(index,date){
            date.innerHTML = 
                weekarr[index].getDate() + " (" + week[weekarr[index].getDay()] + ")";
        });

        document.getElementById('twoweeks').innerHTML = 
                weekarr[0].getFullYear() + " " + (weekarr[0].getMonth()+1) + ". " +
                weekarr[0].getDate() + " ~ " + 
                " " + (weekarr[13].getMonth()+1) + ". " +
                weekarr[13].getDate();

    }

</script>
</head>
<body style="width: 100%; height: 100%; background-color:whitesmoke;">
<!------------------------------ box1 상단바 ------------------------------>
    <div id='box1'>
        <br>
        반갑습니다.
        <span>송인석 님</span>
        <br><br>
        <div id='box1-1' align='center'>
            TODAY
            <span id='dateview'>1</span>
            <br>
            <span id='timeview'>2</span>
        </div>
    </div>
<!------------------------------ box1 상단바 ------------------------------>

<!------------------------------ box2 중앙 ------------------------------>
    <div id='box2'>
        <div id='box2-1'>
            <input type="button" value='<' class='inline3' id='beforew' onclick='beforew();'>
            <p id='twoweeks' class='inline3'>2019 11.17 ~ 11.30</p>
            <input type="button" value='>' class='inline3' id='nextw' onclick='nextw();'>
        </div>    

        <div style="margin-left: 15%; margin-right: 15%;">
            <progress id='progressbar' value="0" max="100">
            </progress>
            <span class="progress-value">0%</span>
        </div>
        <br>
        <!-- div창!! -->
        <div id='box2-2'>
            <div id='sun1' class='day inline1 weekend'></div>
            <div id='mon1' class='day inline1 weekday'></div>
            <div id='tue1' class='day inline1 weekday'></div>
            <div id='wed1' class='day inline1 weekday'></div>
            <div id='thur1' class='day inline1 weekday'></div>
            <div id='fri1' class='day inline1 weekday'></div>
            <div id='sat1' class='day inline1 weekend'></div>
        </div>
        <br>
        <!-- div창!! -->
        <div id='box2-3'>
            <div id='sun2' class='day inline2 weekend'></div>
            <div id='mon2' class='day inline2 weekday'></div>
            <div id='tue2' class='day inline2 weekday'></div>
            <div id='wed2' class='day inline2 weekday'></div>
            <div id='thur2' class='day inline2 weekday'></div>
            <div id='fri2' class='day inline2 weekday'></div>
            <div id='sat2' class='day inline2 weekend'></div>
        </div>     
    </div>

<!------------------------------ box3 선택 ------------------------------>
    <div id='box3'>
        <div id='box3-1'>
            <p style="display: inline-block;">
                STEP1<br>
                근무 일자 선택 >
            </p>
            <input type="date" style="display: inline-block;" value='날짜 선택'>
        </div>
<!------------------------------ box3 -2 선택 ------------------------------>
        <div id='box3-2'>
            <p style="display: inline-block;">
                STEP2<br>
                근무시간 선택 >
            </p>
            <input type="button" value='9:00~18:00' style="display: inline-block;">
            <input type="button" value='9:30~18:30' style="display: inline-block;">
            <input type="button" value='10:00~19:00' style="display: inline-block;">
            <br>
            <label>근무시간1</label>&nbsp;&nbsp;
            <select name="" id="">
                <option value="근무">근무</option>
                <option value="외근">외근</option>
                <option value="반차">반차</option>
            </select>&nbsp;&nbsp;
            <input type="text" value='10:00~19:00'>~
            <input type="text" value='10:00~19:00'>
            <input type="checkbox" name="" id="nextday">
            <label for="nextday">익일</label>
            <input type="button" value="+">
            <br><br>
            <label>근무시간2</label>&nbsp;&nbsp;
            <select name="" id="">
                <option value="근무">근무</option>
                <option value="외근">외근</option>
                <option value="반차">반차</option>
            </select>&nbsp;&nbsp;
            <input type="text" value='10:00~19:00'>~
            <input type="text" value='10:00~19:00'>
        </div>
<!------------------------------ box3-2 선택 ------------------------------>
<!------------------------------ box3-3 선택 ------------------------------>
        <div id='box3-3'>
            <br>
            <label>근무시간</label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <span>설정한 시간 뜸</span>
            <br><br>
            <label>휴게시간</label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <span>쉰시간 뜸</span>
            <br><br>
            <div id='box3-3-1'>
                <div>
                    <ul>
                        <li>지금 설정하신 근무 계획을 간편설정 등록하시겠습니까?</li><button>간편설정등록</button>
                    </ul>
                </div>
            </div>
            <div align='center'>
                <input type="reset" value='삭제'>
                <input type="submit" value='저장'>
            </div>
        </div>
    </div>

<!------------------------------ box3 선택창 ------------------------------>
</body>
</html>