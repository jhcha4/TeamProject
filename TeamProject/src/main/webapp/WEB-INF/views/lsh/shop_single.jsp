<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/head.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
		var u_id = "${sessionScope.u_id}";
		
		
// 		var u_id = $("#u_id").text();
		if (u_id == null || u_id == "") {
			if(confirm("로그인후 이용가능합니다. 로그인 하시겠습니까?")) {
				var p_num = $("#p_num").text();
				var p_serve = $("#p_serve").text();
			    var targetLocation = "/lsh/shop_single?p_num="+p_num+"&p_serve="+p_serve;
			    location.href = "/cjh/login?targetLocation=" + targetLocation;
// 				location.href="/lsh/shop_single?p_num="+p_num+"&p_serve="+p_serve;
			}
		} else {
			p_num = $("#p_num").text();
			console.log("p_num : " + p_num);
			var countArr = new Array();
			var sizeArr = new Array();
			$("h5[name=p_size]").each(function() {
				var size = $(this).text();
				sizeArr.push(size);
			});
			if ((sizeArr).length == 0) {
				alert("상품을 선택해주세요");
				return;
			}
			console.log("sizeArr : " + sizeArr);
			$("input[name=p_count]").each(function() {
				var count = $(this).val();
				countArr.push(count);
			});
			
			var sendData = {
				"p_num"			:	p_num,
			    "countArr"	:	countArr,
			    "sizeArr"		:	sizeArr
			};

//	 		var sendData = {
//	 				"p_num" : 1450,
//	 				"sizeArr" : ["S", "M"],
//	 				"countArr" : ["1", "2"]
//	 		};
			
			var strSendData = JSON.stringify(sendData);
			console.log("strSendData", strSendData);
			console.log('sendData', sendData);
			var url = "/cjh/insertCart";
			$.ajaxSettings.traditional = true;
//	 		$.ajax({
//	 		    type        : "POST",
//	 		    url         : url,
//	 		    contentType :'application/json; charset=UTF-8',
//	 		    data        : sendData,
//	 		    traditional : true,
//	 		    success : function (data){
//	 		    	location.href="/cjh/cart";
//	 		    }
//	 		});

			$.post(url, sendData, function(data) {
				var p_num = $("#p_num").text();
				var p_serve = $("#p_serve").text();
	 			location.href="/cjh/cart";
			});
		}
	});
	$("#size").change(function() {
// 		$("#insertCart").attr("disabled", false);
		var size = $("#size").val();
		var isChecked = checkSize(size);
		console.log(isChecked);
		if (isChecked == true) {
			return;
		}
		var html = "<div class='input-group mb-3' style='max-width: auto; border:1px solid blue;'>";
		html += "<h4 id='name'>${lshBoardVo.p_name}[</h4><h4 name=p_size>"+size+"</h4><h4>]</h4>";
		html += "<h4>&nbsp&nbsp| 수량 :</h4>"
		html += "<input name='p_count' type='number' min='1' class='form-control text-center' value='1'>";
		html += "<a href='#'class='delete'><h3>x</h3></a>"
		html += "<h4 class='sumPrice'>${lshBoardVo.p_price}</h4><h4>원</h4>"
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
		
		$(this).find("option:first").prop("selected", true);
		
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
		arrSize = [];
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
	
	$("a.title").click(function(e) {
		e.preventDefault();
		var p_num = $(this).attr("data-p_num");
		var p_serve = $(this).attr("data-p_serve")
		$("#singlePage > input[name=p_num]").val(p_num);
		$("#singlePage > input[name=p_serve]").val(p_serve);
		$("#singlePage").attr("action", $(this).attr("href"));
		$("#singlePage").submit();
	});
	
	if ("${S_sizeCnt}" == 0 || "${S_sizeCnt}" == null) {
		$("select option[value='S']").prop('disabled',true);
	}
	if ("${M_sizeCnt}" == 0 || "${M_sizeCnt}" == null) {
		$("select option[value='M']").prop('disabled',true);
	}
	if ("${L_sizeCnt}" == 0 || "${L_sizeCnt}" == null) {
		$("select option[value='L']").prop('disabled',true);
	}
	if ("${XL_sizeCnt}" == 0 || "${XL_sizeCnt}" == null) {
		$("select option[value='XL']").prop('disabled',true);
	}
});
</script>
<%@ include file="frmPage.jsp" %>
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
	            <c:if test="${lshBoardVo.p_main == 'T' || lshBoardVo.p_main == 'P' || lshBoardVo.p_main == 'S'}">
		            <select id="size">
		            	<c:if test="${lshBoardVo.p_main == 'T' || lshBoardVo.p_main == 'P'}">
		            		<option selected disabled>-- 사이즈를 선택해주세요 --</option>
		            		
			               	<option value="S">S 수량:(
			               		<c:choose>
					               	<c:when test="${S_sizeCnt == null || S_sizeCnt == 0}">
										품절
									</c:when>
									<c:otherwise>
										${S_sizeCnt}
									</c:otherwise> 
								</c:choose>
							)</option>
							
			               	<option value="M">M 수량:(
			               		<c:choose>
					               	<c:when test="${M_sizeCnt == null || M_sizeCnt == 0}">
										품절
									</c:when>
									<c:otherwise>
										${M_sizeCnt}
									</c:otherwise> 
								</c:choose>
							)</option>
							
							<option value="L">L 수량:(
			               		<c:choose>
					               	<c:when test="${L_sizeCnt == null || L_sizeCnt == 0}">
										품절
									</c:when>
									<c:otherwise>
										${L_sizeCnt}
									</c:otherwise> 
								</c:choose>
							)</option>
							
							<option value="XL">XL 수량:(
			               		<c:choose>
					               	<c:when test="${XL_sizeCnt == null || XL_sizeCnt == 0}">
										품절
									</c:when>
									<c:otherwise>
										${XL_sizeCnt}
									</c:otherwise> 
								</c:choose>
							)</option>
							
			            </c:if>
			            
			            <c:if test="${lshBoardVo.p_main == 'S'}">
		            		<option selected disabled>-- 사이즈를 선택해주세요 --</option>
			               	<option value="S">250</option>
			               	<option value="M">260</option>
			               	<option value="L">270</option>
			               	<option value="XL">280</option>
			            </c:if>
		            </select>
	            </c:if>
	            
            </div>
            
            <div id="hidden">
            	<c:if test="${lshBoardVo.p_main == 'A'}">
	            	<div class='input-group mb-3' style='max-width: auto;'>
		            	<h5 id="name">${lshBoardVo.p_name}</h5>
		            	<h5>&nbsp&nbsp| 수량 :</h5>
		            	<input name='p_count' type='number' min='1' class='form-control text-center' value='1'>
		            	<a></a>
		            	<h5 class='sumPrice'>
		            		${lshBoardVo.p_price}
		            	</h5>
		            	<h5>원</h5>
		            </div>
	            </c:if>
            </div>
            <h2>가격 :<span id="total" style="color: black">0</span>원</h2>
            
            <div id="p_num" style="display:none">${lshBoardVo.p_num}</div>
            <div id="p_serve" style="display:none">${lshBoardVo.p_serve}</div>
            
            <p><button id="insertCart" class="buy-now btn btn-sm btn-primary">장바구니에 담기</button></p>
			
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
            <h2>관련 상품</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="nonloop-block-3 owl-carousel">
            
            <c:forEach items="${relationList}" var="lshBoardVo">
              <div class="item">
                <div class="block-4 text-center" >
                  <a class="block-4 title" href="shop_single" data-p_num="${lshBoardVo.p_num}">
                    <img src="/upload/displayFile?fileName=${lshBoardVo.title_name}">
                  </a>
                  <div class="block-4-text p-4">
                    <h3><a href="shop_single" class="title" data-p_num="${lshBoardVo.p_num}">
                    	${lshBoardVo.p_name}</a>
                    </h3>
                    <p class="mb-0">${lshBoardVo.p_content}</p>
                    <p class="text-primary font-weight-bold">
                    <fmt:formatNumber value="${lshBoardVo.p_price}" pattern="#,###"/>원
					</p>
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