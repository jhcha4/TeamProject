<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 


${jmPagingDto}


<script>
$(function(){

	//몇개씩 보기
	$("select[name=perPage]").change(function(){
		console.log($(this).val());
		$("#frmPage >input[name=perPage]").val($(this).val());
		$("#frmPage").submit();
		
	});
	
	
	//페이지 번호
	
	$("a.page-link").click(function(e){
		e.preventDefault();
		var page = $(this).attr("href").trim();
							//속성이 name이 page인것
		$("#frmPage>input[name=page]").val(page);
		$("#frmPage").submit();	
	});
	
	
	
	
	//검색 버튼
	$("#btnSearch").click(function(){
		var searchType = $("select[name=searchType]").val();
		var keyword = $("#keyword").val();
		console.log(searchType);
		$("#frmPage >input[name=searchType]").val(searchType);
		$("#frmPage >input[name=keyword]").val(keyword);
		$("#frmPage").submit();	
	});
	
	//현재 페이지 액티브
	
	$("a.page-link").each(function(){
		var page = $(this).attr("href");
		if(page =="${jmPagingDto.page}"){
			$(this).parent().addClass("active");
			return;
		}
		
	});
	
	
	
});


</script>








<!-- 페이지 링크 -->

<form id="frmPage" action="/jm/jm_reviewForm" method="get"> 
	<input type="hidden" name=r_info value="${jmReviewVo.r_info}"> 
	<input type="hidden" name=page value="${jmPagingDto.page}"> 
	<input type="hidden" name=perPage value="${jmPagingDto.perPage}"> 
	<input type="hidden" name=searchType value="${jmPagingDto.searchType}"> 
	<input type="hidden" name=keyword value="${jmPagingDto.keyword}"> 




</form>


<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<a href="/jm/jm_insertReviewForm" class="btn btn-info">후기 작성</a>
		
		
		<select name="perPage">
			<c:forEach begin="5" end="20" step="5" var="i">
				<option value="${i}"
					<c:if test="${i==jmPagingDto.perPage}">selected</c:if>
				>${i}줄씩보기</option>
			</c:forEach>
		</select>
		
		
		
		
		
		
		
		<select name="searchType" class="form-inline">
		
		<option value="r_subject"
		<c:if test="${jmPagingDto.searchType =='r_subject'}">selected</c:if>
		>제목</option>
		
		<option value="r_id"
		<c:if test="${jmPagingDto.searchType =='r_id'}">selected</c:if>
		>아이디</option>
		
		
		</select>
		
		<input type="text" id="keyword" name="keyword" class="form-inline"
			value="${jmPagingDto.keyword}"/>
		
		<button type="button" id="btnSearch" class="btn btn-danger">검색</button>
		
		
		
		
		
		
		
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
				<c:forEach items="${list}" var="jmReviewVo">
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



<div class="container-fluid">
	<div class="row">
		<div class="col-md-4">
		</div>
		<div class="col-md-4">
			<nav>
				<ul class="pagination">
				
					<c:if test="${jmPagingDto.startPage !=1}">
				
					<li class="page-item">
						<a class="page-link" href="${jmPagingDto.startPage-1 }">&laquo;</a>
					</li>
					</c:if>
					
					<!-- 페이지 넘버링 -->
					<c:forEach begin="${jmPagingDto.startPage}" end="${jmPagingDto.endPage}" var="g">
					<li class="page-item">
						<a class="page-link" href="${g}">${g}</a>
					</c:forEach>
					<c:if test="${jmPagingDto.endPage <jmPagingDto.totalPage}">
					<li class="page-item">
						<a class="page-link" href="${jmPagingDto.endPage+1 }">&raquo;</a>
					</li>
					</c:if>
				</ul>
			</nav>
		</div>
		<div class="col-md-4">
		</div>
	</div>
</div>










<%@ include file="../include/foot.jsp" %>