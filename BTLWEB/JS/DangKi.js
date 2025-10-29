function validateDangKi() {
    // Lấy giá trị các ô input
    const fullName = document.getElementById('txtFullName').value.trim();
    const phone = document.getElementById('txtPhone').value.trim();
    const address = document.getElementById('txtAddress').value.trim();
    const username = document.getElementById('txtUsername').value.trim();
    const password = document.getElementById('txtPassword').value.trim();
    const confirmPassword = document.getElementById('txtConfirmPassword').value.trim();

    // Lấy các thẻ span để hiển thị lỗi
    const errorFullName = document.getElementById('errorFullName');
    const errorPhone = document.getElementById('errorPhone');
    const errorAddress = document.getElementById('errorAddress');
    const errorUsername = document.getElementById('errorUsername');
    const errorPassword = document.getElementById('errorPassword');
    const errorConfirmPassword = document.getElementById('errorConfirmPassword');

    // Reset thông báo lỗi
    errorFullName.textContent = '';
    errorPhone.textContent = '';
    errorAddress.textContent = '';
    errorUsername.textContent = '';
    errorPassword.textContent = '';
    errorConfirmPassword.textContent = '';

    let isValid = true;

    // Validate họ và tên
    const nameRegex = /^[a-zA-ZÀ-ỹ\s]+$/;
    if (fullName === '') {
        errorFullName.textContent = '*Vui lòng nhập họ và tên.';
        isValid = false;
    } else if (!nameRegex.test(fullName)) {
        errorFullName.textContent = '*Họ và tên chỉ được chứa chữ cái và khoảng trắng.';
        isValid = false;
    }

    // Validate số điện thoại
    const phoneRegex = /^0[0-9]{9}$/;
    if (phone === '') {
        errorPhone.textContent = '*Vui lòng nhập số điện thoại.';
        isValid = false;
    } else if (!phoneRegex.test(phone)) {
        errorPhone.textContent = '*Số điện thoại phải bắt đầu bằng 0 và có đúng 10 số.';
        isValid = false;
    }

    // Validate địa chỉ
    if (address === '') {
        errorAddress.textContent = '*Vui lòng nhập địa chỉ.';
        isValid = false;
    }

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

    // Validate xác nhận mật khẩu
    if (confirmPassword === '') {
        errorConfirmPassword.textContent = '*Vui lòng xác nhận mật khẩu.';
        isValid = false;
    } else if (confirmPassword !== password) {
        errorConfirmPassword.textContent = '*Mật khẩu xác nhận không khớp.';
        isValid = false;
    }

    return isValid; // Trả về true nếu hợp lệ, false nếu có lỗi
}