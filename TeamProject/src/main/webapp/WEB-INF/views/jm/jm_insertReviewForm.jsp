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


#fileDrop{
	width: 20%;
	height: 7%;
	background-color: pink;
	margin: auto;
	border: 1px dashed read;
	margin: 10px;	
}
</style>


<script>
$(function(){
	
	$("#fileDrop").on("dragenter dragover",function(e){
		e.preventDefault();	
	});
	
	$("#fileDrop").on("drop",function(e){
		e.preventDefault();
		
		var file = e.originalEvent.dataTransfer.files[0];
		/* console.log(file); */
		
		var formData = new FormData();
		formData.append("file",file);
		var url = "/jm/jmUploadAjex";
		
		$.ajax({
			
			"processData" : false,
			"contentType" : false,
			"type" :"post",
			"url" : url,
			"data" : formData,
			"success": function(rData){
				/* console.log(rData); */
				
				var slashIndex = rData.lastIndexof("/");
				var front= 
				
				
				
				
			}	
			
		});
	
	});
	
	
	
	
	
	
	
	
	
	
	
	
	
});
	
	
</script>















<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-3">
					</div>
						<div class="col-md-6">
						
						
			<form role="form" action="/jm/jm_insertReviewRun" method="post">
				<div class="form-group">
					 
					<label for="r_id">
						
					</label>
					<input type="hidden" class="form-control" id="r_id" name="r_id" value="${sessionScope.u_id}" readonly />
				</div>
				
				<div class="form-group">
					 
					<label for="r_subject">
						제목
					</label>
					<input type="text" class="form-control" id="r_subject" name="r_subject" />
				</div>
					
				<div class="form-group">	
						내용
				</div> 
					
				<div class="form-group">
					
					<label for="r_subject">
						
					</label>
					<textarea rows="10" cols="50" id="r_contents" name="r_contents"></textarea>
				</div>
				
				<div class="form-group">
					 
					<label for="r_star">
						평점
					</label>
					<input type="text" class="form-control" id="r_star" name="r_star" />
				</div>
				
				<div>
					<label> 첨부할 파일을 드래그 하세요</label>
					<div id="fileDrop"></div>
				</div>
				
				<div id="uploadList"></div>
				<div id="btnDiv"></div>
				
				
				
				
				<button type="submit" class="btn btn-primary">
					작성 완료
				</button>
			</form>
			
						<div class="col-md-3">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="../include/foot.jsp" %>