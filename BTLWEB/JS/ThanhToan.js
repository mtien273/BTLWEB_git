function validateForm() {
    let valid = true;

    const name = document.getElementById("hoTen").value.trim();
    const phone = document.getElementById("phone").value.trim();
    const address = document.getElementById("diaChi").value.trim();

    // Xóa lỗi cũ
    document.getElementById("error-name").innerHTML = "";
    document.getElementById("error-phone").innerHTML = "";
    document.getElementById("error-address").innerHTML = "";

    // --- Kiểm tra họ tên ---
    const nameRegex = /^[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠƯàáâãèéêìíòóôõùúăđĩũơưẠ-ỹ\s]+$/;
    if (name === "" || name.replace(/\s/g, "") === "") {
        document.getElementById("error-name").innerHTML = "⚠️ Vui lòng nhập họ tên.";
        valid = false;
    } else if (!nameRegex.test(name)) {
        document.getElementById("error-name").innerHTML = "⚠️ Họ tên chỉ được chứa chữ cái và khoảng trắng.";
        valid = false;
    }

    // --- Kiểm tra số điện thoại ---
    const phoneRegex = /^(0[0-9]{9}|(\+84)[0-9]{9})$/;
    if (phone === "") {
        document.getElementById("error-phone").innerHTML = "⚠️ Vui lòng nhập số điện thoại.";
        valid = false;
    } else if (!phoneRegex.test(phone)) {
        document.getElementById("error-phone").innerHTML = "⚠️ Số điện thoại không hợp lệ (bắt đầu bằng 0 hoặc +84, gồm 10 số).";
        valid = false;
    }

    // --- Kiểm tra địa chỉ ---
    if (address === "" || address.replace(/\s/g, "") === "") {
        document.getElementById("error-address").innerHTML = "⚠️ Vui lòng nhập địa chỉ giao hàng.";
        valid = false;
    }

    // --- Kiểm tra phương thức thanh toán ---
    const payment = document.querySelector('input[name="phuongThuc"]:checked');
    if (!payment) {
        alert("⚠️ Vui lòng chọn phương thức thanh toán.");
        valid = false;
    }

    return valid;
}

// Tự động gắn validate vào form
document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("formThanhToan");
    if (form) {
        form.addEventListener("submit", function (event) {
            if (!validateForm()) {
                event.preventDefault(); // Ngăn form gửi nếu có lỗi
            }
        });
    }
});
