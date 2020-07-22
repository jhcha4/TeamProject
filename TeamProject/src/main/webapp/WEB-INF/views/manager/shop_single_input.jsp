<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/head.jsp" %>
<script type="text/javascript" >
$(function() {
	var options = $("#serveOption option");
	var m = $("#mainOption option:selected").val();
	if(m == "T") {   
		$("#serveOption option").remove();
		$("#serveOption").append(options[0]).append(options[1]).append(options[2]).append(options[3]);
	}
	$("#mainOption").change(function(){
		$("#serveOption option").remove();
		var main = $(this).val();
		var serve = $("#serveOption").val();
		console.log(main);
		if(main == "T")                                                     
			$("#serveOption").append(options[0]).append(options[1]).append(options[2]).append(options[3]);
		if(main == "P")                                                       
			$("#serveOption").append(options[4]).append(options[5]).append(options[6]).append(options[7]);
		if(main == "S")                                                       
			$("#serveOption").append(options[8]).append(options[9]).append(options[10]).append(options[11]);
		if(main == "A")                                                       
			$("#serveOption").append(options[12]).append(options[13]).append(options[14]).append(options[15]).append(selected);
	});
	//이미지 파일 드롭
	//타이틀 이미지
<%@ include file="../include/main_ImgFile.jsp" %>
	$("#titleImg").on("dragenter dragover", function(e){
		e.preventDefault();
	});
	
	$("#titleImg").on("drop",function(e){
		e.preventDefault();
		$(this).css("height", "auto");
		var file = e.originalEvent.dataTransfer.files[0];
		var formData = new FormData();
		formData.append("file",file);
		var url= "/upload/imgFile";
		$.ajax({
			"processData" : false,
			"contentType" : false,
			"type" : "post",
			"url" : url,
			"data" :formData,
			"success" : function(rData) {
				console.log(rData)
				var slashIndex = rData.lastIndexOf("/");
				var front = rData.substring(0, slashIndex +1);
				var rear = rData.substring(slashIndex +1);
				var thumbnailName = front + rear;
				var originalFilename = rData.substring(rData.indexOf("_")+1);
				var html ="<div data-filename='"+rData+"'>";
					html += "<img class='img-rounded' src='/upload/displayFile?fileName="+thumbnailName+"' /><br>";
					html += "<span>"+originalFilename+"</span>";
					html +="<a href='"+rData+"' class='attach-del'><span class='pull-rigth'>X</span></a>";
					html +="</div>";
					$("#titleImg").append(html);
			}
		});
	});
	$("#imgFileDrop").on("dragenter dragover", function(e){
		e.preventDefault();
	});
	// 광고 사진
	$("#imgFileDrop").on("drop",function(e){
		e.preventDefault();
		$(this).css("height", "auto");
		var file = e.originalEvent.dataTransfer.files[0];
		var formData = new FormData();
		formData.append("file",file);
		var url= "/upload/imgFile";
		$.ajax({
			"processData" : false,
			"contentType" : false,
			"type" : "post",
			"url" : url,
			"data" :formData,
			"success" : function(rData) {
				console.log(rData)
				var slashIndex = rData.lastIndexOf("/");
				var front = rData.substring(0, slashIndex +1);
				var rear = rData.substring(slashIndex +1);
				var thumbnailName = front + rear;
				var originalFilename = rData.substring(rData.indexOf("_")+1);
				var html ="<div data-filename='"+rData+"'>";
					html += "<img class='img-rounded' src='/upload/displayFile?fileName="+thumbnailName+"' /><br>";
					html += "<span>"+originalFilename+"</span>";
					html +="<a href='"+rData+"' class='attach-del'><span class='pull-rigth'>X</span></a>";
					html +="</div>";
					$("#imgFileDrop").append(html);
			}
		});
	});
	
	//삭제 버튼
	$(".imgDrop").on("click",".attach-del", function(e){
		e.preventDefault();
		$(this).css("height", "200px");
		var that = $(this);
		
		var filename = $(this).attr("href");
		var url= "/upload/deleteFile";
		var sendData= {"filename" : filename};
		$.ajax({
			"type" : "get",
			"url" : url,
			"data" : sendData,
			"success" : function(rData){
				that.parent().remove();
			}
		});
	});
	
// 	$("#formSubmit").submit(function(){
// 		var upDiv = $("#imgFileDrop > div");
// 		var titleDiv = $("#titleImg > div");
// 		console.log("upDiv:"+upDiv);
// 		upDiv.each(function(index){
// 			var filename = $(this).attr("data-filename");
// 			var hiddenInput = "<input type='hidden' name='p_files["+index+"]' value='"+filename+"'/>";
// 			$("#formSubmit").prepend(hiddenInput);
// 		});
// 		titleDiv.each(function(index){
// 			var filename = $(this).attr("data-filename");
// // 			console.log("submit filename:"+filename);
// // 			console.log("formsubmit/filename:"+filename);
// 			var hiddenInput = "<input type='hidden' name='title_name' value='"+filename+"'/>";
// 			$("#formSubmit").prepend(hiddenInput);
// 		});
		
// 	});
	<%@ include file="../include/main_ImgFile.jsp" %>
});
</script>

<%@ include file="../include/main_style.jsp" %>
<%@ include file="../include/main_bar.jsp" %>


<div class="site-section">
	<div class="container">
		<!-- 시작 -->
		<form id="formSubmit" role="form" action="/manager/shop_single_input"	method="post">
			<div class="row">

				<div class="col-md-6">
					<div >
						<div id="titleImg" class="btn btn-primary imgDrop" style="margin-button: 10px;">
						
						</div>
					</div>
				
				</div>
				
					<div class="col-md-6">

					<!-- 상품 등록 상세 메뉴 -->
					<div>
						<label>main : </label> <select name="p_main" id="mainOption">
							<option value="T" selected="selected">상의
							<option value="P">하의
							<option value="A">악세사리
							<option value="S">신발
						</select>
					
						<label>serve : </label> <select name="p_serve" id="serveOption">
							<option value="TH" selected="selected">반팔
							<option value="TL">긴팔
							<option value="TS">셔츠
							<option value="TM">맨투맨
							<option value="PJ">청바지
							<option value="PM">면바지
							<option value="PH">반바지
							<option value="P7">7부바지
							<option value="SD">구두
							<option value="SU">운동화
							<option value="SS">스릴퍼
							<option value="SR">로퍼
							<option value="AR">반지
							<option value="AW">지갑
							<option value="AC">모자
							<option value="AB">가방
						</select>

					</div>

					<h2 class="text-black">
						상품이름<input type="text" id="p_name" name="p_name">
					</h2>
					<p>
						<label>상품 설명</label>
						<input type="text" id="p_content" name="p_content">
					</p>
					<p>
						<strong class="text-primary h4"> 가격
						<input type="text"	id="p_price" name="p_price">
						</strong>
					</p>
					<!-- 사이즈 -->
					<div class="mb-1 d-flex">
						<label for="option-sm" class="d-flex mr-3 mb-3"> <span
							class="d-inline-block mr-2"
							style="top: -2px; position: relative;"> <input
								type="checkbox" id="option-sm" name="shop-sizes"></span> <span
							class="d-inline-block text-black">Small</span>
						</label> <label for="option-md" class="d-flex mr-3 mb-3"> <span
							class="d-inline-block mr-2"
							style="top: -2px; position: relative;"> <input
								type="checkbox" id="option-md" name="shop-sizes"></span> <span
							class="d-inline-block text-black">Medium</span>
						</label> <label for="option-lg" class="d-flex mr-3 mb-3"> <span
							class="d-inline-block mr-2"
							style="top: -2px; position: relative;"> <input
								type="checkbox" id="option-lg" name="shop-sizes"></span> <span
							class="d-inline-block text-black">Large</span>
						</label> <label for="option-xl" class="d-flex mr-3 mb-3"> <span
							class="d-inline-block mr-2"
							style="top: -2px; position: relative;"> <input
								type="checkbox" id="option-xl" name="shop-sizes"></span> <span
							class="d-inline-block text-black"> Extra Large</span>
						</label>
					</div>
					<!-- 사이즈 끝 -->

					<button type="submit" class="btn btn-sm btn-primary imgDrop">상품
						등록하기</button>
				</div>

			</div>
			<div class="col-md-12">
				<label>상품 이미지</label>
				<div id="imgDiv">
					<div id="imgFileDrop" class="btn btn-primary imgDrop"
						style="margin-buttom: 10px;"></div>

				</div>
			</div>
		</form>
		<!-- 끝 -->
	</div>

</div>

<div class="site-section block-3 site-blocks-2 bg-light">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7 site-section-heading text-center pt-4">
            <h2>Featured Products</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="nonloop-block-3 owl-carousel">
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="../../resources/images/cloth_1.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Tank Top</a></h3>
                    <p class="mb-0">Finding perfect t-shirt</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="../../resources/images/shoe_1.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Corater</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="../../resources/images/cloth_2.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Polo Shirt</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="../../resources/images/cloth_3.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">T-Shirt Mockup</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="../../resources/images/shoe_1.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Corater</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


<%@ include file="../include/foot.jsp" %>