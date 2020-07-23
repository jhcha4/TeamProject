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

<script>
$(document).ready(function() {
	var totalPoints = 0;
	var usePoints = 0;
	
	$(".getPoints").each(function() {
		$(this).css("display", "none");
	});
	
	$("input[name=getPoints]").each(function() {
		var point = $(this).val();
		totalPoints += Number(point);
// 		console.log(totalPoints);
		$("#totalPoints").text(totalPoints + " 원");
	});
	
	
	$(".usePoints").each(function() {
		$(this).css("display", "none");
	});
	
	$("input[name=usePoints]").each(function() {
		var point = $(this).val();
		usePoints += Number(point);
// 		console.log(usePoints);
		$("#usePoints").text(usePoints + " 원");
		$("#usedPoint").text(usePoints + " 원");
	});
	
});
</script>

<c:forEach var="item" items="${getList}" varStatus="status">
	<tr class="getPoints" style="height: 90px; background-color: #fff;" >
		<td><input style="display:none;" name="getPoints" value = "${item.point_value}"/></td>
	</tr>
</c:forEach>

<c:forEach var="item" items="${useList}" varStatus="status">
	<tr class="usePoints" style="height: 90px; background-color: #fff;" >
		<td><input style="display:none;" name="usePoints" value = "${item.point_value}"/></td>
	</tr>
</c:forEach>

<div class="bg-light py-3">
	<div class="container">
		<div class="row">
			<div class="col-md-12 mb-0"><a href="/cjh/index">Home</a> <span class="mx-2 mb-0">/</span>
				<a href="/cjh/mypage?u_id=${u_id}">My Page</a>  <span class="mx-2 mb-0"></span>
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
				        <li class="">
				            <strong class="title">총포인트</strong>
				            <strong class="data"><span id="totalPoints" class="pointText" id="totalPoint">${u_point}원</span></strong>
				        </li>
				        <li class="">
				            <strong class="title">사용포인트</strong>
				            <strong class="data"><span id="usePoints" class="pointText" id="usePoints">0원</span></strong>
				        </li>
						<li class=" ">
				            <strong class="title">가용포인트</strong>
				            <strong class="data">&nbsp;<span class="pointText" id="nowPoint">${u_point}원</span></strong>
				        </li>
				        <li>
				            <strong class="title">총 주문상품</strong>
				            <strong class="data"><span class="pointText" id="usedPoint">₩0</span>(<span id="totalOrderCount">0</span>개)</strong>
				        </li>
				    </ul>
				</div>
				
				<div>
			        <li>
			        <h3><a href="/cjh/myOrder?u_id=${u_id}">주문내역</a></h3>
			        </li>
			    </div>
			    
				<div>
			        <li>
<%-- 			        <h3><a href="/cjh/modifyMyInfo?u_id=${u_id}">내정보 수정</a></h3> --%>
			        <h3><a href="/cjh/pwCheck">내정보 수정</a></h3>
			        </li>
			    </div>
			    
				<div>
			        <li>
			        <h3><a href="/cjh/cart?u_id=${u_id}">장바구니</a></h3>
			        </li>
			    </div>
			    
				<div>
			        <li>
			        <h3><a href="/cjh/myPoint?u_id=${u_id}&point_code=1">적립금</a></h3>
			        </li>
			    </div>
				
			</div>
    <!-- /.row -->

		</div>

	</div>
</div>


<%@ include file="../include/foot.jsp" %>