using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace BTLWEB
{
    // Thêm lớp CartItem ở đây (chỉ dùng trong file này)
    [Serializable]
    public class CartItem
    {
        public string MaSP { get; set; }
        public string TenSP { get; set; }
        public string HinhAnh { get; set; }
        public string Size { get; set; }
        public int Gia { get; set; }
        public int SoLuong { get; set; }

        public int ThanhTien
        {
            get { return Gia * SoLuong; }
        }
    }

    //  Class chính của trang giỏ hàng
    public partial class GioHang : System.Web.UI.Page
    {
        public string CartHtml { get; set; } = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            string ma = Request.QueryString["ma"];
            string size = Request.QueryString["size"];
            string qtyStr = Request.QueryString["qty"];

            // Khi thêm sản phẩm mới từ trang chi tiết
            if (!string.IsNullOrEmpty(ma) && !string.IsNullOrEmpty(size) && !string.IsNullOrEmpty(qtyStr))
            {
                int quantity = int.TryParse(qtyStr, out int q) ? q : 1;
                var dsSP = (List<SanPham>)Application["DS_SanPham"];
                var sp = dsSP.FirstOrDefault(p => p.MaSP == ma);

                if (sp != null)
                {
                    // Lấy giỏ hàng hiện tại từ Session (nếu có)
                    List<CartItem> cart = Session["GioHang"] as List<CartItem> ?? new List<CartItem>();

                    // Kiểm tra nếu đã có sản phẩm cùng mã + size
                    var existing = cart.FirstOrDefault(i => i.MaSP == ma && i.Size == size);
                    if (existing != null)
                        existing.SoLuong += quantity;
                    else
                        cart.Add(new CartItem
                        {
                            MaSP = sp.MaSP,
                            TenSP = sp.TenSP,
                            Gia = sp.Gia,
                            Size = size,
                            SoLuong = quantity,
                            HinhAnh = sp.Images.Count > 0 ? sp.Images[0] : "default.jpg"
                        });

                    Session["GioHang"] = cart;

                    Response.Redirect("GioHang.aspx");
                    return;
                }
            }

            // Xóa sản phẩm
            if (!string.IsNullOrEmpty(Request.QueryString["deleteMa"]))
            {
                DeleteItem();
                return;
            }

            // Hiển thị giỏ hàng
            RenderCartHtml();
        }

        private void DeleteItem()
        {
            string ma = Request.QueryString["deleteMa"];
            string size = Request.QueryString["deleteSize"];

            List<CartItem> cart = Session["GioHang"] as List<CartItem>;
            if (cart != null)
            {
                cart.RemoveAll(i => i.MaSP == ma && i.Size == size);
                Session["GioHang"] = cart;
            }

            Response.Redirect("GioHang.aspx");
        }

        protected void RenderCartHtml()
        {
            List<CartItem> cart = Session["GioHang"] as List<CartItem> ?? new List<CartItem>();

            if (cart.Count == 0)
            {
                CartHtml = "<p style='text-align:center; padding:20px;'>Giỏ hàng trống!</p>";
                return;
            }

            string html = "";
            int total = 0;

            foreach (var item in cart)
            {
                int itemTotal = item.Gia * item.SoLuong;
                total += itemTotal;

                html += $@"
                    <tr>
                        <td>
                            <img src='img/nhanbac/{item.HinhAnh}' alt='{item.TenSP}' class='product-img'/>
                            <div>{item.TenSP}</div>
                        </td>
                        <td>{item.MaSP}</td>
                        <td>
                            <div class='quantity-selector'>
                                <input type='text' value='{item.SoLuong}' readonly class='qty-input'/>
                            </div>
                        </td>
                        <td class='price'>{item.Gia:N0} ₫</td>
                        <td>
                            <a href='GioHang.aspx?deleteMa={item.MaSP}&deleteSize={item.Size}' class='delete-btn'>🗑️</a>
                        </td>
                    </tr>";
            }

            html += $@"
                <tfoot>
                    <tr>
                        <td colspan='3' class='total-label'>Tổng tiền:</td>
                        <td class='total-price'>{total:N0} ₫</td>
                        <td></td>
                    </tr>
                </tfoot>";

            CartHtml = html;
        }
    }
}
