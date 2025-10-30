using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWEB
{
    public partial class BongTaiBac : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // 1. Lấy danh sách sản phẩm
                List<SanPham> dsSP = (List<SanPham>)Application["DS_SanPham"];

                // 2. Lọc ra các sản phẩm có Type = "BongTaiBac"
                var dsBongTaiBac = dsSP.Where(sp => sp.Type == "BongTaiBac").ToList();

                // 3. Gán vào Repeater
                rptBongTaiBac.DataSource = dsBongTaiBac;
                rptBongTaiBac.DataBind();
            }
        }
    }
}
