<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThongTin.aspx.cs" Inherits="BTLWEB.ThongTin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css\reset.css" rel="stylesheet" />
    <link href="css\base.css" rel="stylesheet" />
    <link href="CSS\ThongTin.css" rel="stylesheet" />
    <link href="css\footer.css" rel="stylesheet" />
    <link rel="stylesheet" href="Vendor/css/all.min.css" />
    <link href="css\header.css" rel="stylesheet" />
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

        <!-- Hero Banner -->
        <section class="hero">
            <div class="hero-slider">
                <img src="./img/banner.jpg" alt="Banner Trang Sức Bạc">
            </div>
        </section>

        <section class="story-section">
            <div class="story-content">
                <h2>Câu Chuyện Của MoJi: Nơi Mỗi Món Trang Sức Kể Một Câu Chuyện</h2>

                <p>Tại <b>MoJi</b>, chúng tôi tin rằng mỗi món trang sức không chỉ là một phụ kiện lấp lánh, mà là một mảnh ghép của câu chuyện, một kỷ vật lưu giữ những khoảnh khắc quý giá.</p>

                <p>Hành trình của chúng tôi bắt đầu vào năm <b>2025</b>, không phải từ một xưởng chế tác lớn, mà từ một niềm đam mê cháy bỏng: tôn vinh vẻ đẹp và những câu chuyện tình yêu, tình bạn, và cả những dấu mốc cá nhân trong cuộc đời mỗi người. Chúng tôi nhận ra rằng, món trang sức đẹp nhất không phải là món đắt giá nhất, mà là món chứa đựng nhiều ý nghĩa nhất.</p>

                <p>Từ ý tưởng đó, <b>MoJi</b> ra đời với sứ mệnh mang đến những thiết kế tinh xảo, chất lượng vượt trội, và trở thành người bạn đồng hành cùng bạn trên mọi chặng đường, giúp bạn kể câu chuyện của riêng mình.</p>
            </div>
        </section>

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
