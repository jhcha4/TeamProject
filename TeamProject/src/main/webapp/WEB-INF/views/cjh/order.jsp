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
				<a href="/cjh/mypage">My Page</a>  <span class="mx-2 mb-0">/</span>
				<a href="/cjh/order">Order</a>  <span class="mx-2 mb-0">/</span>
				<a href="/cjh/cart">Cart</a>
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
					<tr>
						<td class="product-thumbnail">
							<img src="../../resources/images/cloth_1.jpg" alt="Image" class="img-fluid">
						</td>
						<td>1</td>
						<td>TB - Monthly</td>
						<td>01/04/2012</td>
						<td>Default</td>
					</tr>
					<tr>
						<td class="product-thumbnail">
							<img src="../../resources/images/cloth_2.jpg" alt="Image" class="img-fluid">
						</td>
						<td>2</td>
						<td>TB - Monthly</td>
						<td>01/04/2012</td>
						<td>Default</td>
					</tr>
					
				</tbody>
			</table>
		</div>
	</div>
</div>




<%@ include file="../include/foot.jsp" %>