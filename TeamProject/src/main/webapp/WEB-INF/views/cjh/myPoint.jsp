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
	$("span[name=point_date]").each(function() {
		var point_date = $(this).text();
		var spoint_date = point_date.substring(0, 16);
		console.log("spoint_date : " + spoint_date);
		$(this).text(spoint_date);
	});
});
</script>

<div class="bg-light py-3">
	<div class="container">
		<div class="row">
			<div class="col-md-12 mb-0"><a href="/">Home</a> <span class="mx-2 mb-0">/</span>
				<a href="/cjh/myPoint?u_id=${u_id}">My Point</a>  <span class="mx-2 mb-0"></span>
			</div>
		</div>
	</div>
</div>



<div class="site-section">
	<div class="container">
		<div class="row mb-5">
			<form class="col-md-12" method="post">
				<div class="title"><h1 class="tit">POINT</h1></div>
				<div class="site-blocks-table">
					<table class="table table-bordered">
						<thead style="height: 5px">
							<tr bgcolor="#eeeeee"><th colspan="7" style="text-align: Left;">포인트 정보</th></tr>
							<tr>
								<th style="width: 10%" class="point-number">No</th>
								<th style="width: 40%" class="point-content">포인트내용</th>
								<th style="width: 25%" class="point-value">포인트</th>
								<th style="width: 25%" class="point-date">받은날짜</th>
							</tr>
						</thead>
						
						<tbody>
							<c:if test="${not empty pointVo}">
								<tr class="calculation1_tbody_tr1" style="height: 90px; background-color: #fff;" >
<%-- 										<td style="border-left: none; border-right: none;"><img style="width:15px;" src="/resources/images/${item.p_image}"></td> --%>
									<td style="border-left: none; border-right: none;">${pointVo.point_num}</td>
									
									<td style="text-align:Left; padding-left: 10px; border-left: none; font-weight: bold;">${pointVo.point_content}</td>
									
									<td><span id="point_value" style="padding-left: 10px;">${pointVo.point_value}</span>원</td>
									
									<td><span name="point_date" style="padding-left: 10px;">${pointVo.point_date}</span></td>
									
								</tr>
							</c:if>
							
							<c:if test="${empty pointVo}">
								<tr id="not product" style="background-color: #fff;">
									<td colspan="10" style="font-size: 20pt; color: gray;"><span>포인트 목록이 없습니다.</span></td>
								</tr>
							</c:if>
							
						</tbody>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>

<%@ include file="../include/foot.jsp" %>