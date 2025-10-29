function validateDangNhap() {
    // Lấy giá trị các ô input
    const username = document.getElementById('txtUsername').value.trim();
    const password = document.getElementById('txtPassword').value.trim();

    // Lấy các thẻ span để hiển thị lỗi
    const errorUsername = document.getElementById('errorUsername');
    const errorPassword = document.getElementById('errorPassword');

    // Reset thông báo lỗi
    errorUsername.textContent = '';
    errorPassword.textContent = '';

    let isValid = true;

    // Validate tên đăng nhập
    if (username === '') {
        errorUsername.textContent = '*Vui lòng nhập tên đăng nhập.';
        isValid = false;
    }

    // Validate mật khẩu
    if (password === '') {
        errorPassword.textContent = '*Vui lòng nhập mật khẩu.';
        isValid = false;
    } else if (password.length < 6) {
        errorPassword.textContent = '*Mật khẩu phải có ít nhất 6 ký tự.';
        isValid = false;
    }

    return isValid; // Trả về true nếu hợp lệ, false nếu có lỗi
}