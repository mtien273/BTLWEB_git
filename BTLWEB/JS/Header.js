// 1. Tìm nút bấm và menu
var menuButton = document.getElementById('menu-toggle-btn');
var mainMenu = document.querySelector(`.inner-menu`);

// 2. Thêm sự kiện "click" cho nút bấm
if (menuButton && mainMenu) {
    menuButton.addEventListener('click', function () {
        // 3. Khi click, thêm/xóa class 'is-active' trên menu
        mainMenu.classList.toggle('is-active');
    });
}