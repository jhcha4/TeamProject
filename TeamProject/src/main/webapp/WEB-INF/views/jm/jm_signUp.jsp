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
			<form id="joinForm" role="form" action="/jm/jm_signUpRun" method="post">
				<div class="form-group">
					 
					<label for="user_id">
						아이디
					</label>
					<input type="text" class="form-control" id="user_id" name="u_id" required />
				</div>
				
				
				<div class="form-group">
					 
					<label for="user_pw">
						비밀번호
					</label>
					<input type="password" class="form-control" id="user_pw" name="u_pw"  required/>
				</div>
				
				<!-- <div class="form-group">
				<label for="user_pw2">
						비밀번호 재확인
					</label>
					<input type="password" class="form-control" id="user_pw2" name="user_pw2"  required/>
				</div> -->
				
				<div class="form-group">
				<label for="user_name">
						이름
					</label>
					<input type="text" class="form-control" id="name" name="u_name"  required/>
				</div>
				
				<!-- <div class="form-group">
				<label for="user_gender">
						성별
					</label>
					<select id="gender" name="gender">
						<option>m</option>
						<option selected>f</option>
					</select>
				</div> -->
				
				<div class="form-group">
				<label for="user_gender">
						성별
					</label>
					<input type="text" class="form-control" id="user_gender" name="u_gender"  required/>
				</div>
				
				
			
				<div class="form-group">
				<label for="user_email">
						메일주소
					</label>
					<input type="email" class="form-control" id="user_email" name="u_email"  required/>
				</div>
				
				
				<div class="form-group">
				<label for="user_address">
						주소
					</label>
					<input type="text" class="form-control" id="user_address" name="u_address" required />
				</div>
				
				
				
				<div class="form-group">
				<label for="user_phone">
						핸드폰번호
					</label>
					<input type="text" class="form-control" id="user_phone" name="u_phone" required />
				</div>
				
				
			
				<button type="submit" class="btn btn-primary">
					가입하기
				</button>
				
			</form>
		</div>
	</div>
</div>




<%@ include file="../include/foot.jsp" %>