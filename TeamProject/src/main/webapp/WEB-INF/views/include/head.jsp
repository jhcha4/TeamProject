<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

 <% //제이쿼리 
 request.setCharacterEncoding("utf-8");
 String cp = request.getContextPath();
 %>
<script src="<%=cp %>/resources/js/jquery-3.3.1.min.js"></script>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Shoppers &mdash; Colorlib e-Commerce Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="../../resources/css/jquery-ui.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
    <link rel="stylesheet" href="../../resources/fonts/icomoon/style.css">

    <link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../resources/css/magnific-popup.css">
    <link rel="stylesheet" href="../../resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../../resources/css/owl.theme.default.min.css">


    <link rel="stylesheet" href="../../resources/css/aos.css">

    <link rel="stylesheet" href="../../resources/css/style.css">
    
  </head>
  <body>
  
  <div class="site-wrap">
    <header class="site-navbar" role="banner">
      <div class="site-navbar-top">
        <div class="container">
          <div class="row align-items-center">

            <div class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
              <form action="" class="site-block-top-search">
                <span class="icon icon-search2"></span>
                <input type="text" class="form-control border-0" placeholder="Search">
              </form>
            </div>

            <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
              <div class="site-logo">
                <a href="/cjh/index" class="js-logo-clone">Shoppers</a>
              </div>
            </div>

            <div class="col-6 col-md-4 order-3 order-md-3 text-right">
              <div class="site-top-icons">
              
              <c:choose>
			<c:when test="${not empty sessionScope.u_id }">
				<p>${sessionScope.u_id}님 로그인중</p>
				<a href="/jm/logout" class="btn btn-default btn-danger">로그아웃</a>
			</c:when>
			<c:otherwise>
				<a class="btn btn-default btn-sm" href="/jm/jm_signUp">signUp</a>
				<a class="btn btn-default btn-sm" href="/jm/jm_login">Login</a>
			</c:otherwise>		
		</c:choose>
              
              
              
              
                <ul>
                  <c:choose>
		             <c:when test="${not empty sessionScope.u_id}">
		              	<a href="/cjh/logout" class="btn btn-basic btn-flat">logout</a>
		             </c:when>
					<c:otherwise>
		              	<a href="/cjh/login" class="btn btn-basic btn-flat">login</a>
		            </c:otherwise>
		          </c:choose>
                  <li><a href="/cjh/mypage?u_id=${u_id}"><span class="icon icon-person"></span></a></li>
                  <li><a href="#"><span class="icon icon-heart-o"></span></a></li>
                  <li>
                    <a href="/cjh/cart?u_id=${u_id}" class="site-cart">
                      <span class="icon icon-shopping_cart"></span>
                      <span class="count">2</span>
                    </a>
                  </li> 
                  <li class="d-inline-block d-md-none ml-md-0"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu"></span></a></li>
                </ul>
              </div> 
            </div>

          </div>
        </div>
      </div> 
      
      
      
      
      
      <nav class="site-navigation text-right text-md-center" role="navigation">
        <div class="container">
          <ul class="site-menu js-clone-nav d-none d-md-block">
            <li class="has-children active">
              <a href="/cjh/index">Home</a>
              <ul class="dropdown">
                <li><a href="#">Menu One</a></li>
                <li><a href="#">Menu Two</a></li>
                <li><a href="#">Menu Three</a></li>
                <li class="has-children">
                  <a href="#">Sub Menu</a>
                  <ul class="dropdown">
                    <li><a href="#">Menu One</a></li>
                    <li><a href="#">Menu Two</a></li>
                    <li><a href="#">Menu Three</a></li>
                  </ul>
                </li>
              </ul>
            </li>
            <li class="has-children">
              <a href="/cjh/about">About</a>
              <ul class="dropdown">
                <li><a href="#">Menu One</a></li>
                <li><a href="#">Menu Two</a></li>
                <li><a href="#">Menu Three</a></li>
              </ul>
            </li>
            
            <li class="has-children">
           		<a href="/lsh/shop">Shop</a>
           		<ul class="dropdown">
					<li class="has-children">
	                  <a href="/lsh/shop_main?p_main=T">상의</a>
	                  <ul class="dropdown">
	                    <li><a href="/lsh/shop_serve?p_serve=TH">반팔</a></li>
	                    <li><a href="/lsh/shop_serve?p_serve=TL">긴팔</a></li>
	                    <li><a href="/lsh/shop_serve?p_serve=TS">셔츠</a></li>
	                    <li><a href="/lsh/shop_serve?p_serve=TM">맨투맨</a></li>
	                  </ul>
	                </li>
	                 
	                <li class="has-children">
	                  <a href="/lsh/shop_main?p_main=P">하의</a>
	                  <ul class="dropdown">
	                    <li><a href="/lsh/shop_serve?p_serve=PJ">청바지</a></li>
	                    <li><a href="/lsh/shop_serve?p_serve=PM">면바지</a></li>
	                    <li><a href="/lsh/shop_serve?p_serve=PH">반바지</a></li>
	                    <li><a href="/lsh/shop_serve?p_serve=P7">7부바지</a></li>
	                  </ul>
	                </li>
	                  
	                <li class="has-children">
					  <a href="/lsh/shop_main?p_main=S">신발</a>
	                  <ul class="dropdown">
	                    <li><a href="/lsh/shop_serve?p_serve=SD">구두</a></li>
	                    <li><a href="/lsh/shop_serve?p_serve=SU">운동화</a></li>
	                    <li><a href="/lsh/shop_serve?p_serve=SS">슬리퍼</a></li>
	                    <li><a href="/lsh/shop_serve?p_serve=SR">로퍼</a></li>
	                  </ul>
	                </li>
	                  
					<li class="has-children">	                  
	                  <a href="/lsh/shop_main?p_main=A">악세사리</a>
	                  <ul class="dropdown">
	                    <li><a href="/lsh/shop_serve?p_serve=AR">반지</a></li>
	                    <li><a href="/lsh/shop_serve?p_serve=AW">지갑</a></li>
	                    <li><a href="/lsh/shop_serve?p_serve=AC">모자</a></li>
	                    <li><a href="/lsh/shop_serve?p_serve=AB">가방</a></li>
	                  </ul>
	                </li>
	                
             	</ul>  
            </li>
            
            
            
            
            
            <li><a href="#">Catalogue</a></li>
            <li><a href="#">New Arrivals</a></li>
            <li><a href="/cjh/contact">Contact</a></li>
          </ul>
          
          <div class="container-fluid">
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-7">
		</div>
		<div class="col-md-3">
		
			
		</div>
	</div>
</div>
          
          
          
        </div>
      </nav>
    </header>