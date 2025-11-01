using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;

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

                // TỰ ĐỘNG ĐIỀN FORM NẾU ĐÃ LOGIN
                AutoFillUserInfo();
            }
            else
            {
                //  XỬ LÝ THANH TOÁN
                XuLyThanhToan();
            }
        }

        private void AutoFillUserInfo()
        {
            if (Session["Username"] != null)
            {
                string username = Session["Username"].ToString();
                var users = (List<User>)Application["Users"];
                var user = users?.Find(u => u.Username == username);

                if (user != null)
                {
                    hoTen.Value = user.FullName;
                    phone.Value = user.Phone ?? "";
                    diaChi.Value = user.Address ?? "";
                }
            }
        }

        private void XuLyThanhToan()
        {
            // 1. Validate form
            string hoTen = Request.Form["hoTen"]?.Trim();
            string phone = Request.Form["phone"]?.Trim();
            string diaChi = Request.Form["diaChi"]?.Trim();
            string phuongThuc = Request.Form["phuongThuc"] ?? "COD";

            if (string.IsNullOrEmpty(hoTen) || string.IsNullOrEmpty(phone) || string.IsNullOrEmpty(diaChi))
            {
                // Có thể thêm thông báo lỗi ở đây
                return;
            }

            // 2. Lấy giỏ hàng
            var gioHang = Session["GioHang"] as List<CartItem>;
            if (gioHang == null || gioHang.Count == 0)
                return;

            // 3. Tính tổng tiền
            int tongTien = gioHang.Sum(item => item.Gia * item.SoLuong);

            // 4. Tạo mã đơn: DH001, DH002...
            var dsDonHang = (List<Dictionary<string, object>>)Application["DS_DonHang"];
            string maDon = "DH" + (dsDonHang.Count + 1).ToString("000");

            // 5. Tạo đơn hàng mới
            var donHang = new Dictionary<string, object>
            {
                ["MaDon"] = maDon,
                ["HoTen"] = hoTen,
                ["Phone"] = phone,
                ["DiaChi"] = diaChi,
                ["PhuongThuc"] = phuongThuc,
                ["SanPham"] = gioHang,  // Lưu nguyên giỏ hàng
                ["TongTien"] = tongTien,
                ["NgayDat"] = DateTime.Now,
                ["TrangThai"] = "Chờ xử lý"
            };

            // 6. Thêm vào Application
            dsDonHang.Add(donHang);
            Application["DS_DonHang"] = dsDonHang;

            // 7. XÓA GIỎ HÀNG
            Session["GioHang"] = null;

            // 8. Chuyển đến trang thành công
            Session["MaDonThanhCong"] = maDon;  // Truyền mã đơn
            Response.Redirect("ThanhToanThanhCong.aspx");
        }

        private void LoadOrderSummary()
        {
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