<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 




<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<a href="/jm/jm_insertReviewForm" class="btn btn-info">후기 작성</a>
		
			<table class="table">
				
					
				<thead>
					<tr>
						<th>
							후기 번호[내용보기]
							
						</th>
						<th>
							아이디
						</th>
						<th>
							제목
						</th>
						<th>
							시간
						</th>
						<th>
							상품
						</th>
						<th>
							평점
						</th>
					</tr>
					
				</thead>
				<tbody>
				<c:forEach items="#{list}" var="jmReviewVo">
					<tr class="table-warning">
						<td>
						<a href="/jm/jm_reviewInfo/${jmReviewVo.r_info}" class="btn btn-sm btn-danger">${jmReviewVo.r_info}</a>
						</td>
						<td>
							${jmReviewVo.r_id}
						</td>
						<td>
							${jmReviewVo.r_subject}
						</td>
						<td>
							${jmReviewVo.r_time}
						</td>
						<td>
							${jmReviewVo.r_item}
						</td>
						<td>
							${jmReviewVo.r_star}
						</td>
					</tr>
					
					</c:forEach>	
				</tbody>
			</table>
		</div>
	</div>
</div>










<%@ include file="../include/foot.jsp" %>