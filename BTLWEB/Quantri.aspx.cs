using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace BTLWEB
{
    public partial class Quantri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ChangeView_ServerClick(object sender, EventArgs e)
        {
            // Lấy control (liên kết) được nhấp
            var control = (HtmlAnchor)sender;
            // Hiển thị view tương ứng với nội dung liên kết
            ShowView(control.InnerText);
        }

        private void ShowView(string viewName)
        {
            // Ẩn tất cả các view
            dashboardView.Visible = false;
            productsView.Visible = false;
            ordersView.Visible = false;
            customersView.Visible = false;

            // Xóa class active khỏi tất cả liên kết
            btnDashboard.Attributes["class"] = "";
            btnProducts.Attributes["class"] = "";
            btnOrders.Attributes["class"] = "";
            btnCustomers.Attributes["class"] = "";

            // Hiển thị view được chọn và thêm class active
            switch (viewName)
            {
                case "Tổng quan":
                    dashboardView.Visible = true;
                    btnDashboard.Attributes["class"] = "active";
                    break;
                case "Sản phẩm":
                    productsView.Visible = true;
                    btnProducts.Attributes["class"] = "active";
                    break;
                case "Đơn hàng":
                    ordersView.Visible = true;
                    btnOrders.Attributes["class"] = "active";
                    break;
                case "Khách hàng":
                    customersView.Visible = true;
                    btnCustomers.Attributes["class"] = "active";
                    break;
                default:
                    dashboardView.Visible = true;
                    btnDashboard.Attributes["class"] = "active";
                    break;
            }
        }

    }
}