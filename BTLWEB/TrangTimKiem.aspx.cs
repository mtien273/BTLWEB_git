using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWEB
{
    public partial class TrangTimKiem : System.Web.UI.Page
    {
        public string TuKhoa { get; set; } = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // 1. Lấy từ khóa từ URL (ví dụ: ?key=nhan)
                string key = Request.QueryString["key"];

                if (string.IsNullOrEmpty(key))
                {
                    TuKhoa = "vui lòng nhập từ khóa";
                    litKhongCoKetQua.Visible = true;
                    return;
                }

                TuKhoa = key; // Lưu lại để hiển thị

                // 2. Lấy toàn bộ sản phẩm từ "database"
                var dsSP = (List<SanPham>)Application["DS_SanPham"];

                // 3. Lọc danh sách (không phân biệt hoa/thường)
                var ketQua = dsSP
                    .Where(sp =>
                        sp.TenSP.ToLower().Contains(key.ToLower()) ||
                        sp.Type.ToLower().Contains(key.ToLower())
                    // Bạn có thể thêm || sp.Desc.ToLower().Contains(key.ToLower()) 
                    // nếu muốn tìm cả trong mô tả
                    )
                    .ToList();

                // 4. Hiển thị kết quả
                if (ketQua.Count > 0)
                {
                    // Nếu tìm thấy, nạp vào Repeater
                    rptKetQua.DataSource = ketQua;
                    rptKetQua.DataBind();
                }
                else
                {
                    // Nếu không, bật thông báo "không tìm thấy"
                    litKhongCoKetQua.Visible = true;
                }
            }
        }
    }
}