<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/head.jsp" %>
<style>
  
.title{ 
    width:300px;
    height:100px;
    margin:0 auto;
}
.point{
	width:1000px; 
	height:140px; 
	text-align:left; 
	padding:7px; 
	font-size:14pt; 
	border:1px solid black;
}
.pointText{
	text-align:right; 
	float:right;
	font-size:14pt; 
}
</style>


<div class="bg-light py-3">
	<div class="container">
		<div class="row">
			<div class="col-md-12 mb-0"><a href="/cjh/index">Home</a> <span class="mx-2 mb-0">/</span>
				<a href="/cjh/mypage">My Page</a>  <span class="mx-2 mb-0">/</span>
				<a href="/cjh/order">Order</a>  <span class="mx-2 mb-0">/</span>
				<a href="/cjh/cart">Cartt</a>
			</div>
		</div>
	</div>
</div>

<div class="site-section">
	<div class="container">
    	<div class="row">
			<div class="col-lg-12">
				<div class="title"><h1>MY PAGE</h1></div>
				<div class="point">
					<ul>
						<li class=" ">
				            <strong class="title">가용포인트</strong>
				            <strong class="data">&nbsp;<span class="pointText" id="nowPoint">0원</span></strong>
				        </li>
				        <li class="">
				            <strong class="title">총포인트</strong>
				            <strong class="data"><span class="pointText" id="totalPoint">0원</span></strong>
				        </li>
				        <li class="">
				            <strong class="title">사용포인트</strong>
				            <strong class="data"><span class="pointText" id="usedPoint">0원</span></strong>
				        </li>
				        <li>
				            <strong class="title">총주문</strong>
				            <strong class="data"><span class="pointText" id="usedPoint">₩0</span>(<span id="totalOrderCount">0</span>회)</strong>
				        </li>
				    </ul>
				</div>
				
				<div>
			        <li>
			        <h3><a href="/cjh/order">주문내역</a></h3>
			        </li>
			    </div>
			    
				<div>
			        <li>
			        <h3><a href="/cjh/modifyMyInfo?u_id=${u_id}">내정보</a></h3>
			        </li>
			    </div>
			    
				<div>
			        <li>
			        <h3><a href="/cjh/cart">장바구니</a></h3>
			        </li>
			    </div>
			    
				<div>
			        <li>
			        <h3><a href="/cjh/myPoint">적립금</a></h3>
			        </li>
			    </div>
				
			</div>
    <!-- /.row -->

		</div>

	</div>
</div>


<%@ include file="../include/foot.jsp" %>