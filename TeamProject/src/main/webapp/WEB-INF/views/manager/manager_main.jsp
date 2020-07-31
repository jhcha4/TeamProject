<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/head.jsp"%>
<%@ include file="../include/main_bar.jsp"%>




<div class="row">
	<div class="col-md-12">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<div class="row">
					<div class="col-md-6">
					<%@ include file="rodChart.jsp"%>
					</div>
					<div class="col-md-6">
					<%@ include file="salesList.jsp"%>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<table class="table">
							<thead>
								<tr>
									<th>Q&A number</th>
									<th>제목</th>
									<th>작성자</th>
									<th>답변 현황</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>제목1</td>
									<td>작성자1</td>
									<td>현황1</td>
								</tr>
								
							</tbody>
						</table>
					</div>
					<div class="col-md-6">
						<table class="table">
							<thead>
								<tr>
									<th>리뷰</th>
									<th>베목</th>
									<th>작성자</th>
									<th>별점</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>TB - Monthly</td>
									<td>01/04/2012</td>
									<td>Default</td>
								</tr>
							
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
</div>
<%@ include file="../include/foot.jsp"%>