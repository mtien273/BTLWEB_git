<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChiTietSP.aspx.cs" Inherits="BTLWEB.ChiTietSP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/reset.css" rel="stylesheet" />
    <link href="CSS/base.css" rel="stylesheet" />
    <link href="CSS/header.css" rel="stylesheet" />
    <link href="CSS/footer.css" rel="stylesheet" />
    <link href="CSS/ChiTietSP.css" rel="stylesheet" />
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

        <!-- Main -->


        <div class="container">
            <!-- Product Detail Section -->
            <section class="product-detail-section">
                <p class="breadcrumb">TRANG CHỦ / <%= TenSP %></p>

                <div class="product-detail">
                    <div class="product-image">
                        <img src="img/nhanbac/<%= AnhChinh %>"
                            alt="<%= TenSP %>"
                            class="main-image"
                            id="mainImage" />

                        <div class="thumbnails">
                            <% foreach (var img in ListAnh)
                                { %>
                            <img src="img/nhanbac/<%= img %>" alt="Thumbnail" onclick="changeImage(this)" />
                            <% } %>
                        </div>
                    </div>

                    <div class="product-info">
                        <h2><%= TenSP %></h2>

                        <div class="product-description">
                            <h3>Chi tiết sản phẩm</h3>
                            <ul>
                                <li><strong>Mã sản phẩm:</strong> <%= MaSP %></li>
                                <li><strong>Xuất xứ:</strong> <%= XuatXu %></li>
                                <li><strong>Mô tả: </strong><%= Desc %></li>
                            </ul>
                        </div>

                        <p class="price"><%= Gia %>đ</p>

                        <div class="size-selector">
                            <h3>Size:</h3>
                            <div class="sizes">
                                <button type="button" class="size-btn" onclick="selectSize(this)">9</button>
                                <button type="button" class="size-btn" onclick="selectSize(this)">10</button>
                                <button type="button" class="size-btn" onclick="selectSize(this)">11</button>
                                <button type="button" class="size-btn" onclick="selectSize(this)">12</button>
                            </div>
                        </div>

                        <div class="quantity-selector">
                            Số lượng:
                    <div class="quantity-box">
                        <button type="button" class="qty-btn" onclick="decreaseQuantity()">-</button>
                        <input type="text" class="input-text qty" value="1" id="qty" />
                        <button type="button" class="qty-btn" onclick="increaseQuantity()">+</button>
                    </div>
                        </div>

                        <form id="formAddToCart" method="get" action="GioHang.aspx">
                            <input type="hidden" name="ma" value="<%= MaSP %>" />
                            <input type="hidden" id="inputSize" name="size" />
                            <input type="hidden" id="inputQty" name="qty" />

                            <div class="action-buttons">


                                <button type="submit" class="btn-favorite" onclick="return prepareAddToCart();">
                                    Thêm vào giỏ hàng
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </section>

            <br />

            <!-- Related Products -->
            <section class="related-products">
                <h2>Sản Phẩm Liên Quan</h2>
                <div class="products-grid">
                    <div class="product-card">
                        <img src="./img/ChiTietSP/related-product1.jpg" alt="Vòng Cổ Bạc 1" />
                        <h3>Vòng Cổ Bạc Mảnh</h3>
                        <p class="price">800.000 VNĐ</p>
                        <a href="#" class="btn-secondary">Xem Chi Tiết</a>
                    </div>
                    <div class="product-card">
                        <img src="./img/ChiTietSP/related-product2.jpg" alt="Vòng Cổ Bạc 2" />
                        <h3>Vòng Cổ Đính Đá</h3>
                        <p class="price">700.000 VNĐ</p>
                        <a href="#" class="btn-secondary">Xem Chi Tiết</a>
                    </div>
                    <div class="product-card">
                        <img src="./img/ChiTietSP/related-product3.jpg" alt="Vòng Cổ Bạc 3" />
                        <h3>Vòng Cổ Hoa Sen</h3>
                        <p class="price">650.000 VNĐ</p>
                        <a href="#" class="btn-secondary">Xem Chi Tiết</a>
                    </div>
                </div>
            </section>
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
                        <img src="assets/images/logo-footer.webp" alt=""></div>
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


    <script src="JS/ChiTietSP.js"></script>
</body>
</html>
