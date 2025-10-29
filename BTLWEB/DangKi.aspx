<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKi.aspx.cs" Inherits="BTLWEB.DangKi" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web bán hàng - Đăng Ký</title>
    <link href="css/reset.css" rel="stylesheet" />
    <link href="css/base.css" rel="stylesheet" />
    <link href="css/header.css" rel="stylesheet" />
    <link href="css/footer.css" rel="stylesheet" />
    <link href="css/DangKi.css" rel="stylesheet" />
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
                            <img src="img/logo.jpg" alt="logo"></a>
                    </div>
                    <div class="inner-user">
                        <form class="inner-search" method="get" action="TrangTimKiem.aspx">
                            <input placeholder=" Nhập nội dung tìm kiếm" type="text" name="key" class="input" />

                            <button class="btn" type="submit">
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </button>
                        </form>
                        <a href="GioHang.aspx" class="user"><i class="fa-solid fa-cart-shopping"></i></a>
                        <asp:HyperLink ID="lnkUser" runat="server" CssClass="user" NavigateUrl="DangNhap.aspx">
                            <i class="fa-regular fa-circle-user"></i>
                        </asp:HyperLink>
                    </div>
                </div>
            </div>
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
        <!-- End header -->

        <!-- Main Content - Register Form -->
        <main class="dangky-main">
            <div class="container">
                <section class="dangky-section">
                    <div class="dangky-form-container">
                        <h2>Đăng Ký</h2>
                        <div class="dangky-form">
                            <div class="form-group">
                                <label for="txtFullName">Họ và Tên</label>
                                <asp:TextBox ID="txtFullName" runat="server" placeholder="Nhập họ và tên"></asp:TextBox>
                                <span id="errorFullName" class="error-message"></span>
                            </div>
                            <div class="form-group">
                                <label for="txtPhone">Số điện thoại</label>
                                <asp:TextBox ID="txtPhone" runat="server" placeholder="Nhập số điện thoại của bạn"></asp:TextBox>
                                <span id="errorPhone" class="error-message"></span>
                            </div>
                            <div class="form-group">
                                <label for="txtAddress">Địa chỉ</label>
                                <asp:TextBox ID="txtAddress" runat="server" placeholder="Nhập địa chỉ của bạn"></asp:TextBox>
                                <span id="errorAddress" class="error-message"></span>
                            </div>
                            <div class="form-group">
                                <label for="txtUsername">Tên đăng nhập</label>
                                <asp:TextBox ID="txtUsername" runat="server" placeholder="Nhập tên đăng nhập của bạn"></asp:TextBox>
                                <span id="errorUsername" class="error-message"></span>
                            </div>
                            <div class="form-group">
                                <label for="txtPassword">Mật khẩu</label>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Nhập mật khẩu"></asp:TextBox>
                                <span id="errorPassword" class="error-message"></span>
                            </div>
                            <div class="form-group">
                                <label for="txtConfirmPassword">Xác nhận mật khẩu</label>
                                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Xác nhận mật khẩu"></asp:TextBox>
                                <span id="errorConfirmPassword" class="error-message"></span>
                            </div>
                            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                            <asp:Button ID="btnDangKi" runat="server" Text="Đăng Ký" CssClass="btn-primary"
                                OnClientClick="return validateDangKi();" OnClick="btnDangKi_Click" Style="margin-top: 15px" />
                            <p class="login-link">Đã có tài khoản? <a href="DangNhap.aspx">Đăng nhập ngay</a></p>
                        </div>
                    </div>
                </section>
            </div>
        </main>

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

    <script src="JS/DangKi.js"></script>
</body>
</html>
