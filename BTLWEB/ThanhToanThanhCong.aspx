<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThanhToanThanhCong.aspx.cs" Inherits="BTLWEB.ThanhToanThanhCong" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Thanh toán thành công!</title>
    <link href="CSS/base.css" rel="stylesheet" />
    <link href="CSS/ThanhToanThanhCong.css" rel="stylesheet" />
</head>
<body>
    <div class="success-container">
        <div class="success-card">
            <div class="success-icon"></div>
            <h1>CẢM ƠN QUÝ KHÁCH!</h1>
            <p>Đơn hàng của bạn đã được ghi nhận thành công.</p>
            <div class="ma-don">
                Mã đơn: <strong><asp:Literal ID="litMaDon" runat="server" /></strong>
            </div>
            <p>Chúng tôi sẽ liên hệ với bạn trong vòng 24h để xác nhận.</p>
            <a href="TrangChu.aspx" class="btn-home">VỀ TRANG CHỦ</a>
        </div>
    </div>
</body>
</html>