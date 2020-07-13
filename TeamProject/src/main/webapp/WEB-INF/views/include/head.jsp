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
                <ul>
                  <c:choose>
		             <c:when test="${not empty sessionScope.u_id}">
		              	<a href="/cjh/logout" class="btn btn-basic btn-flat">logout</a>
		             </c:when>
					<c:otherwise>
		              	<a href="/cjh/login" class="btn btn-basic btn-flat">login</a>
		            </c:otherwise>
		          </c:choose>
                  <li><a href="/cjh/mypage"><span class="icon icon-person"></span></a></li>
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
                <li><a href="/lsh/shop_Top">Top</a></li>
                <li><a href="/lsh/shop_Pants">Pants</a></li>
                <li><a href="/lsh/shop_Shoes">Shoes</a></li>
                <li><a href="/lsh/shop_Acc">Acc</a></li>
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
		
			<p>
				<a class="btn btn-warning btn-large" href="/jm/jm_login">로그인</a>
				<a class="btn btn-warning btn-large" href="/jm/jm_signUp">회원가입 가기</a>
			<p>
			
		</div>
	</div>
</div>
          
          
          
        </div>
      </nav>
    </header>