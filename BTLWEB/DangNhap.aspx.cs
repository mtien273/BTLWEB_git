using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;

namespace BTLWEB
{
    public partial class DangNhap : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Kiểm tra cookie để điền sẵn username
                if (Request.Cookies["Username"] != null)
                {
                    txtUsername.Text = Request.Cookies["Username"].Value;
                    chkRemember.Checked = true;
                }
            }
        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            // Server-side validation
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            bool isValid = true;
            string errorMessage = "";

            if (string.IsNullOrEmpty(username))
            {
                errorMessage += "*Vui lòng nhập tên đăng nhập.<br />";
                isValid = false;
            }

            if (string.IsNullOrEmpty(password))
            {
                errorMessage += "*Vui lòng nhập mật khẩu.<br />";
                isValid = false;
            }
            else if (password.Length < 6)
            {
                errorMessage += "*Mật khẩu phải có ít nhất 6 ký tự.<br />";
                isValid = false;
            }

            if (!isValid)
            {
                lblError.Text = errorMessage;
                return;
            }

            // Kiểm tra admin đặc biệt
            if (username.Equals("admin", StringComparison.OrdinalIgnoreCase) && password == "123456")
            {
                Session["Username"] = username;
                Response.Redirect("Quantri.aspx");
                return;
            }

            // Kiểm tra danh sách người dùng trong Application
            List<User> users = (List<User>)Application["Users"];
            User user = users?.Find(u => u.Username.Equals(username, StringComparison.OrdinalIgnoreCase) && u.Password == password);

            if (user != null)
            {
                // Lưu thông tin vào Session
                Session["Username"] = user.Username;
                Session["FullName"] = user.FullName;

                // Lưu username vào cookie nếu chọn "Nhớ mật khẩu"
                if (chkRemember.Checked)
                {
                    HttpCookie cookie = new HttpCookie("Username", username)
                    {
                        Expires = DateTime.Now.AddDays(30) // Cookie hết hạn sau 30 ngày
                    };
                    Response.Cookies.Add(cookie);
                }
                else
                {
                    // Xóa cookie nếu không chọn "Nhớ mật khẩu"
                    if (Request.Cookies["Username"] != null)
                    {
                        HttpCookie cookie = new HttpCookie("Username")
                        {
                            Expires = DateTime.Now.AddDays(-1) // Xóa cookie
                        };
                        Response.Cookies.Add(cookie);
                    }
                }

                Response.Redirect("Account.aspx");
            }
            else
            {
                lblError.Text = "Tên đăng nhập hoặc mật khẩu không đúng.";
            }
        }
    }
}