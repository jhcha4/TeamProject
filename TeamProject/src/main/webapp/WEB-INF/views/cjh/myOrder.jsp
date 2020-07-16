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

<div class="bg-light py-3">
	<div class="container">
		<div class="row">
			<div class="col-md-12 mb-0"><a href="/cjh/index">Home</a> <span class="mx-2 mb-0">/</span>
				<a href="/cjh/order">Order</a>  <span class="mx-2 mb-0"></span>
			</div>
		</div>
	</div>
</div>

<div class="site-section">
	<div class="container">
		<div class="title"><h1>ORDER</h1></div>
		<div class="site-blocks-table">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>상품정보</th>
						<th>주문번호</th>
						<th>수량</th>
						<th>주문금액</th>
						<th>진행상태</th>
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
										
										<td style="border-left: none; border-right: none;"><img style="width:150px;" src="/resources/images/cloth_1.jpg"></td>
										
										<td style="text-align:Left; padding-left: 10px; border-left: none; font-weight: bold;">${item.p_name}</td>
										<input type="hidden" id="p_num" value="${item.p_num}">
										<td><a name="p_price" style="padding-left: 10px;" class="p_price${status.index}">${item.p_price}</a></td>
										
										<td	style="width:150px">
											
											<div class="input-group mb-3" style="max-width: 120px;">
												<input name="p_count" type="number" min="1" class="form-control text-center" value="${item.p_count}">
											</div>
										</td>
										
										<td><a class="sumPrice" id="sumPrice${status.index}" name="sumPrice">${item.p_price * item.p_count}</a>원</td>
										
										<td><a href="/cjh/deleteCart?u_id=${u_id}&p_num=${item.p_num}" class="btn btn-basic btn-sm">X</a></td>
									</tr>
								</c:forEach>
							</c:if>
							
							<c:if test="${empty list}">
								<tr id="not product" style="background-color: #fff;">
									<td colspan="10" style="font-size: 20pt; color: gray;"><span>주문내역이 없습니다.</span></td>
								</tr>
							</c:if>
					
				</tbody>
			</table>
		</div>
	</div>
</div>




<%@ include file="../include/foot.jsp" %>