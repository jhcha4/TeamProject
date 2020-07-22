<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/head.jsp" %>

<script>
$(function() {
	$("input[name=p_count]").change(function() {
		var p_count = $(this).val();
		$(this).val(p_count);
// 		console.log("p_count : "+ p_count);
	});
	
	$("#insertCart").click(function(e) {
		e.preventDefault();
		var p_count = $("input[name=p_count]").val();
// 		console.log(p_count);
		location.href="/cjh/insertCart?u_id=${u_id}&p_num=${lshBoardVo.p_num}&p_count="+p_count;
	});
	$("#size").change(function() {
		$(".mb-6").attr("style", "display:block");
		var size = $("#size").val();
		$("#name").append("[" + size + "]");
	});
});
</script>

    <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0">
	          <a href="/">Home</a> 
	          <span class="mx-2 mb-0">/</span> 
	          <a href="shop">Shop</a>  
	          <span class="mx-2 mb-0">/</span>
	          <strong class="text-black">${lshBoardVo.p_name}</strong>
          </div>
        </div>
      </div>
    </div> 
    
    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
			<c:forEach items="${imgList}" var="Kys_ImgVo">
				 <figure class="block-4-image">
				 	<img src="/upload/displayFile?fileName=${Kys_ImgVo.file_name}">
				 </figure>
			 </c:forEach>
          </div>
          <div class="col-md-6">
            <h2 class="text-black">${lshBoardVo.p_name}</h2>
            <p>${lshBoardVo.p_content}</p>
            <p><strong class="text-primary h4">${lshBoardVo.p_price}원</strong></p>
            <div class="mb-1 d-flex">
	            <h4>사이즈:</h4>
	            <select id="size">
	            		<option>사이즈를 선택해주세요</option>
		               	<option value="S">S</option>
		               	<option value="M">M</option>
		               	<option value="L">L</option>
		               	<option value="XL">XL</option>	
	            </select>
            </div>
            
            <div class="mb-6" style="display:none">
              <div class="input-group mb-3" style="max-width: 250px;">
         		   <h4 id="name">${lshBoardVo.p_name}</h4><input name="p_count" type="number" min="1" class="form-control text-center" value="1">
              </div>
            </div>
            
            <p><a id="insertCart" class="buy-now btn btn-sm btn-primary">장바구니에 담기</a></p>

          </div>
        </div>
      </div>
    </div>

    <div class="site-section block-3 site-blocks-2 bg-light">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7 site-section-heading text-center pt-4">
            <h2>주요 상품</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="nonloop-block-3 owl-carousel">
            
            <c:forEach items="${MostList}" var="lshBoardVo">
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image title" >
                    <img src="../../resources/images/cloth_1.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="shop_single?p_num=${lshBoardVo.p_num}" class="title">${lshBoardVo.p_name}</a></h3>
                    <p class="mb-0">${lshBoardVo.p_content}</p>
                    <p class="text-primary font-weight-bold">${lshBoardVo.p_price}원</p>
                  </div>
                </div>
              </div>
             </c:forEach>
              
            </div>
          </div>
        </div>
        
      </div>
    </div>

<%@ include file="../include/foot.jsp" %>