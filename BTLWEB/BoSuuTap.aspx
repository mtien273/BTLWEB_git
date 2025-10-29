<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BoSuuTap.aspx.cs" Inherits="BTLWEB.BoSuuTap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="CSS/reset.css" rel="stylesheet" />
    <link href="CSS/base.css" rel="stylesheet" />
    <link href="CSS/header.css" rel="stylesheet" />
    <link href="CSS/footer.css" rel="stylesheet" />
    <link href="CSS/BoSuuTap.css" rel="stylesheet" />
    <link rel="stylesheet" href="Vendor/css/all.min.css" />
</head>
<body>
   
        <!-- Header -->
        <header class="header">
            <div class="container">
                <div class="inner-wrap">
                    <div class="inner-social">
                        <ul>

                            <li><a href="#"><i class="fa-brands fa-facebook"></i></a></li>
                            <li><a href="#" class="ig"><i class="fa-brands fa-instagram"></i></a></li>
                        </ul>
                    </div>
                    <div class="inner-logo">
                        <a href="TrangChu.aspx">
                            <img src="img\logo.jpg" alt="logo"></a>
                    </div>
                    <div class="inner-user">
                        <form class="inner-search" method="get" action="TrangTimKiem.aspx">
                            <input placeholder=" Nhập nội dung tìm kiếm" type="text" name="key" class="input" />

                            <button class="btn" type="submit">
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </button>
                        </form>

                        <a href="GioHang.aspx" class="user"><i class="fa-solid fa-cart-shopping"></i></a>
                        <a href="DangNhap.aspx" class="user"><i class="fa-regular fa-circle-user"></i></a>



                    </div>
                </div>
            </div>
            <button type="button" id="menu-toggle-btn" class="menu-toggle-btn">
                <i class="fa-solid fa-bars-staggered"></i>
            </button>
            <div class="inner-menu">
                <div class="container">
                    <ul>
                        <li>
                            <a href="TrangChu.aspx">TRANG CHỦ</a>
                        </li>
                        <li>
                            <a href="NhanBac.aspx">TRANG SỨC</a>
                        </li>
                        <li>
                            <a href="BoSuuTap.aspx">BỘ SƯU TẬP</a>
                        </li>
                        <li>
                            <a href="ThongTin.aspx">THÔNG TIN</a>
                        </li>
                        <li>
                            <a href="lienhe.aspx">LIÊN HỆ</a>
                        </li>
                    </ul>
                </div>
            </div>
        </header>
        <!-- End header -->

        <!--Main -->

        <div class="container">

            <h1 class="page-title">Bộ sưu tập</h1>

            <div class="post-grid">

                <div class="post-card">
                    <a href="#">
                        <img src="img/BoSuuTap/mau-nhan-bac-nu-tron-1.jpg" alt="Bài viết 1"></a>
                    <div class="post-content">
                        <p class="post-date">22/04/2025</p>
                        <h2 class="post-title"><a href="#">Mẫu nhẫn bạc nữ trơn đơn giản nhưng đầy cá tính</a></h2>
                        <p class="post-excerpt">5+ Mẫu nhẫn bạc nữ trơn đơn giản nhưng đầy cá tính Mẫu nhẫn bạc nữ trơn đã và đang trở thành xu hướng được yêu thích trong cộng đồng yêu thích trang sức hiện đại. Sự thanh lịch, nhẹ nhàng của nhẫn bạc trơn giúp tôn lên vẻ đẹp tự nhiên và sự tinh tế của người đeo. Sau đây, hãy cùng KaT Jewelry khám phá 5+ mẫu nhẫn bạ...</p>
                    </div>
                </div>

                <div class="post-card">
                    <a href="#">
                        <img src="img/BoSuuTap/lac-tay-bac-hinh-no-1.jpg" alt="Bài viết 2"></a>
                    <div class="post-content">
                        <p class="post-date">22/04/2025</p>
                        <h2 class="post-title"><a href="#">Lắc tay bạc hình nơ siêu đáng yêu cho nữ</a></h2>
                        <p class="post-excerpt">Lắc tay bạc hình nơ siêu đáng yêu cho nữ Dễ thương nhưng không kém phần tinh tế, những chiếc lắc tay bạc hình nơ luôn có một sức hút rất riêng. Không cần quá nổi bật, chỉ với một điểm nhấn nhỏ xinh nơi cổ tay cũng đủ để tạo nên dấu ấn dịu dàng, nữ tính. Nếu bạn đang tìm kiếm một phụ kiện vừa xinh yêu, vừa dễ ứng ...</p>
                    </div>
                </div>

                <div class="post-card">
                    <a href="#">
                        <img src="img/BoSuuTap/lac-tay-bac-ngoc-trai-1.jpg" alt="Bài viết 3"></a>
                    <div class="post-content">
                        <p class="post-date">22/04/2025</p>
                        <h2 class="post-title"><a href="#">mẫu lắc tay bạc ngọc trai sang trọng cho nữ</a></h2>
                        <p class="post-excerpt">mẫu lắc tay bạc ngọc trai sang trọng cho nữ Lắc tay bạc ngọc trai là món trang sức không thể thiếu của những cô nàng yêu thích sự tinh tế và sang trọng. Với chất liệu bạc 925 cao cấp và ngọc trai tự nhiên, mỗi chiếc lắc tay bạc đều mang đến vẻ đẹp hoàn hảo, giúp bạn tỏa sáng trong mọi dịp quan trọng. Trong bài...</p>
                    </div>
                </div>

                <div class="post-card">
                    <a href="#">
                        <img src="img/BoSuuTap/nhan-bac-deo-ngon-cai-1.jpg" alt="Bài viết 4"></a>
                    <div class="post-content">
                        <p class="post-date">22/04/2025</p>
                        <h2 class="post-title"><a href="#">Nhẫn bạc đeo ngón cái có ý nghĩa gì? Gợi ý 4+ mẫu nhẫn cá tính</a></h2>
                        <p class="post-excerpt">Nhẫn bạc đeo ngón cái có ý nghĩa gì? Gợi ý 4+ mẫu nhẫn cá tính Từ lâu, nhẫn bạc đã trở thành một món đồ không thể thiếu, giúp người đeo khẳng định dấu ấn riêng biệt. Nhẫn bạc đeo ngón cái không chỉ là một món trang sức, mà còn là tuyên ngôn về phong cách và cá tính. Vậy, nhẫn bạc đeo ngón cái có ý nghĩa gì và đâu là...</p>
                    </div>
                </div>

                <div class="post-card">
                    <a href="#">
                        <img src="img/BoSuuTap/cac-mau-vong-tay-bac-dep-cho-nu-1.jpg" alt="Bài viết 5"></a>
                    <div class="post-content">
                        <p class="post-date">22/04/2025</p>
                        <h2 class="post-title"><a href="#">Khám phá các mẫu vòng tay bạc đẹp cho nữ tại KaT Jewelry</a></h2>
                        <p class="post-excerpt">Khám phá các mẫu vòng tay bạc đẹp cho nữ tại KaT Jewelry Bạn đang tìm kiếm một chiếc vòng tay bạc tinh tế để làm điểm nhấn cho phong cách của mình? KaT Jewelry sẽ mang đến cho bạn những mẫu vòng tay bạc đẹp cho nữ, chất lượng với thiết kế đa dạng, từ thanh lịch, nhẹ nhàng đến cá tính, hiện đại. Dù bạn yêu thích sự t...</p>
                    </div>
                </div>

                <div class="post-card">
                    <a href="#">
                        <img src="img/BoSuuTap/mat-day-chuyen-bac-unisex-1.jpg" alt="Bài viết 6"></a>
                    <div class="post-content">
                        <p class="post-date">22/04/2025</p>
                        <h2 class="post-title"><a href="#">Top mặt dây chuyền bạc Unisex độc đáo, dành cho mọi phong cách</a></h2>
                        <p class="post-excerpt">Top mặt dây chuyền bạc Unisex độc đáo, dành cho mọi phong cách Mặt dây chuyền bạc Unisex luôn là lựa chọn hoàn hảo cho những ai yêu thích sự đa dạng trong phong cách trang sức. Với thiết kế tinh tế và chất liệu bạc 925 bền đẹp, những mẫu mặt dây chuyền này không chỉ phù hợp cho cả nam và nữ, mà còn dễ dàng phối hợp ...</p>
                    </div>
                </div>

            </div>
        </div>

        <!-- End Main -->

        <!-- Footer -->
        <footer class="footer">
            <div class="inner-wrap">
                <!-- Cột trái -->
                <div class="footer-column left">
                    <ul>
                        <li>TRANG CHỦ</li>
                        <li>TRANG SỨC</li>
                        <li>BỘ SƯU TẬP</li>
                        <li>THÔNG TIN</li>
                        <li>LIÊN HỆ</li>
                    </ul>
                </div>

                <!-- Cột giữa -->
                <div class="footer-column center">
                    <div class="brand">
                        <img src="img/BoSuuTap/logo-footer.jpg" alt=""></div>
                    <p>03455555555</p>
                    <p>doremon@gmail.com</p>

                    <div class="logo-block">

                        <p>STORE IN HANOI</p>
                        <p>DESIGN BY </p>
                        <p>Since 2025</p>
                    </div>
                </div>

                <!-- Cột phải -->
                <div class="footer-column right">
                    <h3>Hà Nội</h3>
                    <ul>

                        <li>96 Định Công, Hoàng Mai, Hà Nội</li>
                        <li>97 Định Công, Hoàng Mai, Hà Nội</li>
                        <li>98 Định Công, Hoàng Mai, Hà Nội</li>
                    </ul>


                </div>
            </div>

            <div class="footer-bottom">
                <p>© Bản quyền thuộc về <b>Trần Quang Hiếu</b> | Cung cấp bởi <b>2 chicken Quy and Tien</b></p>
            </div>
        </footer>
        <!--End Footer -->

    <script src="JS/Header.js"></script>
</body>
</html>
