<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangTimKiem.aspx.cs" Inherits="BTLWEB.TrangTimKiem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/reset.css" rel="stylesheet" />
    <link href="CSS/base.css" rel="stylesheet" />
    <link href="CSS/header.css" rel="stylesheet" />
    <link href="CSS/footer.css" rel="stylesheet" />
    <link href="CSS/NhanBac.css" rel="stylesheet" />
    <link rel="stylesheet" href="Vendor/css/all.min.css" />
</head>
<body style="padding-top: 110px">

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

     <div class="inner-menu" id="main-menu">
         <div class=" container">
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
        <section class="products-section">
            
            <h2>Kết quả tìm kiếm cho: "<%= TuKhoa %>"</h2>
            
            <div class="content-wrapper">
                <aside class="sidebar">
                    <h3>Danh mục</h3>
                    <ul>
                        <li><a href="NhanBac.aspx">Nhẫn bạc</a></li>
                        <li><a href="#">Bông tai bạc</a></li>
                        <li><a href="#">Dây chuyền bạc</a></li>
                        <li><a href="#">Lắc bạc</a></li>
                    </ul>
                </aside>

                <div class="products-grid">
                    <asp:Repeater ID="rptKetQua" runat="server">
                        <ItemTemplate>
                            <div class="product-card">
                                <a href='ChiTietSP.aspx?ma=<%# Eval("MaSP") %>'>
                                    
                                    <img src='<%# Eval("Images[0]") %>' alt='<%# Eval("TenSP") %>' />
                                    
                                    <h3><%# Eval("TenSP") %></h3>
                                    <p class="price"><%# Eval("Gia", "{0:N0}") %>đ</p>
                                </a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    
                    <asp:Literal ID="litKhongCoKetQua" runat="server" Visible="false">
                        <p style="text-align: center; width: 100%;">
                            Không tìm thấy sản phẩm nào phù hợp với từ khóa của bạn.
                        </p>
                    </asp:Literal>
                </div>
            </div>
        </section>
    </div>
<!-- End Main -->

</body>
</html>
