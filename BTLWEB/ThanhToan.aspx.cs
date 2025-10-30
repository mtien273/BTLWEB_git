using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTLWEB
{
    public partial class ThanhToan : System.Web.UI.Page
    {
        public string OrderHtml = "";
        public string TotalHtml = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadOrderSummary();
            }
        }

        private void LoadOrderSummary()
        {
            // Đọc đúng kiểu CartItem
            var gioHang = Session["GioHang"] as List<CartItem>;
            if (gioHang == null || gioHang.Count == 0)
            {
                OrderHtml = "<p style='text-align:center;'>Giỏ hàng của bạn đang trống.</p>";
                TotalHtml = "0 ₫";
                return;
            }

            int tong = 0;
            foreach (var item in gioHang)
            {
                int thanhTien = item.Gia * item.SoLuong;
                tong += thanhTien;

                OrderHtml += $@"
                <div class='product-item'>
                    <img src='img/nhanbac/{item.HinhAnh}' alt='{item.TenSP}' />
                    <div class='item-details'>
                        <h3>{item.TenSP}</h3>
                        <p>Size: {item.Size}</p>
                        <p>Số lượng: {item.SoLuong}</p>
                        <p>Đơn giá: {item.Gia:N0} ₫</p>
                        <p><strong>Thành tiền: {thanhTien:N0} ₫</strong></p>
                    </div>
                </div>";
            }

            TotalHtml = $"{tong:N0} ₫";
        }
    }
}
