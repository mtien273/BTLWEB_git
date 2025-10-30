<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BongTaiBac.aspx.cs" Inherits="BTLWEB.BongTaiBac" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="CSS/reset.css" rel="stylesheet" />
    <link href="CSS/base.css" rel="stylesheet" />
    <link href="CSS/header.css" rel="stylesheet" />
    <link href="CSS/footer.css" rel="stylesheet" />
    <link href="CSS/NhanBac.css" rel="stylesheet" />
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
                            <a href="LienHe.aspx">LIÊN HỆ</a>
                        </li>
                    </ul>
                </div>
            </div>
        </header>
        <!-- End header -->
        <!-- Main -->

        <!-- Hero Banner -->

        <!-- End Hero Banner -->
        <div class="container">
            <!-- Products Section -->
            <section class="products-section">
            <p class="breadcrumb">TRANG CHỦ / BÔNG TAI BẠC / EARRINGS</p>
            <h2>[BÔNG TAI BẠC] CAO CẤP HÀ NỘI - MoJi</h2>
                <div class="sort-container">
                   
                </div>
                <div class="content-wrapper">
                    <aside class="sidebar">
                        <h3>Danh mục</h3>
                        <ul>
                            <li><a href="NhanBac.aspx">Nhẫn bạc 507</a></li>
                            <li><a href="BongTaiBac.aspx">Bông tai bạc (827)</a></li>
                            <li><a href="DayChuyenBac.aspx">Dây chuyền bạc (720)</a></li>
                            <li><a href="LacBac.aspx">Lắc bạc (561)</a></li>
                        </ul>
                    </aside>
                    <div class="products-grid">
                        <asp:Repeater ID="rptBongTaiBac" runat="server">
                            <ItemTemplate>
                                <div class="product-card">
                                    <a href='ChiTietSP.aspx?ma=<%# Eval("MaSP") %>'>

                                        <img src='img/NhanBac/<%# Eval("Images[0]") %>' alt='<%# Eval("TenSP") %>' />

                                        <h3><%# Eval("TenSP") %></h3>

                                        <p class="price"><%# Eval("Gia", "{0:N0}") %>đ</p>
                                    </a>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <div class="product-card">
                            <a href="ChiTietSP.aspx">
                                <img src="img/NhanBac/necklace.jpg" alt="R MIDI HEART BOW GEM" />
                                <h3>R MIDI HEART BOW GEM</h3>
                                <p class="price">350.000đ</p>
                            </a>

                        </div>
                        <div class="product-card">
                            <img src="img/NhanBac/necklace.jpg" alt="R MIDI BIG RED HEART GEM" />
                            <h3>R MIDI BIG RED HEART GEM</h3>
                            <p class="price">490.000đ</p>
                        </div>
                        <div class="product-card">
                            <img
                                src="img/NhanBac/necklace.jpg"
                                alt="R MIDI BALL LINE LEAF CROWN GEM" />
                            <h3>R MIDI BALL LINE LEAF CROWN GEM</h3>
                            <p class="price">450.000đ</p>
                        </div>
                        <div class="product-card">
                            <img src="img/NhanBac/necklace.jpg" alt="R MIDI SQUARE FLOWER GEM" />
                            <h3>R MIDI SQUARE FLOWER GEM</h3>
                            <p class="price">450.000đ</p>
                        </div>
                        <div class="product-card">
                            <img
                                src="img/NhanBac/necklace.jpg"
                                alt="R BIG WIRE ART SPECIAL FLOWER" />
                            <h3>R BIG WIRE ART SPECIAL FLOWER</h3>
                            <p class="price">890.000đ</p>
                        </div>
                        <div class="product-card">
                            <img
                                src="img/NhanBac/necklace.jpg"
                                alt="R MIDI BALL AND OPAL STONE TRIPLE BALL" />
                            <h3>R MIDI BALL AND OPAL STONE TRIPLE BALL</h3>
                            <p class="price">490.000đ</p>
                        </div>
                        <div class="product-card">
                            <img src="img/NhanBac/necklace.jpg" alt="R MIDI OPEN BUTTERFLY" />
                            <h3>R MIDI OPEN BUTTERFLY</h3>
                            <p class="price">590.000đ</p>
                        </div>
                        <div class="product-card">
                            <img src="img/NhanBac/necklace.jpg" alt="R MIDI OPEN BIG WIRE ART HEART" />
                            <h3>R MIDI OPEN BIG WIRE ART HEART</h3>
                            <p class="price">590.000đ</p>
                        </div>
                    </div>
                </div>

            </section>
        </div>
                <div class="pagination-container">
    <a href="#" class="page-number active">1</a>
    <a href="#" class="page-number">2</a>
    <a href="#" class="page-number">3</a>
    <a href="#" class="page-number">4</a>
    <a href="#" class="page-number">5</a>
    <a href="#" class="page-number">►</a>
</div>


        <!--End  Main -->
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
