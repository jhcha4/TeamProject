<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/head.jsp" %>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>

function openDaumPostcode() {
	var width = 500; //팝업창이 실행될때 위치지정
	var height = 600; //팝업창이 실행될때 위치지정
    new daum.Postcode({
    	width : width, //팝업창이 실행될때 위치지정
    	height : height, //팝업창이 실행될때 위치지정
        oncomplete: function(data) {
        	 // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수

            // 법정동명이 있을 경우 추가한다.
            if(data.bname !== ''){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있을 경우 추가한다.
            if(data.buildingName !== ''){
                extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if(fullRoadAddr !== ''){
                fullRoadAddr += extraRoadAddr;
            }
            
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("post1").value = data.postcode1;
            document.getElementById("post2").value = data.postcode2;
            document.getElementById("addr1").value = fullRoadAddr;
            document.getElementById("addr2").value = data.jibunAddress;

            document.getElementById('addr2').focus();
        }
    }).open({
    	left : (window.screen.width / 2) - (width / 2), //팝업창이 실행될때 위치지정
    	top : (window.screen.height / 2) - (height / 2) //팝업창이 실행될때 위치지정
    });
}

</script>


<pre class="brush:html;">	<input id="post1" readonly="" size="5" name="post1"> - <input id="post2" readonly="" size="5" name="post2">
	<input onclick="openDaumPostcode()" type="button" value="우편번호찾기"><br>
	<span style="LINE-HEIGHT: 10%"><br></span>
	<input id="addr1" readonly="" size="40" name="addr1" placeholder="도로명주소"><br>
	<span style="LINE-HEIGHT: 10%"><br></span>
	<input id="addr2" size="40" name="addr2" placeholder="지번주소">

</pre>




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