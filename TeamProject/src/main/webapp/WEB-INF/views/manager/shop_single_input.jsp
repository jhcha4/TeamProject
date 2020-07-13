<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/head.jsp" %>
<script type="text/javascript" >
$(function() {
	var options = $("#serveOption option");
	$("select[name=mainOption]").change(function(){
		$("#serveOption option").remove();
		var main = $(this).val();
		var serve = $("select[name=serveOption]").val();
		console.log(main);
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
    <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0"><a href="index.html">Home</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Tank Top T-Shirt</strong></div>
        </div>
      </div>
    </div>  
<%@ include file="../include/main_bar.jsp" %>

    <div class="site-section">
    
      <div class="container">
        <div class="row">
   		
          <div class="col-md-4">
            <img src="../../resources/images/cloth_1.jpg" alt="Image" class="img-fluid">
          </div>
          <form action="shop_single_input" method="post">
          <div class="col-md-4">
          
          	<!-- 상품 등록 상세 메뉴 -->
          	<div>
			<label>main : </label> 
			<select name="main_code" id="mainOption">
				<option value="T">상의
				<option value="P">하의
				<option value="A">악세사리
				<option value="S">신발
			</select>
		</div>
		<div>
			<label>serve : </label> 
			<select name="serve_code" id="serveOption">
				<option value="TH">반팔
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
		
		
            <h2 class="text-black" >상품이름:<input type="text" id="p_name" name="p_name"></h2>
          	  <p id="p_content" name="p_content">상품 설명</p>
            <textarea rows="" cols="" id="p_content"></textarea>
          	  <p class="mb-4">상품 설명2</p>
            <p><strong class="text-primary h4">
            가격:<input type="text" id="p_price" name="p_price">
            </strong></p>
           
            <div class="mb-1 d-flex">
              <label for="option-sm" class="d-flex mr-3 mb-3">
                <span class="d-inline-block mr-2" style="top:-2px; position: relative;">
                <input type="checkbox" id="option-sm" name="shop-sizes"></span> 
                <span class="d-inline-block text-black">Small</span>
              </label>
              <label for="option-md" class="d-flex mr-3 mb-3">
                <span class="d-inline-block mr-2" style="top:-2px; position: relative;">
                <input type="checkbox" id="option-md" name="shop-sizes"></span> 
                <span class="d-inline-block text-black">Medium</span>
              </label>
              <label for="option-lg" class="d-flex mr-3 mb-3">
                <span class="d-inline-block mr-2" style="top:-2px; position: relative;">
                <input type="checkbox" id="option-lg" name="shop-sizes"></span> 
                <span class="d-inline-block text-black">Large</span>
              </label>
              <label for="option-xl" class="d-flex mr-3 mb-3">
                <span class="d-inline-block mr-2" style="top:-2px; position: relative;">
                <input type="checkbox" id="option-xl" name="shop-sizes"></span> 
                <span class="d-inline-block text-black"> Extra Large</span>
              </label>
            </div>
            <div class="mb-5">
              <div class="input-group mb-3" style="max-width: 120px;">
              <div class="input-group-prepend">
                <button class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
              </div>
              <input type="text" class="form-control text-center" value="1" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
              <div class="input-group-append">
                <button class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
              </div>
            </div>

            </div>
            <p><input type="submit" class="buy-now btn btn-sm btn-primary">상품 등록하기</input></p>

          </div>
       </form>
      
        </div>
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