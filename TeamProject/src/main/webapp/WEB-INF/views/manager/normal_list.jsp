<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head.jsp" %>
<%@ include file="../include/main_bar.jsp" %>
<script type="text/javascript">
$(function() {
	$("#mainOption").val("T").attr("selected","selected");
	$("#serveOption").val("TH").attr("selected","selected");
	

	var options = $("#serveOption option");
	var m = $("#mainOption option:selected").val();
	if(m == "T") {   
		$("#serveOption option").remove();
		$("#serveOption").append(options[0]).append(options[1]).append(options[2]).append(options[3]);
	}
	$("#mainOption").change(function(){
		$("#serveOption option").remove();
		var main =  $(this).val();
		var serve = $("#serveOption").val();
		if(main == "T")                                                     
			$("#serveOption").append(options[0]).append(options[1]).append(options[2]).append(options[3]);
		if(main == "P")                                                       
			$("#serveOption").append(options[4]).append(options[5]).append(options[6]).append(options[7]);
		if(main == "S")                                                       
			$("#serveOption").append(options[8]).append(options[9]).append(options[10]).append(options[11]);
		if(main == "A")                                                       
			$("#serveOption").append(options[12]).append(options[13]).append(options[14]).append(options[15]);
	});
});


</script>

	<div class="row">
	<div class="col-md-2" >

	</div>
		<div class="col-md-8">
		
			<div class="row">
				<div class="col-md-12">
				<div>
						<label>main : </label> <select name="p_main" id="mainOption">
							<option value="T" >상의
							<option value="P">하의
							<option value="A">악세사리
							<option value="S">신발
						</select>
					</div>
					<div>
						<label>serve : </label> 
						<select name="p_serve" id="serveOption">
								<option value="TH">반팔
								<option value="TL">긴팔
								<option value="TS">셔츠
								<option value="TM">맨투맨
								<option value="PJ">청바지
								<option value="PM">면바지
								<option value="PH">반바지
								<option value="P7">7부바지
							
								<option value="SD">구두
								<option value="SU">운동화
								<option value="SS">스릴퍼
								<option value="SR">로퍼
					
								<option value="AR">반지
								<option value="AW">지갑
								<option value="AC">모자
								<option value="AB">가방
						
						</select>

					</div>
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
							<td><a type="button" class="btn btn-sm btn-primary" id="update"
							href="/manager/oenSelect?p_num=${BoardVo.p_num}" >수정</a></td>
							<td><a type="button" class="btn btn-sm btn-danger" id="delete">삭제</a></td>
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
	




<%@ include file="../include/foot.jsp" %>