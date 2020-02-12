// <!------------------------------------ 스크립트 ------------------------------------>
	    $(function(){
// <!------------------------------------ 불러온 사원목록 추가하는 기능 ------------------------------------>
	        $('#tree>li>ul>li').click(function(){
	            
	            var DPT = $(this).parent().siblings('label').text();
	            var add = $(this).text();
	            
	            
	            var menu = $('#menu').text() + $('#refer').text();
	            var refer = $('#refer').text();
	            
	            
				var empNo = $(this).children().val();
	            
	            var name = DPT + ' ' + add;
	
	            if(menu.indexOf(name)==-1){
	
	                if($('#approval1').prop('checked')){
	                	
	                    $('#app_checklist').append("<li><input type='radio' name='updown'>" + name + "<input type='hidden' id='a"+ empNo +"' value='"+ empNo +"'></li>");
	                    
	                }else if($('#approval2').prop('checked')){
	                	
	                	if($('#app_Approver>li').length <= 0){
	                    	$('#app_Approver').append("<li><input type='radio' name='updown'>" + name + "<input type='hidden' id='a"+ empNo +"' value='"+ empNo +"'></li>");
	                	}else {
	                		alert('승인할 수 있는 인원은 1명입니다.');
	                	}
	                	
	                }else if($('#approval3').prop('checked')){
	                	
	                    $('#app_referlist').append("<li><input type='radio' name='updown'>" + name + "<input type='hidden' id='a"+ empNo +"' value='"+ empNo +"'></li>");
	                    
	                }
	            };
	        });
// <!------------------------------------ 불러온 사원목록 추가하는 기능 ------------------------------------>
// <!------------------------------------ list를 위 아래로 자리 바꿔주는 메소드 ------------------------------------>

			$('#checklistbtn_up').click(function(){
				
				$('#app_checklist>li').children(':even').each(function(){
					
					if($(this).prop('checked')){
                        
						$(this).parent().prev().insertAfter($(this).parent());
						
                    }
                    
           		});
			});
			
			$('#checklistbtn_down').click(function(){
				
				$('#app_checklist>li').children(':even').each(function(){
					
					if($(this).prop('checked')){
                        
						$(this).parent().next().insertBefore($(this).parent());
						
                    }
                    
           		});
			});
			
			$('#checklistbtn_del').click(function(){
				
				$('#app_checklist>li, #app_Approver>li').children(':even').each(function(){
					
					if($(this).prop('checked')){
                        
						$(this).parent().remove();
						
                    }
                    
           		});
			});
			
// <!------------------------------------ list를 위 아래로 자리 바꿔주는 메소드 ------------------------------------>
			$('#referlistbtn_up').click(function(){
				
				$('#app_referlist>li').children(':even').each(function(){
					
					if($(this).prop('checked')){
                        
						$(this).parent().prev().insertAfter($(this).parent());
						
                    }
                    
           		});
			});
			
			$('#referlistbtn_down').click(function(){
				
				$('#app_referlist>li').children(':even').each(function(){
					
					if($(this).prop('checked')){
                        
						$(this).parent().next().insertBefore($(this).parent());
						
                    }
                    
           		});
			});
			
			$('#referlistbtn_del').click(function(){
				
				$('#app_referlist>li').children(':even').each(function(){
					
					if($(this).prop('checked')){
                        
						$(this).parent().remove();
						
                    }
                    
           		});
			});
// <!------------------------------------ list를 위 아래로 자리 바꿔주는 메소드 ------------------------------------>

// <!------------------------------------ para로 튕길 hidden 값 뿌리는 메소드 ------------------------------------>
			
			
			
			$('#save_btn').click(function(){
				
				var str1 = "";
				var str2 = "";
				var str3 = "";
				
				$('#app_checklist>li').children(':odd').each(function(){
					
					str1 += $(this).val() + " ";
			        
				});
				
				
				
				$('#app_Approver>li').children(':odd').each(function(){
					
					str2 += $(this).val() + " ";
			        
				});
				
				$('#app_referlist>li').children(':odd').each(function(){
					
					str3 += $(this).val() + " ";
			        
				});
				
				$('#checklist_value').val(str1);
				$('#approvallist_value').val(str2);
				$('#reflist_value').val(str3);
				
//				$.ajax({
//					url : "/Inseok_Semi/AplSave.ap",
//					type : "get",
//					data : {
//						checklist_value : str1,
//						approvallist_value :  str2,
//						reflist_value :  str3
//					},success : function(str1){
//						$('#checklist_value').text(str1);
//					},error : function(request, errorcode, error){
//						console.log("실패입니다.");
//						console.log(request);
//						console.log(errorcode);
//						console.log(error);
//					}
//				});	
				
			});
// <!------------------------------------ para로 튕길 hidden 값 뿌리는 메소드 ------------------------------------>

// <!------------------------------------ para로 튕기기 전 hidden 값 뿌리는 메소드 ------------------------------------>			
			
			$('#submit_btn').click(function(){
				
				alert(str1);
				
				$.ajax({
					url : "/Semi/goConfirm.ap",
					type : "post",
					data : {
						checklist_value : str1,
						approvallist_value :  str2,
						reflist_value :  str3
					},success : function(){
						alert('완료!');
					},error : function(request, errorcode, error){
						console.log("실패입니다.");
						console.log(request);
						console.log(errorcode);
						console.log(error);
					}
				});
			});
			
// <!------------------------------------ para로 튕기기 전 hidden 값 뿌리는 메소드 ------------------------------------>
			
// <!------------------------------------ 전체 삭제 메소드 ------------------------------------>
			$('#checkAlllistbtn_del').click(function(){
				
				$('#app_checklist>li, #app_Approver>li').each(function(){

					$(this).remove();

           		});
			});
			
			
			
			$('#referAlllistbtn_del').click(function(){
				
				$('#app_referlist>li').each(function(){
					
					$(this).remove();
					
           		});
			});
			

// <!------------------------------------ 전체 삭제 메소드 ------------------------------------>

// <!------------------------------------ 검색 메소드 ------------------------------------>			
			
			
			
			

// <!------------------------------------ 검색 메소드 ------------------------------------>
	    });

// <!------------------------------------ 스크립트 ------------------------------------>