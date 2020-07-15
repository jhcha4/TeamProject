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
			  	  
				var email=$("#u_email").val();
				email.val(rData);
			} 
			
			  
				
				
		 
		 });
		
		
		
		
		
	}); 
});
</script> 

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<form role="form" >
			
			
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
					<input type="email" class="form-control" id="u_email" name="u_email"  <%-- value="${jmMemberVo.u_email}" --%>   readonly/>
				</div>
				
				<button type="submit" class="btn btn-info">
					전송하기
				</button>
			</form>
		</div>
	</div>
</div>



<%@ include file="../include/foot.jsp" %>