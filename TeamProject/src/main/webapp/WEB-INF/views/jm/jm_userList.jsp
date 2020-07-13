<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/head.jsp" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   


 <p>관리자 유저정보 관리 페이지 입니다</p>
 
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
					</tr>
					</c:forEach>
					
					
				</tbody>
			</table>
		</div>
	</div>
</div>
 
 





<%@ include file="../include/foot.jsp" %>