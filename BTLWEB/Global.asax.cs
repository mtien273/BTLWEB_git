using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BTLWEB
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["Users"] = new List<User>();

            // TẠO "DATABASE" SẢN PHẨM MẪU
            List<SanPham> dsSP = new List<SanPham>
            {
                // ===== 4 SẢN PHẨM NHẪN BẠC (Type="NhanBac") =====
                new SanPham
                {
                    MaSP="NB1",
                    TenSP="Nhẫn Bạc Nữ Trái Tim",
                    Type="NhanBac",
                    XuatXu="Việt Nam",
                    SoLuong=100,
                    Images = new List<string> { "anh1.jpg", "anh1_2.jpg"},
                    Desc="Nhẫn bạc 925 thiết kế hình trái tim lãng mạn, đính đá CZ tinh xảo.",
                    Gia=450000,
                    DaBan=50
                },
                new SanPham
                {
                    MaSP="NB2",
                    TenSP="Nhẫn Bạc Nam Đính Đá Vuông",
                    Type="NhanBac",
                    XuatXu="Thái Lan",
                    SoLuong=80,
                    Images = new List<string> {"anh2.jpg", "anh2_2.jpg"},
                    Desc="Thiết kế nam tính, mạnh mẽ với viên đá chủ CZ vuông, chất liệu bạc S925.",
                    Gia=550000,
                    DaBan=30
                },
                new SanPham
                {
                    MaSP="NB3",
                    TenSP="Nhẫn Bạc Cặp Tình Yêu",
                    Type="NhanBac",
                    XuatXu="Hàn Quốc",
                    SoLuong=120,
                    Images = new List<string> { "anh3.jpg", "anh3_2.jpg"},
                    Desc="Nhẫn đôi khắc laser biểu tượng vô cực, món quà ý nghĩa cho các cặp đôi.",
                    Gia=790000,
                    DaBan=65
                },
                new SanPham
                {
                    MaSP="NB4",
                    TenSP="Nhẫn Bạc Nữ Basic Trơn",
                    Type="NhanBac",
                    XuatXu="Việt Nam",
                    SoLuong=200,
                    Images = new List<string> {"anh4.jpg", "anh4_2.jpg"},
                    Desc="Thiết kế tối giản, phù hợp đeo hàng ngày hoặc mix-match nhiều lớp.",
                    Gia=250000,
                    DaBan=110
                },

                // ===== 4 SẢN PHẨM BÔNG TAI BẠC (Type="BongTaiBac") =====
                new SanPham
                {
                    MaSP="BTB1",
                    TenSP="Bông Tai Bạc Nụ Đá CZ",
                    Type="BongTaiBac",
                    XuatXu="Việt Nam",
                    SoLuong=150,
                    Images = new List<string> {"images/bongtai/btb1_1.jpg"},
                    Desc="Bông tai nụ cơ bản, chốt cài chắc chắn, đá CZ lấp lánh 6 chấu.",
                    Gia=190000,
                    DaBan=95
                },
                new SanPham
                {
                    MaSP="BTB2",
                    TenSP="Bông Tai Bạc Dáng Dài",
                    Type="BongTaiBac",
                    XuatXu="Hàn Quốc",
                    SoLuong=70,
                    Images = new List<string> {"images/bongtai/btb2_1.jpg", "images/bongtai/btb2_2.jpg"},
                    Desc="Thiết kế dáng dài thanh mảnh, tạo hiệu ứng thon gọn cho khuôn mặt.",
                    Gia=320000,
                    DaBan=40
                },
                new SanPham
                {
                    MaSP="BTB3",
                    TenSP="Bông Tai Bạc Khuyên Tròn",
                    Type="BongTaiBac",
                    XuatXu="Thái Lan",
                    SoLuong=90,
                    Images = new List<string> {"images/bongtai/btb3_1.jpg"},
                    Desc="Bông tai khuyên tròn bản to, phong cách cá tính và hiện đại.",
                    Gia=280000,
                    DaBan=55
                },
                new SanPham
                {
                    MaSP="BTB4",
                    TenSP="Bông Tai Bạc Cỏ 4 Lá",
                    Type="BongTaiBac",
                    XuatXu="Việt Nam",
                    SoLuong=110,
                    Images = new List<string> {"images/bongtai/btb4_1.jpg"},
                    Desc="Bông tai biểu tượng cỏ 4 lá may mắn, chất liệu bạc S925 cao cấp.",
                    Gia=350000,
                    DaBan=70
                },

                // ===== 4 SẢN PHẨM LẮC BẠC (Type="LacBac") =====
                new SanPham
                {
                    MaSP="LB1",
                    TenSP="Lắc Tay Bạc Charm",
                    Type="LacBac",
                    XuatXu="Italia",
                    SoLuong=60,
                    Images = new List<string> {"images/lacbac/lb1_1.jpg", "images/lacbac/lb1_2.jpg"},
                    Desc="Lắc tay bạc đính charm chủ đề tình yêu, thiết kế tinh xảo từ Ý.",
                    Gia=890000,
                    DaBan=25
                },
                new SanPham
                {
                    MaSP="LB2",
                    TenSP="Lắc Chân Bạc Đính Chuông",
                    Type="LacBac",
                    XuatXu="Việt Nam",
                    SoLuong=130,
                    Images = new List<string> {"images/lacbac/lb2_1.jpg"},
                    Desc="Lắc chân bạc thanh mảnh, đính chuông nhỏ kêu leng keng vui tai.",
                    Gia=310000,
                    DaBan=80
                },
                new SanPham
                {
                    MaSP="LB3",
                    TenSP="Lắc Tay Bạc Hạt Bi",
                    Type="LacBac",
                    XuatXu="Thái Lan",
                    SoLuong=85,
                    Images = new List<string> {"images/lacbac/lb3_1.jpg"},
                    Desc="Lắc tay bạc xâu chuỗi hạt bi bạc, phong cách unisex nam nữ đều đeo được.",
                    Gia=480000,
                    DaBan=45
                },
                new SanPham
                {
                    MaSP="LB4",
                    TenSP="Lắc Tay Bạc Cung Hoàng Đạo",
                    Type="LacBac",
                    XuatXu="Việt Nam",
                    SoLuong=95,
                    Images = new List<string> {"images/lacbac/lb4_1.jpg"},
                    Desc="Lắc tay bạc khắc laser biểu tượng cung hoàng đạo theo yêu cầu.",
                    Gia=420000,
                    DaBan=60
                },

                // ===== 4 SẢN PHẨM DÂY CHUYỀN BẠC (Type="DayChuyenBac") =====
                new SanPham
                {
                    MaSP="DCB1",
                    TenSP="Dây Chuyền Bạc Mặt Trăng",
                    Type="DayChuyenBac",
                    XuatXu="Hàn Quốc",
                    SoLuong=75,
                    Images = new List<string> {"images/daychuyen/dcb1_1.jpg", "images/daychuyen/dcb1_2.jpg"},
                    Desc="Dây chuyền bạc mặt trăng khuyết đính đá, phong cách Hàn Quốc nhẹ nhàng.",
                    Gia=520000,
                    DaBan=35
                },
                new SanPham
                {
                    MaSP="DCB2",
                    TenSP="Dây Chuyền Bạc Xương Rồng",
                    Type="DayChuyenBac",
                    XuatXu="Việt Nam",
                    SoLuong=90,
                    Images = new List<string> {"images/daychuyen/dcb2_1.jpg"},
                    Desc="Mặt dây chuyền hình cây xương rồng nhỏ nhắn, biểu tượng cho sức sống mạnh mẽ.",
                    Gia=380000,
                    DaBan=55
                },
                new SanPham
                {
                    MaSP="DCB3",
                    TenSP="Dây Chuyền Bạc Choker",
                    Type="DayChuyenBac",
                    XuatXu="Việt Nam",
                    SoLuong=65,
                    Images = new List<string> {"images/daychuyen/dcb3_1.jpg"},
                    Desc="Dây chuyền choker bạc ôm sát cổ, phong cách cá tính, sành điệu.",
                    Gia=410000,
                    DaBan=30
                },
                new SanPham
                {
                    MaSP="DCB4",
                    TenSP="Dây Chuyền Bạc Nam Chữ Thập",
                    Type="DayChuyenBac",
                    XuatXu="Italia",
                    SoLuong=50,
                    Images = new List<string> {"images/daychuyen/dcb4_1.jpg"},
                    Desc="Dây chuyền bạc Ý S925, mặt thánh giá, thiết kế cho nam.",
                    Gia=650000,
                    DaBan=20
                }
            };
            Application["DS_SanPham"] = dsSP;
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}