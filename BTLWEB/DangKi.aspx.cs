
using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using System.Web.UI;

namespace BTLWEB
{
    public partial class DangKi : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Không cần xử lý ở Page_Load
        }

        protected void btnDangKi_Click(object sender, EventArgs e)
        {
            // Server-side validation
            bool isValid = true;
            string errorMessage = "";

            string fullName = txtFullName.Text.Trim();
            string phone = txtPhone.Text.Trim();
            string address = txtAddress.Text.Trim();
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string confirmPassword = txtConfirmPassword.Text.Trim();

            // Regex cho validation
            Regex nameRegex = new Regex(@"^[a-zA-ZÀ-ỹ\s]+$");
            Regex phoneRegex = new Regex(@"^0[0-9]{9}$");

            // Validate họ và tên
            if (string.IsNullOrEmpty(fullName))
            {
                errorMessage += "Vui lòng nhập họ và tên.<br />";
                isValid = false;
            }
            else if (!nameRegex.IsMatch(fullName))
            {
                errorMessage += "Họ và tên chỉ được chứa chữ cái và khoảng trắng.<br />";
                isValid = false;
            }

            // Validate số điện thoại
            if (string.IsNullOrEmpty(phone))
            {
                errorMessage += "Vui lòng nhập số điện thoại.<br />";
                isValid = false;
            }
            else if (!phoneRegex.IsMatch(phone))
            {
                errorMessage += "Số điện thoại phải bắt đầu bằng 0 và có đúng 10 số.<br />";
                isValid = false;
            }

            // Validate địa chỉ
            if (string.IsNullOrEmpty(address))
            {
                errorMessage += "Vui lòng nhập địa chỉ.<br />";
                isValid = false;
            }

            // Validate tên đăng nhập
            if (string.IsNullOrEmpty(username))
            {
                errorMessage += "Vui lòng nhập tên đăng nhập.<br />";
                isValid = false;
            }

            // Validate mật khẩu
            if (string.IsNullOrEmpty(password))
            {
                errorMessage += "Vui lòng nhập mật khẩu.<br />";
                isValid = false;
            }
            else if (password.Length < 6)
            {
                errorMessage += "Mật khẩu phải có ít nhất 6 ký tự.<br />";
                isValid = false;
            }

            // Validate xác nhận mật khẩu
            if (string.IsNullOrEmpty(confirmPassword))
            {
                errorMessage += "Vui lòng xác nhận mật khẩu.<br />";
                isValid = false;
            }
            else if (confirmPassword != password)
            {
                errorMessage += "Mật khẩu xác nhận không khớp.<br />";
                isValid = false;
            }

            if (!isValid)
            {
                lblError.Text = errorMessage;
                return;
            }

            // Kiểm tra username đã tồn tại
            List<User> users = (List<User>)Application["Users"];
            if (users.Exists(u => u.Username.Equals(username, StringComparison.OrdinalIgnoreCase)))
            {
                lblError.Text = "Tên đăng nhập đã tồn tại. Vui lòng chọn tên khác.";
                return;
            }

            // Tạo user mới và thêm vào danh sách
            User newUser = new User
            {
                FullName = fullName,
                Phone = phone,
                Address = address,
                Username = username,
                Password = password // Lưu ý: Nên hash mật khẩu trong thực tế
            };

            users.Add(newUser);
            Application["Users"] = users;

            lblError.Text = "Đăng ký thành công! Bạn có thể đăng nhập ngay.";
            Response.Redirect("DangNhap.aspx");
        }
    }
}