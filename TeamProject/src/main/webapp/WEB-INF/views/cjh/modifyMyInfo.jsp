<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/head.jsp" %>

<div class="bg-light py-3">
	<div class="container">
		<div class="row">
			<div class="col-md-12 mb-0"><a href="/cjh/index">Home</a> <span class="mx-2 mb-0">/</span>
				<a href="/cjh/mypage?u_id=${u_id}">My Page</a>  <span class="mx-2 mb-0"></span>
			</div>
		</div>
	</div>
</div>

<div class="site-section">
	<div class="container">
    	<div class="row">
			<div class="col-lg-12">
				<div class="col-lg-5"><h3 class="tit">회원 기본 정보</h3></div>
				<div class="col-lg-4"></div>
				<form role="form" action="/cjh/modifyMyInfo" method="post">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<table class="table">
									<thead>
										<tr>
					                        <th scope="row">user</th>
					                        <td colspan="2">
												<input type="text" class="form-control" id="u_id" name="u_id"
														value="${userVo.u_id}" readonly/>
											</td>
					                    </tr>
									</thead>
									<thead>
										<tr id="password-area" style="">
					                        <th scope="row">비밀번호</th>
					                        <td colspan="2">
												<input type="password" class="form-control" id="u_pw" name="u_pw"
														value="${userVo.u_pw}" required/>
											</td>
					                    </tr>
	
									</thead>
									
									<thead>
										<tr id="nickName-area" style="">
											<th scope="row">닉네임</th>
											<td colspan="2">
												<input type="text" class="form-control" id="u_name" name="u_name"
														value="${userVo.u_name}" required/>
											</td>
										</tr>
									</thead>
									
									
									
									<thead>
										
										<tr id="email-area">
											<th scope="row">이메일</th>
											<td colspan="2">
												<input type="email" class="form-control" id="email" name="u_email"
														value="${userVo.u_email}"/>
											</td>
										</tr>
									</thead>
									
									
									<thead>
										<tr id="address-area">
					                        <th scope="row">주소</th>
					                       	<td colspan="2">
												<input type="text" class="form-control" id="address" name="u_address"
														value="${userVo.u_address}"/>
											</td>
					                    </tr>
									</thead>
								</table>
							</div>
							<button type="submit" class="btn btn-default">정보 수정 완료</button>
						</div>
					</div>
				</form>
				
			</div>
    <!-- /.row -->
		</div>
	</div>
</div>


<%@ include file="../include/foot.jsp" %>