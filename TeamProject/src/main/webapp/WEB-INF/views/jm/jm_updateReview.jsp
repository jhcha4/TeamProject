<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src ="/resources/js/jm_Script.js" ></script>

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
				/*  console.log(rData);  */
				
				var slashIndex = rData.lastIndexOf("/");
				var front= rData.substring(0,slashIndex+1);
				var rear = rData.substring(slashIndex+1);
				var thumbnailName = front+"jm_"+rear;
				
				var originalName = rData.substring(rData.indexOf("_")+1);
				
				var html = "<div data-filename='"+rData+"'>";
				var result = isImage(originalName);
				console.log(result);
			 	
				  if (result ==true){
					html+="<img class = 'img-tumbnail' src = '/upload/displayFile?fileName="+thumbnailName+"'/>";
				}else{
					html+="<img class = 'img-tumbnail' src = '/resources/images/noImage.jpg'/>"
				}
				
				html+="<span>" +originalName + "</span>"
				html+="<a href='"+rData+"' class='attach-del'><spen class=pull-right>[x]<span></a>"
				html+="</div>"
				
				console.log(html); 
				$("#uploadList").append(html);
				
			}	
			
		});   
	
	});
	
	$("#uploadList").on("click",".attach-del",function(e){
		e.preventDefault();
		
		var that = $(this);
		console.log("클릭함");
		var filename = $(this).attr("href");
		var url = "/jm/jmDeleteFile";
		var sendData = {"filename" :filename}
		
		$.get(url,sendData,function(rData){
			that.parent().remove(); 
				
		}); 
		
	});
	
	$("#updateReviewForm").submit(function(){
		
		var upDiv = $("#uploadList>div");
		
		if(upDiv.length == 0){
			alert('JPG or PNG or GIF 의 후기 이미지를 첨부하세요');
			return false;
		}
		
		upDiv.each(function(index){
			var filename = $(this).attr("data-filename");
			console.log("filename:"+filename);
			
			var slashIndex = filename.lastIndexOf("/");
			var front= filename.substring(0,slashIndex+1);
			var rear = filename.substring(slashIndex+1);
			var thumbnailName = front+"jm_"+rear;
			
			var hiddenInput = "<input type='hidden' name='r_files["+index+"]' value='"+thumbnailName+"' />";
			console.log("hiddenInput:" + hiddenInput);
			$("#updateReviewForm").prepend(hiddenInput);
			
		}); // upDiv.each(function
	
// 		return false;
	}); // $("#updateReviewForm").submit(function
	
	
	
	
});
	
	
</script>










<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<form id="updateReviewForm" role="form" action="/jm/jm_updateReviewRun" method="post">
			
			
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
					<label for="r_files">
						후기 사진
					</label>
					
					<img src="/upload/displayFile?fileName=${jmReviewVo.r_file}"/>
					
				</div>
				
				
				
				
				
				
				
				
				<div>
					<label > 첨부할 파일을 드래그 하세요 <span class="text-danger">*</span> </label>
					<div id="fileDrop"></div>
				</div>
				
				<div id="uploadList"></div>
				<div id="btnDiv"></div>
				
				
				
				
				<button type="submit" class="btn btn-primary">
					수정 완료
				</button>
			</form>
		</div>
	</div>
</div>

<%@ include file="../include/foot.jsp" %>