<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="BTLWEB.Account" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tài khoản của tôi</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link href="css/reset.css" rel="stylesheet" />
    <link href="css/base.css" rel="stylesheet" />
    <link href="css/header.css" rel="stylesheet" />
    <link href="css/footer.css" rel="stylesheet" />
    <link href="css/Account.css" rel="stylesheet" />
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
                    <a href="TrangChu.aspx"><img src="img/logo.jpg" alt="logo" /></a>
                </div>
                <div class="inner-user">
                    <form class="inner-search" method="get" action="TrangTimKiem.aspx">
                        <input placeholder="Nhập nội dung tìm kiếm" type="text" name="key" class="input" />
                        <button class="btn" type="submit">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </button>
                    </form>
                    <a href="GioHang.aspx" class="user"><i class="fa-solid fa-cart-shopping"></i></a>
                    <a href="Account.aspx" class="user"><i class="fa-regular fa-circle-user"></i></a>
                </div>
            </div>
        </div>
        <button type="button" id="menu-toggle-btn" class="menu-toggle-btn">
            <i class="fa-solid fa-bars-staggered"></i>
        </button>
        <div class="inner-menu">
            <div class="container">
                <ul>
                    <li><a href="TrangChu.aspx">TRANG CHỦ</a></li>
                    <li><a href="NhanBac.aspx">TRANG SỨC</a></li>
                    <li><a href="BoSuuTap.aspx">BỘ SƯU TẬP</a></li>
                    <li><a href="ThongTin.aspx">THÔNG TIN</a></li>
                    <li><a href="LienHe.aspx">LIÊN HỆ</a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- Main -->
    <div class="main-wrapper">
        <form id="form1" runat="server">
            <div class="account-container">

                <!-- Cột trái -->
                <div class="account-left">
                    <h2>Thông tin tài khoản</h2>
                    <div class="info-box">
                        <p><strong>Họ tên:</strong> <span id="lblHoTen" runat="server"></span></p>
                        <p><strong>Số điện thoại:</strong> <span id="lblSDT" runat="server"></span></p>
                        <p><strong>Địa chỉ:</strong> <span id="lblDiaChi" runat="server"></span></p>
                    </div>
                    <div class="account-buttons">
                        <asp:Button ID="btnDangXuat" runat="server" Text="Đăng xuất" CssClass="btn-logout" OnClick="btnDangXuat_Click" />
                    </div>
                </div>

                <!-- Cột phải -->
                <div class="account-right">
                    <h2>Lịch sử mua hàng</h2>
                    <div id="orderHistory" runat="server" class="order-history">
                        <%= OrderHistoryHtml %>
                    </div>
                </div>

            </div>
        </form>
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
                    <img src="assets/images/logo-footer.webp" alt="logo" />
                </div>
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

    <script src="JS/Header.js"></script>
</body>
</html>
