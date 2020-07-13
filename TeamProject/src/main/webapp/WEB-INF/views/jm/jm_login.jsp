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



<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<form role="form">
				<div class="form-group">
					 
					<label for="user_id">
						아이디
					</label>
					<input type="text" class="form-control" id="user_id"  id="user_id" required />
				</div>
				<div class="form-group">
					 
					<label for="user_pw">
						비밀번호
					</label>
					<input type="password" class="form-control" id="user_pw" name="user_pw" required  />
				</div>
				
					 
					
				<button type="submit" class="btn btn-danger">
					로그인
				</button>
			</form>
		</div>
	</div>
</div>

<%@ include file="../include/foot.jsp" %>