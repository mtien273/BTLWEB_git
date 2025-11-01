using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;

namespace BTLWEB
{
    public partial class Account : Page
    {
        public string OrderHistoryHtml = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("DangNhap.aspx");
                return;
            }

            if (!IsPostBack)
            {
                LoadUserInfo();
                LoadOrderHistory();
            }
        }

        private void LoadUserInfo()
        {
            string username = Session["Username"].ToString();
            var users = (List<User>)Application["Users"];
            var user = users?.FirstOrDefault(u => u.Username == username);

            if (user != null)
            {
                lblHoTen.InnerText = user.FullName;
                lblSDT.InnerText = user.Phone ?? "Chưa cập nhật";
                lblDiaChi.InnerText = user.Address ?? "Chưa cập nhật";
            }
        }

        private void LoadOrderHistory()
        {
            string phone = lblSDT.InnerText;
            var dsDonHang = (List<Dictionary<string, object>>)Application["DS_DonHang"];
            if (dsDonHang == null || dsDonHang.Count == 0)
            {
                OrderHistoryHtml = "<p>Chưa có đơn hàng nào.</p>";
                return;
            }

            var orders = dsDonHang.Where(o => o["Phone"].ToString() == phone).ToList();
            if (orders.Count == 0)
            {
                OrderHistoryHtml = "<p>Chưa có đơn hàng nào.</p>";
                return;
            }

            string html = "";
            foreach (var dh in orders.OrderByDescending(o => (DateTime)o["NgayDat"]))
            {
                html += $@"
                    <div class='order-item'>
                        <p><strong>Mã đơn:</strong> {dh["MaDon"]}</p>
                        <p><strong>Ngày đặt:</strong> {((DateTime)dh["NgayDat"]).ToString("dd/MM/yyyy HH:mm")}</p>
                        <p><strong>Tổng tiền:</strong> {((int)dh["TongTien"]).ToString("N0")} ₫</p>
                        <p><strong>Trạng thái:</strong> {dh["TrangThai"]}</p>
                        <hr/>";
            }

            OrderHistoryHtml = html;
        }

        protected void btnDangXuat_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("TrangChu.aspx");
        }
    }
}
