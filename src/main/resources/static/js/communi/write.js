/**
 * 
 */

$(document).ready(function(){

  $('#insertFormBox').on('submit', function(){
    if ($('.agName').val() == "") {
				alert("제목 입력하세요");
				$('.agName').focus();
				return false;
			}
    
      if (confirm("저장하시겠습니까?") == true){ 
       $.ajax({
                 type:"post",
                 url:"/community/insertAggregation",
                 data: {"agName":$('.agName').val(),
                      "agText":$('.agText').val()},
    
                 success:function(result){
                     if(result == "success"){
                     location.href="/community/list/1"
                     }else{
    
                     }
                 },
                 error:function(){
                     alert("실패");
                 },
                 complete:function(){
                     //alert("작업 완료");
                 }
             }); // ajax 종료 	
    
       console.log("완료되었습니다.");
       alert("저장했습니다.");
     }else{
       alert("취소합니다");
       console.log("취소되었습니다");
     }
    
   
			
    
     });
     
			
     })