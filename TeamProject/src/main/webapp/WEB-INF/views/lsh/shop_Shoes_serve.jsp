<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/head.jsp" %>

    <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0">
          		<a href="index.html">Home</a> 
          		<span class="mx-2 mb-0">/</span> 
          		<strong class="text-black">Shop</strong>
          		<span class="mx-2 mb-0">/</span> 
          		<strong class="text-black">Shoes</strong>
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
                <div class="float-md-left mb-4"><h2 class="text-black h5">Shop Shoes</h2></div>
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

              <div class="row mb-5">
			  <c:forEach items="${shoesServeList}" var="LshBoardVo">
	              <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
	                <div class="block-4 text-center border">
	                  <figure class="block-4-image">
	                    <a href="shop_single"><img src="../../resources/images/cloth_1.jpg" alt="Image placeholder" class="img-fluid"></a>
	                  </figure>
	                  <div class="block-4-text p-4">
	                    <h3><a href="shop_single">${LshBoardVo.p_name}</a></h3>
	                    <p class="mb-0">${LshBoardVo.p_content}</p>
	                    <p class="text-primary font-weight-bold">${LshBoardVo.p_price}원</p>
	                  </div>
	                </div>
	              </div>
              </c:forEach>
           	  </div>

            </div>
          </div>

          <div class="col-md-3 order-1 mb-5 mb-md-0">
            <div class="border p-4 rounded mb-4">
              <h3 class="mb-3 h6 text-uppercase text-black d-block">Categories</h3>
              <ul class="list-unstyled mb-0">
                <li class="mb-1"><a href="shop" class="d-flex"><span>Shop All</span> <span class="text-black ml-auto"></span></a></li>
                <li class="mb-1"><a href="shop_Top" class="d-flex"><span>Top</span> <span class="text-black ml-auto"></span></a></li>
                <li class="mb-1"><a href="shop_Pants" class="d-flex"><span>Pants</span> <span class="text-black ml-auto"></span></a></li>
                <li class="mb-1"><a href="shop_Shoes" class="d-flex"><span>Shoes</span> <span class="text-black ml-auto"></span></a></li>
                <li class="mb-1"><a href="shop_Acc" class="d-flex"><span>Acc</span> <span class="text-black ml-auto"></span></a></li>
              </ul>
            </div>

            <div class="border p-4 rounded mb-4">

              <div class="mb-4">
                <h3 class="mb-3 h6 text-uppercase text-black d-block">종류</h3>
                <a href="shop_Shoes_serve?serve=SD" class="d-flex color-item align-items-center" >
                  <span class="bg-danger color d-inline-block rounded-rectangle mr-2"></span> <span class="text-black">구두</span>
                </a>
                <a href="shop_Shoes_serve?serve=SU" class="d-flex color-item align-items-center" >
                  <span class="bg-success color d-inline-block rounded-rectangle mr-2"></span> <span class="text-black">운동화</span>
                </a>
                <a href="shop_Shoes_serve?serve=SS" class="d-flex color-item align-items-center" >
                  <span class="bg-info color d-inline-block rounded-rectangle mr-2"></span> <span class="text-black">슬리퍼</span>
                </a>
                <a href="shop_Shoes_serve?serve=SR" class="d-flex color-item align-items-center" >
                  <span class="bg-info color d-inline-block rounded-rectangle mr-2"></span> <span class="text-black">로퍼</span>
                </a>
              </div>

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
                    <a class="block-2-item" href="shop_Top">
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
                    <a class="block-2-item" href="shop_Pants">
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
                    <a class="block-2-item" href="shop_Shoes">
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
                    <a class="block-2-item" href="shop_Acc">
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