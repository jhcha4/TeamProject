<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head.jsp" %>

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
				<div class="title"><h1 class="tit">CART</h1></div>
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
									<td colspan="10" style="font-size: 20pt; color: gray;"><span>포인트 목록이 없습니다.</span></td>
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
	</div>
</div>

<%@ include file="../include/foot.jsp" %>