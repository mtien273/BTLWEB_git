using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTLWEB
{
    public class SanPham
    {
        public string MaSP { get; set; }

        public string TenSP { get; set; }

        public string Type { get; set; }

        public string XuatXu { get; set; }

        public int SoLuong { get; set; }

        public List<string> Images { get; set; }

        public string Desc { get; set; }

        public int Gia { get; set; }

        public int DaBan { get; set; }


        public SanPham()
        {

            Images = new List<string>();
        }
    }
}