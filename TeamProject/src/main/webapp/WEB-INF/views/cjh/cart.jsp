<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/head.jsp" %>

<style>
.title{ 
    width:300px;
    height:100px;
    margin:0 auto;
}
</style>
<script>
$(document).ready(function() {
	$("#allcheck").click(function() {
		if($("#allcheck").prop("checked")) {
			$("input[name=checkbox]").prop("checked", true);
		} else {
			$("input[name=checkbox]").prop("checked", false);
		}
	});
	
	$("#btnplus").click(function() {
		var p_count = $("#p_count").val();
		var np_count = Number(p_count) + 1;
		var p_price = $("#p_price").text();
		var np_price = Number(p_price);
		var sumPrice = $("#sumPrice").text(np_price * np_count);
	});
	
	$("#btnminus").click(function() {
		var p_count = $("#p_count").val();
		var np_count = Number(p_count) - 1;
		var p_price = $("#p_price").text();
		var np_price = Number(p_price);
		console.log(np_price);
		console.log(np_count);
		var sumPrice = $("#sumPrice").text(np_price * np_count);
		console.log(sumPrice);
	});
	
});
</script>

<div class="bg-light py-3">
	<div class="container">
		<div class="row">
			<div class="col-md-12 mb-0"><a href="/cjh/index">Home</a> <span class="mx-2 mb-0">/</span>
				<a href="/cjh/cart">Cart</a>
			</div>
		</div>
	</div>
</div>

<div class="site-section">
	<div class="container">
		<div class="row mb-5">
			<form class="col-md-12" method="post">
				<div class="title"><h1 class="tit">CART</h1></div>
				<div class="site-blocks-table">
					<table class="table table-bordered">
						<thead style="height: 10px">
							<tr bgcolor="#eeeeee"><th colspan="7" style="text-align: Left;">장바구니 목록</th></tr>
							<tr>
								<th style="width: 5%">
									<input type="checkbox" id="allcheck" name="allcheck"/>
								</th>
								<th style="width: 15%" class="product-thumbnail">상품이미지</th>
								<th style="width: 25%" class="product-name">상품내용</th>
								<th style="width: 15%" class="product-price">가격</th>
								<th style="width: 15%" class="product-quantity">수량</th>
								<th style="width: 15%" class="product-total">총가격</th>
								<th style="width: 10%" class="product-remove">삭제</th>
							</tr>
						</thead>
						
						<tbody>
							<c:if test="${not empty list}">
								<c:forEach var="item" items="${list}" varStatus="status">
									<tr class="calculation1_tbody_tr1" style="height: 90px; background-color: #fff;" >
										<td style="text-align: Left; text-align:center; border-right:none; width:10px">
											<input type="checkbox" id="checkbox" name="checkbox"/>
											<input type="hidden" class="buypd${status.index}" value="${item.p_num}">
										</td>
										
<%-- 										<td style="border-left: none; border-right: none;"><img style="width:15px;" src="/resources/images/${item.p_image}"></td> --%>
										<td style="border-left: none; border-right: none;"><img style="width:150px;" src="/resources/images/cloth_1.jpg"></td>
										
										<td style="text-align:Left; padding-left: 10px; border-left: none; font-weight: bold;">${item.p_name}</td>
										
										<td><span id="p_price" style="padding-left: 10px;" class="p_price${status.index}">${item.p_price}</span>원</td>
										
										<td	style="width:150px">
											
											<div class="input-group mb-3" style="max-width: 120px;">
												<div class="input-group-prepend">
													<button id="btnminus" class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
												</div>
												<input id="p_count" type="text" class="form-control text-center" value="${item.p_count}" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
												<div class="input-group-append">
													<button id="btnplus" class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
												</div>
											</div>
										</td>
										
										<td><span id="sumPrice">${item.p_price * item.p_count}</span>원</td>
										
										<td><a href="/cjh/deleteCart?u_id=${u_id}&p_num=${item.p_num}" class="btn btn-basic btn-sm">X</a></td>
									
								</c:forEach>
							</c:if>
							
							<c:if test="${empty list}">
								<tr id="not product" style="background-color: #fff;">
									<td colspan="10" style="font-size: 20pt; color: gray;"><span>장바구니에 등록된 상품이 없습니다.</span></td>
								</tr>
							</c:if>
							
							<tr bgcolor="#eeeeee">
								<th colspan="7" style="text-align: Right;">
									선택항목 삭제 <a href="#" class="btn btn-basic btn-sm">X</a>
								</th>
							</tr>
							
						</tbody>
						
					</table>
				</div>
			</form>
		</div>

		<div class="row">
			<div class="col-md-6">
				<div class="row mb-5">
					<div class="col-md-6 mb-3 mb-md-0">
						<button class="btn btn-primary btn-sm btn-block">Update Cart</button>
					</div>
					<div class="col-md-6">
						<button type="button" onclick="location.href='/lsh/shop'" class="btn btn-outline-primary btn-sm btn-block">Continue Shopping</button>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<label class="text-black h4" for="coupon">Coupon</label>
						<p>Enter your coupon code if you have one.</p>
					</div>
					<div class="col-md-8 mb-3 mb-md-0">
						<input type="text" class="form-control py-3" id="coupon" placeholder="Coupon Code">
					</div>
					<div class="col-md-4">
						<button class="btn btn-primary btn-sm">Apply Coupon</button>
					</div>
				</div>
			</div>
			<div class="col-md-6 pl-5">
				<div class="row justify-content-end">
					<div class="col-md-7">
						<div class="row">
							<div class="col-md-12 text-right border-bottom mb-5">
								<h3 class="text-black h4 text-uppercase">Cart Totals</h3>
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-md-6">
								<span class="text-black">결제 가격</span>
							</div>
							<div class="col-md-6 text-right">
								<span></span>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<button class="btn btn-primary btn-lg py-3 btn-block" onclick="window.location='/cjh/checkout'">결제하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
	    </div>
	</div>
</div>

<%@ include file="../include/foot.jsp" %>