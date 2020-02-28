<div class="footer-top-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-12">
                    <div class="footer-about-us">
                        <h2 style="font-family:Impact;">ITECH<span>NEW.VN</span></h2>
                       <address>
                        <span>Chuyên cung cấp các sản phẩm công nghệ!</span>
                        <p><i class="fa fa-phone"></i> +84 85-4774-690</p>
                        <p><i class="fa fa-map-marker"></i> 280 An Duong Vuong, Dist. 5, HoChiMinh city, VietNam.</p>
                    </address>
                        <div class="footer-social">
                            <a href="https://www.facebook.com/trannqt" target="_blank"><i class="fab fa-facebook"></i></a>
                            <a href="https://twitter.com/?lang=vi" target="_blank"><i class="fab fa-twitter"></i></a>
                            <a href="https://www.youtube.com" target="_blank"><i class="fab fa-youtube"></i></a>
                            <a href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-4 col-sm-12">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title"> Điều Hướng </h2>
                        <ul>
                            <li><a href="index.php?mod=user&act=about">Tài khoản</a></li>
                            <li><a href="index.php?mod=user&act=login">Đăng Nhập</a></li>
                            <li><a href="index.php?mod=cart&act=detail">Giỏ Hàng</a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-4 col-sm-12">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">Loại Sản Phẩm</h2>
                        <ul>

                            <?php
                                include("Controller/Category/CategoryFooter.php");
                            ?>
                            
                        </ul>                        
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer top area -->
    
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="copyright">
                        <p>&copy;2019, ITECHNEW.VN - NHÓM 123 <a href="index.php" target="_blank">itechnew.com</a></p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="footer-card-icon">
                        <i class="fab fa-cc-discover"></i>
                        <i class="fab fa-cc-mastercard"></i>
                        <i class="fab fa-cc-paypal"></i>
                        <i class="fab fa-cc-visa"></i>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer bottom area -->

     <!-- jQuery sticky menu -->
    <script src="js/owl.carousel.min1.js"></script>
    <script src="js/jquery.sticky.js"></script>

    <script src="js/main.js"></script>
    
    <!-- jQuery easing -->
    <script src="js/jquery.easing.1.3.min.js"></script>
  
    <!-- Slider -->
    <script type="text/javascript" src="js/bxslider.min.js"></script>
    <script type="text/javascript" src="js/script.slider.js"></script>
 

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </body>
</html>