<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/head.jsp" %>

<script>
$(function() {
	$("a.title").click(function(e) {
		e.preventDefault();
		var p_num = $(this).attr("data-p_num");
		$("#singlePage > input[name=p_num]").val(p_num);
		$("#singlePage").attr("action", $(this).attr("href"));
		$("#singlePage").submit();
	});
});
</script>

<form id="singlePage" action="/lsh/mainShop" method="get">
	<input type="hidden" name="p_num" value="${LshBoardVo.p_num}"/>
</form>

    <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0">
          		<a href="/cjh/index">Home</a> 
          		<span class="mx-2 mb-0">/</span> 
          		<strong class="text-black">Shop</strong>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section">
      <div class="container">

        <div class="row mb-5">
          <div class="col-md-9 order-2">

            <div class="row">
              <div class="col-md-12 mb-5">
                <div class="float-md-left mb-4"><h2 class="text-black h5">Shop</h2></div>
                <div class="d-flex">
                  <div class="dropdown mr-1 ml-md-auto">
                    <button type="button" class="btn btn-secondary btn-sm dropdown-toggle" id="dropdownMenuOffset" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Latest
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuOffset">
                      <a class="dropdown-item" href="#">Men</a>
                      <a class="dropdown-item" href="#">Women</a>
                      <a class="dropdown-item" href="#">Children</a>
                    </div>
                  </div>
                  <div class="btn-group">
                    <button type="button" class="btn btn-secondary btn-sm dropdown-toggle" id="dropdownMenuReference" data-toggle="dropdown">Reference</button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuReference">
                      <a class="dropdown-item" href="#">Relevance</a>
                      <a class="dropdown-item" href="#">Name, A to Z</a>
                      <a class="dropdown-item" href="#">Name, Z to A</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Price, low to high</a>
                      <a class="dropdown-item" href="#">Price, high to low</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="row mb-5">
			  <c:forEach items="${mainList}" var="LshBoardVo">
	              <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
	                <div class="block-4 text-center border">
	                  <figure class="block-4-image">
	                    <a href="shop_single" class="title" data-p_num="${LshBoardVo.p_num}"><img src="../../resources/images/cloth_1.jpg" alt="Image placeholder" class="img-fluid"></a>
	                  </figure>
	                  <div class="block-4-text p-4">
	                    <h3><a href="shop_single" class="title" data-p_num="${LshBoardVo.p_num}">${LshBoardVo.p_name}</a></h3>
	                    <p class="mb-0">${LshBoardVo.p_content}</p>
	                    <p class="text-primary font-weight-bold">${LshBoardVo.p_price}원</p>
	                  </div>
	                </div>
	              </div>
              </c:forEach>
            </div>
            
          </div>

          <div class="col-md-3 order-1 mb-5 mb-md-0">
            <div class="border p-4 rounded mb-4">
              <h3 class="mb-3 h6 text-uppercase text-black d-block">Categories</h3>
              
           		<a href="mainShop?p_main=T">상의</a>
           		<ul class="dropdown">
	                <li><a href="serveShop?p_serve=TH">반팔</a></li>
	                <li><a href="serveShop?p_serve=TL">긴팔</a></li>
	                <li><a href="serveShop?p_serve=TS">셔츠</a></li>
	                <li><a href="serveShop?p_serve=TM">맨투맨</a></li>
              	</ul>
              	
           		<a href="mainShop?p_main=P">하의</a>
           		<ul class="dropdown">
	                <li><a href="serveShop?p_serve=PJ">청바지</a></li>
	                <li><a href="serveShop?p_serve=PM">면바지</a></li>
	                <li><a href="serveShop?p_serve=PH">반바지</a></li>
	                <li><a href="serveShop?p_serve=P7">7부바지</a></li>
              	</ul>
              	
           		<a href="mainShop?p_main=S">신발</a>
           		<ul class="dropdown">
	                <li><a href="serveShop?p_serve=SD">구두</a></li>
	                <li><a href="serveShop?p_serve=SU">운동화</a></li>
	                <li><a href="serveShop?p_serve=SS">슬리퍼</a></li>
	                <li><a href="serveShop?p_serve=SR">로퍼</a></li>
              	</ul>
              	
           		<a href="mainShop?p_main=A">악세사리</a>
           		<ul class="dropdown">
	                <li><a href="serveShop?p_serve=AR">반지</a></li>
	                <li><a href="serveShop?p_serve=AW">지갑</a></li>
	                <li><a href="serveShop?p_serve=AC">모자</a></li>
	                <li><a href="serveShop?p_serve=AB">가방</a></li>
              	</ul>
              
            </div>

          </div>
        </div>

        <div class="row">
          <div class="col-md-12">
            <div class="site-section site-blocks-2">
                <div class="row justify-content-center text-center mb-5">
                  <div class="col-md-7 site-section-heading pt-4">
                    <h2>Categories</h2>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0" data-aos="fade" data-aos-delay="">
                    <a class="block-2-item" href="mainShop?p_main=T">
                      <figure class="image">
                        <img src="../../resources/images/Top.jpg" alt="" class="img-fluid">
                      </figure>
                      <div class="text">
                        <span class="text-uppercase">Collections</span>
                        <h3>Top</h3>
                      </div>
                    </a>
                  </div>
                  <div class="col-sm-6 col-md-6 col-lg-3 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="100">
                    <a class="block-2-item" href="mainShop?p_main=P">
                      <figure class="image">
                        <img src="../../resources/images/Pants.jpg" alt="" class="img-fluid">
                      </figure>
                      <div class="text">
                        <span class="text-uppercase">Collections</span>
                        <h3>Pants</h3>
                      </div>
                    </a>
                  </div>
                  <div class="col-sm-6 col-md-6 col-lg-3 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="200">
                    <a class="block-2-item" href="mainShop?p_main=S">
                      <figure class="image">
                        <img src="../../resources/images/Shoes.jpg" alt="" class="img-fluid">
                      </figure>
                      <div class="text">
                        <span class="text-uppercase">Collections</span>
                        <h3>Shoes</h3>
                      </div>
                    </a>
                  </div>
                  
                  <div class="col-sm-6 col-md-6 col-lg-3 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="200">
                    <a class="block-2-item" href="mainShop?p_main=A">
                      <figure class="image">
                        <img src="../../resources/images/Acc.jpg" alt="" class="img-fluid">
                      </figure>
                      <div class="text">
                        <span class="text-uppercase">Collections</span>
                        <h3>Acc</h3>
                      </div>
                    </a>
                  </div>
                  
                </div>
              
            </div>
          </div>
        </div>
        
      </div>
    </div>

<%@ include file="../include/foot.jsp" %>