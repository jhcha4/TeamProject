<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   





 ${jmPagingDto}

 <p>관리자 유저정보 관리 페이지 입니다</p>

 <%@ include file="../include/main_bar.jsp" %>
 
<script>
$(function(){
	
	
	
	
	
	
});




</script>




 
 
 
 
 
 
 
 
 
 
 
 
 
 <!-- 페이지 링크 -->
 <form id="frmPage" action="/jm/jm_userList" method="get">
 	<input type="hidden" name="u_info" value="${jmMemberVo.u_info}">
 	<input type="hidden" name="page" value="${jmPagingDto.page}">
 	<input type="hidden" name="perPage" value="${jmPagingDto.perPage}">
 	<input type="hidden" name="searchType" value="${jmPagingDto.searchType}">
 	<input type="hidden" name="keyword" value="${jmPagingDto.keyword}">
 
 
 
 </form>
 
	<select name="perPage">
		<c:forEach begin="5" end="30" step="5" var="i">
			<option value="${i}"
				<c:if test="${i==jmPaingDto.perPage}">selected</c:if>
			>${i}줄씩 보기</option>
		</c:forEach>
	</select> 
	
	
	<select name="searchType" class="form-inline">
		<option value="u_id"
		<c:if test="${jmPagingDto.searchType =='u_id'}">selected</c:if>
		>아이디</option>
		
		<option value="u_grade"
		<c:if test="${jmPagingDto.searchType =='u_grade' }">selected</c:if>
		>등급</option>
	</select>
	
	<input type="text" id="keyword" name="keyword" class="form-inline"
		value="${jmPagingDto.keyword}"
	/>
	<button type="button" id="btnSearch" class="btn btn-info">검색</button>
	
	



 <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<table class="table">
				<thead>
					<tr>
						<th>
							아이디
						</th>
						<th>
							이름
						</th>
						<th>
							이메일
						</th>
						<th>
							주소
						</th>
						<th>
							폰번호
						</th>
						<th>
							성별
						</th>
						<th>
							등급
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="jmMemberVo">
					<tr>
						<td>
							${jmMemberVo.u_id}
						</td>
						<td>
							${jmMemberVo.u_name}
						</td>
						<td>
							${jmMemberVo.u_email}
						</td>
						<td>
							${jmMemberVo.u_address}
						</td>
						<td>
							${jmMemberVo.u_phone}
						</td>
						<td>
							${jmMemberVo.u_gender}
						</td>
						<td>
							${jmMemberVo.u_grade}
						</td>
						<td>
							<a type="button" class=" btn btn-sm  btn-warning" href="/jm/jm_userUpdate?u_id=${jmMemberVo.u_id}">유저 수정</a>
						</td>
						<td>
							<a type="button" class=" btn btn-sm  btn-danger"  href="/jm/jm_userDelete?u_id=${jmMemberVo.u_id}" >유저 삭제</a>
						</td>
					</tr>
					</c:forEach>
					
					
				</tbody>
			</table>
		</div>
	</div>
</div>
 
 
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-4">
				</div>
				<div class="col-md-4">
					<nav>
						<ul class="pagination">
						
						<c:if test="${jmPagingDto.startPage !=1 }">
							<li class="page-item">
								<a class="page-link" href="${jmPagingDto.startPage-1}">&laquo;</a>
							</li>
						</c:if>	
						<c:forEach begin="${jmPagingDto.startPage}" end="${jmPagingDto.endPage }" var="s">
							<li class="page-item">
								<a class="page-link" href="${s}">${s}</a>
							</li>
						</c:forEach>	
						<c:if test="${jmPagingDto.endPage <jmPagingDto.totalPage}">
							<li class="page-item">
								<a class="page-link" href="${jmPagingDto.endPage+1 }">&raquo;</a>
						</c:if>		
							</li>
						</ul>
					</nav>
				</div>
				<div class="col-md-4">
				</div>
			</div>
		</div>
	</div>
</div>




<%@ include file="../include/foot.jsp" %>