using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWEB
{
    public partial class NhanBac : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // 1. Lấy toàn bộ danh sách sản phẩm từ Application
                List<SanPham> dsSP = (List<SanPham>)Application["DS_SanPham"];

                // 2. Lọc ra chỉ những sản phẩm là "Nhẫn Bạc"
                var dsNhanBac = dsSP.Where(sp => sp.Type == "NhanBac").ToList();

                // 3. Gán danh sách này cho Repeater và hiển thị
                rptNhanBac.DataSource = dsNhanBac;
                rptNhanBac.DataBind();
            }
        }
    }
}