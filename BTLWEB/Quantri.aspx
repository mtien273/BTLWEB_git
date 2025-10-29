<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quantri.aspx.cs" Inherits="BTLWEB.Quantri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Quản trị Moji-Jewelry</title>
    <link rel="stylesheet" href="css/QuanTri.css" />
</head>
<body>
   <form id="form1" runat="server">
    <header class="header">
        <h1>Quản Trị Moji</h1>
        <a href="javascript:void(0)" class="logout" runat="server" id="btnLogout" aria-label="Đăng xuất">Đăng xuất</a>
    </header>

    <nav class="sidebar">
        <ul>
            <li><a href="javascript:void(0)" runat="server" id="btnDashboard" onserverclick="ChangeView_ServerClick" class="active" aria-label="Xem tổng quan">Tổng quan</a></li>
            <li><a href="javascript:void(0)" runat="server" id="btnProducts" onserverclick="ChangeView_ServerClick" aria-label="Xem sản phẩm">Sản phẩm</a></li>
            <li><a href="javascript:void(0)" runat="server" id="btnOrders" onserverclick="ChangeView_ServerClick" aria-label="Xem đơn hàng">Đơn hàng</a></li>
            <li><a href="javascript:void(0)" runat="server" id="btnCustomers" onserverclick="ChangeView_ServerClick" aria-label="Xem khách hàng">Khách hàng</a></li>
        </ul>
    </nav>

    <main class="main-content">
        <!-- Dashboard View -->
        <div id="dashboardView" runat="server" visible="true">
            <h2>Thống kê nhanh</h2>
            <div class="cards">
                <div class="card">
                    <h3>Đơn hàng hôm nay</h3>
                    <p><span id="todayOrders" runat="server">24</span></p>
                </div>
                <div class="card">
                    <h3>Doanh thu hôm nay</h3>
                    <p><span id="todayRevenue" runat="server">120,000,000₫</span></p>
                </div>
                <div class="card">
                    <h3>Tồn kho</h3>
                    <p><span id="inventory" runat="server">540 sản phẩm</span></p>
                </div>
            </div>
        </div>

        <!-- Products View -->
        <div id="productsView" runat="server" visible="false">
            <h2>Danh sách sản phẩm</h2>
            <table class="data-table">
                <thead>
                    <tr>
                        <th>Ảnh</th>
                        <th>Tên sản phẩm</th>
                        <th>Giá</th>
                        <th>Loại</th>
                        <th>Hành động</th>
                    </tr>
                </thead>
                <tbody id="productsTableBody" runat="server">
                    <tr>
                        <td><img src="images/sample-product.jpg" alt="Nhẫn vàng" width="50" /></td>
                        <td>Nhẫn vàng 18K</td>
                        <td>5,000,000₫</td>
                        <td>Vàng</td>
                        <td><button class="btn-delete" aria-label="Xóa sản phẩm Nhẫn vàng">Xóa</button></td>
                    </tr>
                    <tr>
                        <td><img src="images/sample-product2.jpg" alt="Dây chuyền bạc" width="50" /></td>
                        <td>Dây chuyền bạc</td>
                        <td>2,000,000₫</td>
                        <td>Bạc</td>
                        <td><button class="btn-delete" aria-label="Xóa sản phẩm Dây chuyền bạc">Xóa</button></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Orders View -->
        <div id="ordersView" runat="server" visible="false">
            <h2>Danh sách đơn hàng</h2>
            <table class="data-table">
                <thead>
                    <tr>
                        <th>Mã đơn</th>
                        <th>Khách hàng</th>
                        <th>Ngày đặt</th>
                        <th>Tổng tiền</th>
                        <th>Trạng thái</th>
                    </tr>
                </thead>
                <tbody id="ordersTableBody" runat="server">
                    <tr>
                        <td>DH001</td>
                        <td>Nguyễn Văn A</td>
                        <td>15/10/2025</td>
                        <td>7,000,000₫</td>
                        <td>Đang xử lý</td>
                    </tr>
                    <tr>
                        <td>DH002</td>
                        <td>Trần Thị B</td>
                        <td>16/10/2025</td>
                        <td>3,500,000₫</td>
                        <td>Hoàn thành</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Customers View -->
        <div id="customersView" runat="server" visible="false">
            <h2>Danh sách người dùng</h2>
            <table class="data-table">
                <thead>
                    <tr>
                        <th>Tên tài khoản</th>
                        <th>Mật khẩu</th>
                        <th>Quyền</th>
                        <th>Quê quán</th>
                        <th>CCCD</th>
                        <th>Thao tác</th>
                    </tr>
                </thead>
                <tbody id="customersTableBody" runat="server">
                    <tr>
                        <td>user1</td>
                        <td>password123</td>
                        <td>user</td>
                        <td>Hà Nội</td>
                        <td>123456789012</td>
                        <td><button class="btn-delete" aria-label="Xóa người dùng user1">Xóa</button></td>
                    </tr>
                    <tr>
                        <td>admin1</td>
                        <td>adminpass</td>
                        <td>admin</td>
                        <td>TP.HCM</td>
                        <td>987654321098</td>
                        <td><button class="btn-delete" aria-label="Xóa người dùng admin1">Xóa</button></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </main>
</form>
</body>
</html>
