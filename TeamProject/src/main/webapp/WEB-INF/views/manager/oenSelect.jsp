<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
<%@ include file="../include/head.jsp" %>
<script type="text/javascript" >
$(function() {
	
	$("#mainOption").val("${boardVo.p_main}").attr("selected","selected");
	$("#serveOption").val("${boardVo.p_serve}").attr("selected","selected");
	
	var options = $("#serveOption option");
	$("#mainOption").change(function(){
		$("#serveOption option").remove();
		var main = $(this).val();
		var serve = $("#serveOption").val();
		if(main == "T")                                                     
			$("#serveOption").append(options[0]).append(options[1]).append(options[2]).append(options[3]);
		if(main == "P")                                                       
			$("#serveOption").append(options[4]).append(options[5]).append(options[6]).append(options[7]);
		if(main == "S")                                                       
			$("#serveOption").append(options[8]).append(options[9]).append(options[10]).append(options[11]);
		if(main == "A")                                                       
			$("#serveOption").append(options[12]).append(options[13]).append(options[14]).append(options[15]);
	});
	
	
});
</script>

<%@ include file="../include/main_bar.jsp" %>

<div class="site-section">

	<div class="container">
		<div class="row">

			<div class="col-md-4">
				<img src="../../resources/images/cloth_1.jpg" alt="Image"
					class="img-fluid">
			</div>
			<form id="formSubmit" role="form" action="/manager/productUpdate" method="post">
			<input type="hidden" name="p_num" value="${boardVo.p_num}"/>
				<div class="col-md-4">

					<!-- 상품 등록 상세 메뉴 select 바-->
					<div>
						<label>main : </label> <select name="p_main" id="mainOption" disabled="disabled">
							<option value="T" selected="selected">상의
							<option value="P">하의
							<option value="A">악세사리
							<option value="S">신발
						</select>
					</div>
					<div>
						<label>serve : </label> <select name="p_serve" id="serveOption">
						<c:if test="${boardVo.p_main == 'T' }">
								<option value="TH">반팔
								<option value="TL">긴팔
								<option value="TS">셔츠
								<option value="TM">맨투맨
							</c:if>
							<c:if test="${boardVo.p_main == 'P' }">
								<option value="PJ">청바지
								<option value="PM">면바지
								<option value="PH">반바지
								<option value="P7">7부바지
							</c:if>
							<c:if test="${boardVo.p_main == 'S' }">
								<option value="SD">구두
								<option value="SU">운동화
								<option value="SS">스릴퍼
								<option value="SR">로퍼
							</c:if>
							<c:if test="${boardVo.p_main == 'A' }">
								<option value="AR">반지
								<option value="AW">지갑
								<option value="AC">모자
								<option value="AB">가방
							</c:if>
						</select>

					</div>


					<h2 class="text-black">
						상품이름:<input type="text" id="p_name" name="p_name" value="${boardVo.p_name}">
					</h2>
					<p id="p_content" name="p_content">상품 설명</p>
					<textarea rows="" cols="" id="p_content" name="p_content">${boardVo.p_content}</textarea>
					<p class="mb-4">상품 설명2</p>
					<p>
						<strong class="text-primary h4">
						 가격:<input type="text" id="p_price" name="p_price" value="${boardVo.p_price}">
						</strong>
					</p>
					<p>상품 코드 
					<input type="text" value="${boardVo.p_main}${boardVo.p_serve}${boardVo.p_num}" disabled="disabled"/>
					</p>
					<!-- 채크 리스트 -->
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
					<div class="mb-5">







						<!-- 상품 등록 버튼 -->
					</div>
					<button type="submit" class="btn btn-sm btn-primary">상품수정하기</button>

				</div>
			</form>

		</div>
	</div>
</div>




<%@ include file="../include/foot.jsp" %>