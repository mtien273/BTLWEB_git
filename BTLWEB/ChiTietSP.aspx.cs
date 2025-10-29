using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWEB
{
    public partial class ChiTietSP : System.Web.UI.Page
    {
        // 1. Định nghĩa các biến public để file .aspx có thể truy cập
        public string TenSP { get; set; } = "Sản phẩm không tìm thấy";
        public string MaSP { get; set; } = "";
        public string Gia { get; set; } = "0";
        public string XuatXu { get; set; } = "N/A";
        public string Desc { get; set; } = "";
        public string AnhChinh { get; set; } = "default.jpg"; // Ảnh mặc định nếu lỗi
        public List<string> ListAnh { get; set; } = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            // 2. Lấy MaSP từ URL (ví dụ: ?ma=NB1)
            string ma = Request.QueryString["ma"];
            if (string.IsNullOrEmpty(ma))
            {
                // Nếu không có mã, không cần làm gì, trang sẽ hiển thị "Sản phẩm không tìm thấy"
                return;
            }

            // 3. Lấy "database"
            var dsSP = (List<SanPham>)Application["DS_SanPham"];

            // 4. Tìm sản phẩm
            var sp = dsSP.FirstOrDefault(p => p.MaSP == ma);

            // 5. Gán thông tin nếu tìm thấy
            if (sp != null)
            {
                MaSP = sp.MaSP;
                TenSP = sp.TenSP;
                Gia = sp.Gia.ToString("N0"); // Định dạng giá: 450000 -> 450,000
                XuatXu = sp.XuatXu;
                Desc = sp.Desc;
                ListAnh = sp.Images;

                // Lấy ảnh đầu tiên làm ảnh chính
                if (sp.Images.Count > 0)
                {
                    AnhChinh = sp.Images[0];
                }
            }
        }
    }
}