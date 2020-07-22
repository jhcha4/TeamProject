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
	$("td[name=p_date]").each(function() {
		var p_date = $(this).text();
		var sp_date = p_date.substring(0, 16);
		console.log("sp_date : " + sp_date);
		$(this).text(sp_date);
	});
});
</script>

{list}

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
						<th>주문번호</th>
						<th colspan="2">상품정보</th>
						<th>SIZE</th>
						<th>수량</th>
						<th>주문금액</th>
						<th>주문날짜</th>
						<th>진행상태</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${not empty list}">
						<c:forEach var="item" items="${list}" varStatus="status">
							<tr class="calculation1_tbody_tr1" style="height: 90px; background-color: #fff;" >
								<td style="text-align: Left; text-align:center; width:10%">
									${item.c_num}
								</td>
								
								<td style="border-right: none;"><img style="width:150px; " src="/resources/images/cloth_1.jpg"></td>
								<td style="border-left: none;">${item.p_name}</td>
								
								<td style="text-align:center; font-weight: bold;">
									${item.p_size}
								</td>
								<td style="text-align:center; font-weight: bold;">
									${item.p_count}
								</td>
								<td>
									<a name="p_price" style="padding-left: 10px;">${item.p_price * item.p_count}</a>
								</td>
								
								<td name="p_date" style="text-align:center; padding-left: 10px; font-weight: bold;">${item.p_date}</td>
								
								<td	style="width:10%">
									${item.o_status}
								</td>
								
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