<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 
$("#formSubmit").submit(function(){
		var upDiv = $("#imgFileDrop > div");
		var titleDiv = $("#titleImg > div");
		console.log("upDiv:"+upDiv);
		upDiv.each(function(index){
			var filename = $(this).attr("data-filename");
			var hiddenInput = "<input type='hidden' name='p_files["+index+"]' value='"+filename+"'/>";
			$("#formSubmit").prepend(hiddenInput);
		});
		titleDiv.each(function(index){
			var filename = $(this).attr("data-filename");
// 			console.log("submit filename:"+filename);
// 			console.log("formsubmit/filename:"+filename);
			var hiddenInput = "<input type='hidden' name='title_name' value='"+filename+"'/>";
			$("#formSubmit").prepend(hiddenInput);
		});
		
	});
