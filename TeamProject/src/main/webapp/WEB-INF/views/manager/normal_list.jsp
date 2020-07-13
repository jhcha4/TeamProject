<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head.jsp" %>
<%@ include file="../include/main_bar.jsp" %>

	<div class="row">
	<div class="col-md-2" >

	</div>
		<div class="col-md-8">
		
			<div class="row">
				<div class="col-md-12">
					<table class="table">
						<thead>
						<tr>
							<th>상품 코드</th>
							<th>상품 이름</th>
							<th>가격</th>
							<th></th>
							<th></th>
						</tr>
					</thead>
						<tbody>
						<c:forEach items="${list}" var="BoardVo">
						<tr>
							<td>${BoardVo.p_main}${BoardVo.p_serve}${BoardVo.p_num}</td>
							<td>${BoardVo.p_name}</td>
							<td>${BoardVo.p_price}</td>
							<td><a type="button" class="btn btn-sm">수정</a></td>
							<td><a type="button" class="btn btn-sm">삭제</a></td>
						</tr>
						</c:forEach>
					</tbody>
					</table>
				</div>
			</div>
			<nav class="pagination-sm">
				<ul class="pagination">
					<li class="page-item">
						<a class="page-link" href="#">Previous</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">1</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">2</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">3</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">4</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">5</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">Next</a>
					</li>
				</ul>
			</nav>
		</div>
		<div class="col-md-2">
		</div>
		</div>
	</div>




<%@ include file="../include/foot.jsp" %>