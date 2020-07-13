<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head.jsp" %>
<%@ include file="../include/main_bar.jsp" %>

	<div class="row">
	<div class="col-md-2" >
	
	</div>
		<div class="col-md-8">
			<div class="btn-group" role="group">
				 
				<button class="btn btn-secondary" type="button">
					Left
				</button> 
				<button class="btn btn-secondary" type="button">
					Center
				</button> 
				<button class="btn btn-secondary" type="button">
					Right
				</button> 
				<button class="btn btn-secondary" type="button">
					Justify
				</button>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table class="table">
						<thead>
							<tr>
								<th>
									#
								</th>
								<th>
									Product
								</th>
								<th>
									Payment Taken
								</th>
								<th>
									Status
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									1
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									01/04/2012
								</td>
								<td>
									Default
								</td>
							</tr>
							
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