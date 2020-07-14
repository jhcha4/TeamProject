<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form id="shop_form" action="/magager/manager_main" method="get">
	
	<input type="hidden" name="main_code" value="${Kys_MainVo.main_code}"/>
	<input type="hidden" name="main_name" value="${Kys_MainVo.main_name}"/>
	<input type="hidden" name="serve_code" value="${Kys_ServeVo.servo_code }"/>
	<input type="hidden" name="serve_name" value="${Kys_ServeVo.serve_name }"/>
	<input type="hidden" name="serve_maincode" value="${Kys_ServeVo.main_code }"/>
</form>


	<div class="row">
		<div class="col-md-2">
			
		</div>
		<div class="col-md-8">
			<div class="btn-group" role="group">

				<button class="btn btn-secondary" type="button"><a href="/manager/shop_single_input">상품 등록</a></button>
				<button class="btn btn-secondary" type="button"><a href="/manager/normal_list">상품리스트</a></button>
				<button class="btn btn-secondary" type="button"><a href="/jm/jm_userList">유저리스트</a></button>
				<button class="btn btn-secondary" type="button">Justify</button>
			</div>
			<div class="row">
				<div class="col-md-12"></div>
			</div>

		</div>
		<div class="col-md-2"></div>
	</div>



