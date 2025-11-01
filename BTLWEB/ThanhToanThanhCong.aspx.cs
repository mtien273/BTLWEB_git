using System;
using System.Web.UI;

namespace BTLWEB
{
    public partial class ThanhToanThanhCong : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string maDon = Session["MaDonThanhCong"]?.ToString() ?? "DH001";
                litMaDon.Text = maDon;  // GÁN VÀO LITERAL
            }
        }
    }
}