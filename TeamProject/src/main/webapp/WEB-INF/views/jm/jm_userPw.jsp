<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head.jsp" %>


 <style>
.form-control { 
  
 padding: 20px; 
  width: 300px; 
  
  border-radius: 5px; 
  top: 50%; 
  left: 50%; 
  
  
  
  
} 
</style> 

 <script>
$(function(){
 	$("#btnOk").click(function(e){
		console.log(e);    
		
		var u_id =$ ("#u_id").val();
		console.log(u_id);
		
		var url = "/jm/jm_userPwEmail";
		sendData = {"u_id" : u_id};
		
		$.get(url,sendData,function(rData){
			  console.log(rData); 
			  	  
			  var email =rData.u_email;
			  var pw =rData.u_pw;
			  
			  $("#u_email").val(email);
			  $("#u_pw").val(pw);
		 });

	}); 
 	
 	$("#btnEmail").click(function(){
 		
 	});
 	
 	
 	
 	
});
</script> 

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<form id="mailFrom"  role="form" action="" method="post" >
			
			
				<div class="form-group">
					 
					<label for="u_id">
						아이디
					</label>
					<input type="text" class="form-control" id="u_id" name="u_id" placeholder="아이디를 입력하세요"/>
				</div>
				<button type="button" class="btn btn-warning" id="btnOk">
					확인
				</button>
	
				<div class="form-group">
					 
					<label for="u_email">
						이메일
					</label>
					<input type="email" class="form-control" id="u_email" name="u_email"    readonly/>
				</div>
				
				<div class="form-group"> 
					<label for="u_pw">	
					</label>
					
					<input type="hidden" class="form-control" id="u_pw" name="u_pw" />
				</div>
				
				<button type="submit" class="btn btn-info" id="btnEmail" name="btnEmail">
					전송하기
				</button>
			</form>
		</div>
	</div>
</div>



<%@ include file="../include/foot.jsp" %>