using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.HtmlControls;

namespace BTLWEB
{
    public partial class Quantri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // KIỂM TRA ADMIN
            if (Session["Username"]?.ToString() != "admin")
            {
                Response.Redirect("DangNhap.aspx");
                return;
            }

            if (!IsPostBack)
            {
                ShowView("Tổng quan");
            }

            // LUÔN LOAD ĐƠN HÀNG + DASHBOARD
            LoadOrders();
            LoadDashboard();
        }

        protected void ChangeView_ServerClick(object sender, EventArgs e)
        {
            var control = (HtmlAnchor)sender;
            ShowView(control.InnerText);
        }

        private void LoadOrders()
        {
            var dsDonHang = (List<Dictionary<string, object>>)Application["DS_DonHang"];
            string html = "";

            if (dsDonHang == null || dsDonHang.Count == 0)
            {
                html = "<tr><td colspan='6' style='text-align:center; padding:20px; color:#999;'>Chưa có đơn hàng nào!</td></tr>";
            }
            else
            {
                foreach (var don in dsDonHang)
                {
                    var spList = (List<CartItem>)don["SanPham"];
                    string tenSP = string.Join("<br>", spList.Select(p => $"{p.TenSP} (x{p.SoLuong})"));
                    if (tenSP.Length > 200) tenSP = tenSP.Substring(0, 197) + "...";

                    html += $@"
                    <tr>
                        <td><strong>{don["MaDon"]}</strong></td>
                        <td style='max-width:250px; line-height:1.5;'>{tenSP}</td>
                        <td>{don["HoTen"]}</td>
                        <td>{((DateTime)don["NgayDat"]):dd/MM HH:mm}</td>
                        <td style='color:#d32f2f; font-weight:bold;'>{don["TongTien"]:N0}₫</td>
                        <td>
                            <span style='background:#fff3cd; color:#856404; padding:4px 8px; border-radius:4px; font-size:12px;'>
                                {don["TrangThai"]}
                            </span>
                        </td>
                    </tr>";
                }
            }

            ordersTableBody.InnerHtml = html;
        }

        private void LoadDashboard()
        {
            var dsDonHang = (List<Dictionary<string, object>>)Application["DS_DonHang"];
            var today = DateTime.Today;

            int todayOrdersCount = dsDonHang?.Count(d => ((DateTime)d["NgayDat"]).Date == today) ?? 0;
            int todayRevenueAmount = dsDonHang?
                .Where(d => ((DateTime)d["NgayDat"]).Date == today)
                .Sum(d => (int)d["TongTien"]) ?? 0;

            todayOrders.InnerHtml = todayOrdersCount.ToString();
            todayRevenue.InnerHtml = todayRevenueAmount.ToString("N0") + "₫";
            inventory.InnerHtml = "540 sản phẩm";
        }

        private void ShowView(string viewName)
        {
            dashboardView.Visible = false;
            productsView.Visible = false;
            ordersView.Visible = false;
            customersView.Visible = false;

            btnDashboard.Attributes["class"] = "";
            btnProducts.Attributes["class"] = "";
            btnOrders.Attributes["class"] = "";
            btnCustomers.Attributes["class"] = "";

            switch (viewName)
            {
                case "Tổng quan":
                    dashboardView.Visible = true;
                    btnDashboard.Attributes["class"] = "active";
                    LoadDashboard();
                    break;
                case "Sản phẩm":
                    productsView.Visible = true;
                    btnProducts.Attributes["class"] = "active";
                    break;
                case "Đơn hàng":
                    ordersView.Visible = true;
                    btnOrders.Attributes["class"] = "active";
                    LoadOrders();
                    break;
                case "Khách hàng":
                    customersView.Visible = true;
                    btnCustomers.Attributes["class"] = "active";
                    break;
                default:
                    dashboardView.Visible = true;
                    btnDashboard.Attributes["class"] = "active";
                    LoadDashboard();
                    break;
            }
        }
    }
}