<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="BTLWEB.LienHe" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Liên hệ - Web Trang Sức</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/reset.css" rel="stylesheet" />
    <link href="css/base.css" rel="stylesheet" />
    <link href="css/lienhe.css" rel="stylesheet" />
    <link href="css/header.css" rel="stylesheet" />
    <link href="css/footer.css" rel="stylesheet" />
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
                            <img src="img/logo.jpg" alt="logo" /></a>
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
                    </ul>
                </div>
            </div>
        </header>
        <!-- End Header -->

        <!-- LIÊN HỆ -->
        <div class="contact-container container">
            <div class="contact-left">
                <h2>Liên hệ với chúng tôi</h2>
                <input type="text" placeholder="Họ và tên" />
                <input type="email" placeholder="Email" />
                <input type="text" placeholder="Điện thoại" />
                <input type="text" placeholder="Tiêu đề" />
                <textarea placeholder="Nội dung"></textarea>
                <button>Gửi liên hệ</button>
            </div>

            <div class="contact-right">
                <h2>Về Moji</h2>
                <p>
                    Chúng tôi chăm sóc khách hàng như người thân, trò chuyện như những người bạn. 
                Từ đó tạo ra niềm tin, sự hài lòng trên từng sản phẩm trao đến tay. 
                Và đó, là lời hứa chân thành nhất dành cho bạn!
                </p>

                <p><b>Địa chỉ:</b> 96 Định Công, Hoàng Mai, Hà Nội</p>
                <p><b>E-mail:</b> doremon@gmail.com</p>
                <p><b>Điện thoại:</b> 03455555555 - (028) 62 818 818</p>
            </div>
        </div>

        <!-- Footer -->
        <footer class="footer">
            <div class="inner-wrap">
                <div class="footer-column left">
                    <ul>
                        <li>TRANG CHỦ</li>
                        <li>TRANG SỨC</li>
                        <li>BỘ SƯU TẬP</li>
                        <li>THÔNG TIN</li>
                        <li>LIÊN HỆ</li>
                    </ul>
                </div>

                <div class="footer-column center">
                    <div class="brand">
                        <img src="assets/images/logo-footer.webp" alt="" /></div>
                    <p>03455555555</p>
                    <p>doremon@gmail.com</p>
                    <div class="logo-block">
                        <p>STORE IN HANOI</p>
                        <p>DESIGN BY</p>
                        <p>Since 2025</p>
                    </div>
                </div>

                <div class="footer-column right">
                    <h3>Hà Nội</h3>
                    <ul>

                        <li>94 Định Công, Hoàng Mai, Hà Nội</li>
                        <li>95 Định Công, Hoàng Mai, Hà Nội</li>
                        <li>96 Định Công, Hoàng Mai, Hà Nội</li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <p>© Bản quyền thuộc về <b>Trần Quang Hiếu</b> | Cung cấp bởi <b>2 chicken Quy and Tien</b></p>
            </div>
        </footer>

    <script src="JS/Header.js"></script>
</body>
</html>
