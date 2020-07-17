<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
			<form role="form" action="/jm/jm_updateReviewRun" method="post">
			
			
			<div class="form-group">
					 
					<label for="r_info">
						글번호
					</label>
					<input type="text" class="form-control" id="r_info" name="r_info" value="${jmReviewVo.r_info}" readonly/>
				</div>
			
			
			
			
				<div class="form-group">
					 
					<label for="r_id">
						아이디
					</label>
					<input type="text" class="form-control" id="r_id" name="r_id" value="${jmReviewVo.r_id}" readonly/>
				</div>
				
				<div class="form-group">
					 
					<label for="r_subject">
						제목
					</label>
					<input type="text" class="form-control" id="r_subject" name="r_subject" value="${jmReviewVo.r_subject}" />
				</div>
					
				<div class="form-group">	
						내용
				</div> 
					
				<div class="form-group">
					
					<label for="r_subject">
						
					</label>
					<textarea rows="10" cols="50" id="r_contents" name="r_contents">${jmReviewVo.r_contents}</textarea>
				</div>
				
				<div class="form-group">
					 
					<label for="r_star">
						평점
					</label>
					<input type="text" class="form-control" id="r_star" name="r_star" value="${jmReviewVo.r_star}" />
				</div>
				
				<div class="form-group">
					 
					<label for="r_item">
						상품
					</label>
					<input type="text" class="form-control" id="r_item" name="r_item"  value="${jmReviewVo.r_item}" readonly/>
				</div>
				
				
				
				<button type="submit" class="btn btn-primary">
					수정 완료
				</button>
			</form>
		</div>
	</div>
</div>

<%@ include file="../include/foot.jsp" %>