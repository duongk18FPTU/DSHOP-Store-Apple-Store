<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zxx">
    <head>
        <!-- Meta Tag -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="copyright" content="" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <!-- Title Tag  -->
        <title>DShop - Apple store</title>
        <!-- Favicon -->
        <link rel="icon" type="image/png" href="images/dshopmini.png" />
        <!-- Web Font -->
        <link
            href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
            rel="stylesheet"
            />

        <!-- StyleSheet -->

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.css" />
        <!-- Magnific Popup -->
        <link rel="stylesheet" href="css/magnific-popup.min.css" />
        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.css" />
        <!-- Fancybox -->
        <link rel="stylesheet" href="css/jquery.fancybox.min.css" />
        <!-- Themify Icons -->
        <link rel="stylesheet" href="css/themify-icons.css" />
        <!-- Nice Select CSS -->
        <link rel="stylesheet" href="css/niceselect.css" />
        <!-- Animate CSS -->
        <link rel="stylesheet" href="css/animate.css" />
        <!-- Flex Slider CSS -->
        <link rel="stylesheet" href="css/flex-slider.min.css" />
        <!-- Owl Carousel -->
        <link rel="stylesheet" href="css/owl-carousel.css" />
        <!-- Slicknav -->
        <link rel="stylesheet" href="css/slicknav.min.css" />

        <!-- Eshop StyleSheet -->
        <link rel="stylesheet" href="css/reset.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/responsive.css" />
    </head>
    <body class="js">

        <%@include file="panner.jsp" %>


        <!-- Start Product Area -->
        <div class="product-area section" id="product-section">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title">
                            <h2>Our Product</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="product-info">
                            <div class="nav-main">
                                <!-- Tab Nav -->
                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item">
                                        <a  
                                            class="nav-link
                                            <c:if test="${filter eq 'asc'}">active</c:if>
                                                "
                                                href="customer?service=sort-by-price&order=asc"
                                                >Price: Low to High</a
                                            >
                                        </li>
                                        <li class="nav-item">
                                            <a
                                                class="nav-link
                                            <c:if test="${filter eq 'desc'}">active</c:if>
                                                "
                                                href="customer?service=sort-by-price&order=desc"
                                                >Price: High to Low</a
                                            >
                                        </li>
                                        <li class="nav-item">
                                            <a
                                                class="nav-link
                                            <c:if test="${filter eq 'new'}">active</c:if>
                                                "
                                                href="customer?service=filter-by-tag&tag=new"
                                                >New Arrival</a
                                            >
                                        </li>
                                        <li class="nav-item">
                                            <a
                                                class="nav-link
                                            <c:if test="${filter eq 'hot'}">active</c:if>
                                                "
                                                href="customer?service=filter-by-tag&tag=hot"
                                                >Hot</a
                                            >
                                        </li>                                   
                                    </ul>
                                    <!--/ End Tab Nav -->
                                </div>
                                <div class="tab-content" id="myTabContent">
                                    <!-- Start Single Tab -->
                                    <div class="tab-pane fade show active" id="man" role="tabpanel">
                                        <div class="tab-single">
                                            <div class="row">
                                            <c:forEach items="${products}" var="p">
                                                <div class="col-xl-4 col-lg-4 col-md-4">
                                                    <div class="single-product">
                                                        <div class="product-img" >
                                                            <a href="customer?service=showdetails&&id=${p.id}">
                                                                <div style="height: 350px">
                                                                    <img
                                                                        class="default-img"
                                                                        src="${p.image_url}"
                                                                        alt="#"
                                                                        />
                                                                    <c:if test="${p.release_date eq '2023-07-06'}">
                                                                        <span class="price-dec">New Arrival</span>
                                                                    </c:if>
                                                                    <c:if test="${p.description eq 'Hot'}">
                                                                        <span class="price-dec">Hot</span>
                                                                    </c:if>
                                                                </div>

                                                            </a>
                                                            <div class="button-head">
                                                                <div class="product-action-2">
                                                                    <a title="Add to cart" href="cart?service=addToCart&productId=${p.id}">Add to cart</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="product-content">
                                                            <h3>
                                                                <a href="product-details.html"
                                                                   >${p.name}</a
                                                                >
                                                            </h3>
                                                            <div class="product-price">
                                                                <span>$ ${p.price}</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                                <!--/ End Single Tab -->

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Product Area -->

        <!-- Start Shop Services Area -->
        <section class="shop-services section home">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Service -->
                        <div class="single-service">
                            <i class="ti-rocket"></i>
                            <h4>Free shiping</h4>
                            <p>Orders over $100</p>
                        </div>
                        <!-- End Single Service -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Service -->
                        <div class="single-service">
                            <i class="ti-reload"></i>
                            <h4>Free Return</h4>
                            <p>Within 30 days returns</p>
                        </div>
                        <!-- End Single Service -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Service -->
                        <div class="single-service">
                            <i class="ti-lock"></i>
                            <h4>Sucure Payment</h4>
                            <p>100% secure payment</p>
                        </div>
                        <!-- End Single Service -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Service -->
                        <div class="single-service">
                            <i class="ti-tag"></i>
                            <h4>Best Peice</h4>
                            <p>Guaranteed price</p>
                        </div>
                        <!-- End Single Service -->
                    </div>
                </div>
            </div>
        </section>
        <!-- End Shop Services Area -->

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button
                            type="button"
                            class="close"
                            data-dismiss="modal"
                            aria-label="Close"
                            >
                            <span class="ti-close" aria-hidden="true"></span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row no-gutters">
                            <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                                <!-- Product Slider -->
                                <div class="product-gallery">
                                    <div class="quickview-slider-active">
                                        <div class="single-slider">
                                            <img src="https://via.placeholder.com/569x528" alt="#" />
                                        </div>
                                        <div class="single-slider">
                                            <img src="https://via.placeholder.com/569x528" alt="#" />
                                        </div>
                                        <div class="single-slider">
                                            <img src="https://via.placeholder.com/569x528" alt="#" />
                                        </div>
                                        <div class="single-slider">
                                            <img src="https://via.placeholder.com/569x528" alt="#" />
                                        </div>
                                    </div>
                                </div>
                                <!-- End Product slider -->
                            </div>
                            <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                                <div class="quickview-content">
                                    <h2>Flared Shift Dress</h2>
                                    <div class="quickview-ratting-review">
                                        <div class="quickview-ratting-wrap">
                                            <div class="quickview-ratting">
                                                <i class="yellow fa fa-star"></i>
                                                <i class="yellow fa fa-star"></i>
                                                <i class="yellow fa fa-star"></i>
                                                <i class="yellow fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                            <a href="#"> (1 customer review)</a>
                                        </div>
                                        <div class="quickview-stock">
                                            <span><i class="fa fa-check-circle-o"></i> in stock</span>
                                        </div>
                                    </div>
                                    <h3>$29.00</h3>
                                    <div class="quickview-peragraph">
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                            Mollitia iste laborum ad impedit pariatur esse optio
                                            tempora sint ullam autem deleniti nam in quos qui nemo
                                            ipsum numquam.
                                        </p>
                                    </div>
                                    <div class="size">
                                        <div class="row">
                                            <div class="col-lg-6 col-12">
                                                <h5 class="title">Size</h5>
                                                <select>
                                                    <option selected="selected">s</option>
                                                    <option>m</option>
                                                    <option>l</option>
                                                    <option>xl</option>
                                                </select>
                                            </div>
                                            <div class="col-lg-6 col-12">
                                                <h5 class="title">Color</h5>
                                                <select>
                                                    <option selected="selected">orange</option>
                                                    <option>purple</option>
                                                    <option>black</option>
                                                    <option>pink</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="quantity">
                                        <!-- Input Order -->
                                        <div class="input-group">
                                            <div class="button minus">
                                                <button
                                                    type="button"
                                                    class="btn btn-primary btn-number"
                                                    disabled="disabled"
                                                    data-type="minus"
                                                    data-field="quant[1]"
                                                    >
                                                    <i class="ti-minus"></i>
                                                </button>
                                            </div>
                                            <input
                                                type="text"
                                                name="quant[1]"
                                                class="input-number"
                                                data-min="1"
                                                data-max="1000"
                                                value="1"
                                                />
                                            <div class="button plus">
                                                <button
                                                    type="button"
                                                    class="btn btn-primary btn-number"
                                                    data-type="plus"
                                                    data-field="quant[1]"
                                                    >
                                                    <i class="ti-plus"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <!--/ End Input Order -->
                                    </div>
                                    <div class="add-to-cart">
                                        <a href="#" class="btn">Add to cart</a>
                                        <a href="#" class="btn min"><i class="ti-heart"></i></a>
                                        <a href="#" class="btn min"
                                           ><i class="fa fa-compress"></i
                                            ></a>
                                    </div>
                                    <div class="default-social">
                                        <h4 class="share-now">Share:</h4>
                                        <ul>
                                            <li>
                                                <a class="facebook" href="#"
                                                   ><i class="fa fa-facebook"></i
                                                    ></a>
                                            </li>
                                            <li>
                                                <a class="twitter" href="#"
                                                   ><i class="fa fa-twitter"></i
                                                    ></a>
                                            </li>
                                            <li>
                                                <a class="youtube" href="#"
                                                   ><i class="fa fa-pinterest-p"></i
                                                    ></a>
                                            </li>
                                            <li>
                                                <a class="dribbble" href="#"
                                                   ><i class="fa fa-google-plus"></i
                                                    ></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal end -->

        <%@include file="footer.jsp" %>

        <!-- Jquery -->
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-migrate-3.0.0.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <!-- Popper JS -->
        <script src="js/popper.min.js"></script>
        <!-- Bootstrap JS -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Color JS -->
        <script src="js/colors.js"></script>
        <!-- Slicknav JS -->
        <script src="js/slicknav.min.js"></script>
        <!-- Owl Carousel JS -->
        <script src="js/owl-carousel.js"></script>
        <!-- Magnific Popup JS -->
        <script src="js/magnific-popup.js"></script>
        <!-- Waypoints JS -->
        <script src="js/waypoints.min.js"></script>
        <!-- Countdown JS -->
        <script src="js/finalcountdown.min.js"></script>
        <!-- Nice Select JS -->
        <script src="js/nicesellect.js"></script>
        <!-- Flex Slider JS -->
        <script src="js/flex-slider.js"></script>
        <!-- ScrollUp JS -->
        <script src="js/scrollup.js"></script>
        <!-- Onepage Nav JS -->
        <script src="js/onepage-nav.min.js"></script>
        <!-- Easing JS -->
        <script src="js/easing.js"></script>
        <!-- Active JS -->
        <script src="js/active.js"></script>
    </body>
</html>

