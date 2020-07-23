<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/head.jsp" %>

<script>
$(function() {
	var arrSize = [];
	function checkSize(size) {
		for (var v = 0; v < arrSize.length; v++) {
			if (size == arrSize[v]) {
				return true;
			}
		}
		arrSize.push(size);
		return false;
	}
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
		var size = $("#size").val();
		var isChecked = checkSize(size);
		console.log(isChecked);
		if (isChecked == true) {
			return;
		}
		var html = "<div class='input-group mb-3' style='max-width: 400px;'>";
		html += "<h5 id='name'>${lshBoardVo.p_name}["+size+"]</h5>";
		html += "<input name='p_count' type='number' min='1' class='form-control text-center' value='1'>";
		html += "<a href='#'class='delete'><h3>x</h3></a>"
		html += "<h5 class='sumPrice'>${lshBoardVo.p_price}</h5><h5>원</h5>"
		html += "</div>";
		
		$("#hidden").append(html);
		
		var totalPrice = 0;
		var count = $(this).val();
		var price = $(".h4").text();
		$(this).next().next().text(count*price);
		$(".sumPrice").each(function(index, element) {
			var tPrice = $(this).text();
			var nPrice = Number(tPrice);
			totalPrice += nPrice;
		});
		$("#total").text(totalPrice);
		
	});
	$("#hidden").on("click", ".delete", function(e) {
		e.preventDefault();
		var that = $(this);
		var sumPrice = $(this).next().text();
		var nPrice = Number(sumPrice);
		var total = $("#total").text();
		var totalPrice = Number(total);
		$("#total").text(totalPrice - nPrice);
		that.parent().remove();
	});
	$("#hidden").on("change", "input[name=p_count]", function() {
		var totalPrice = 0;
		var count = $(this).val();
		var price = $(".h4").text();
		$(this).next().next().text(count*price);
		$(".sumPrice").each(function(index, element) {	
			var tPrice = $(this).text();
			var nPrice = Number(tPrice);
			totalPrice += nPrice;
		});
		$("#total").text(totalPrice);
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
				 <figure class="block-4-image">
				 	<img src="/upload/displayFile?fileName=${lshBoardVo.title_name}">
				 </figure>
          </div>
          <div class="col-md-6">
            <h2 class="text-black">${lshBoardVo.p_name}</h2>
            <p>${lshBoardVo.p_content}</p>
            <p><strong class="text-primary h4">${lshBoardVo.p_price}</strong>원</p>
            <div class="mb-1 d-flex">
	            <h4>Size:</h4>
	            <select id="size">
	            		<option selected disabled>-- 사이즈를 선택해주세요 --</option>
		               	<option value="S">S</option>
		               	<option value="M">M</option>
		               	<option value="L">L</option>
		               	<option value="XL">XL</option>	
	            </select>
            </div>
            
            <div id="hidden">
            </div>
            <h2>가격 :<span id="total">0</span>원</h2>
            
            <div class="mb-6" style="display:none">
              <div class="input-group mb-3" style="max-width: 250px;">
         		   <h4 id="name">${lshBoardVo.p_name}</h4>
         		   <input name="p_count" type="number" min="1" class="form-control text-center" value="1">
              </div>
            </div>
            
            <p><a id="insertCart" class="buy-now btn btn-sm btn-primary">장바구니에 담기</a></p>
			
          </div>
          
          <c:forEach items="${imgList}" var="lshBoardVo">
				<img src="/upload/displayFile?fileName=${lshBoardVo.file_name}">
		  </c:forEach>
			
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
                  <figure class="block-4 title" >
                    <img src="/upload/displayFile?fileName=${lshBoardVo.title_name}">
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