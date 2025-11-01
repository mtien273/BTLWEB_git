// 1. Hàm thay đổi ảnh chính khi bấm vào ảnh nhỏ
function changeImage(element) {
    document.getElementById('mainImage').src = element.src;
}

// 2. Hàm xử lý khi chọn size
function selectSize(button) {
    // Xóa class 'active' khỏi tất cả các nút size
    const buttons = document.querySelectorAll('.size-btn');
    buttons.forEach(btn => btn.classList.remove('active'));
    // Thêm class 'active' vào nút vừa bấm
    button.classList.add('active');
}

// 3. Hàm tăng/giảm số lượng
function increaseQuantity() {
    const input = document.getElementById("qty");
    let qty = parseInt(input.value);
    input.value = qty + 1;
}
function decreaseQuantity() {
    const input = document.getElementById("qty");
    let qty = parseInt(input.value);
    if (qty > 1) {
        input.value = qty - 1;
    }
}

// 4. Hàm kiểm tra và gửi dữ liệu đến giỏ hàng
function prepareAddToCart() {
    // Lấy size đang được chọn
    const selectedSize = document.querySelector(".size-btn.active");

    if (!selectedSize) {
        alert("Vui lòng chọn kích cỡ (size)!");
        return false; // Ngăn không cho form submit
    }


    // Lấy số lượng
    const quantity = document.getElementById("qty").value;

    // Gán size và số lượng vào các trường ẩn
    document.getElementById("inputSize").value = selectedSize.innerText;
    document.getElementById("inputQty").value = quantity;

    return true; // Cho phép form submit
}

