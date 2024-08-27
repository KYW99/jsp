// 유효성 검사 정규 표현식
const reProductName = /^[가-힣]{2,10}$/; // 상품명 검증 (한글 2~10자)
const rePrice = /^[0-9]+$/; // 가격 검증 (숫자만)
const reStock = /^[0-9]+$/; // 재고 검증 (숫자만)

// 가격에 따른 포인트 계산
function updatePoints() {
    const priceInput = document.getElementById('price');
    const price = parseFloat(priceInput.value) || 0;
    const points = price * 0.01;
    const pointsInput = document.getElementById('points');
    pointsInput.value = points.toFixed(0); // 소수점 없이 반올림
}

// 폼 유효성 검사
function validateForm() {
    const proname = document.getElementById('proname').value.trim();
    const category = document.getElementById('category').value;
    const price = document.getElementById('price').value.trim();
    const stock = document.getElementById('stock').value.trim();
    const productImageList = document.getElementById('product_image_list').files.length;
    const productImageInfo = document.getElementById('product_image_info').files.length;
    const productImageDesc = document.getElementById('product_image_desc').files.length;

    if (proname === "") {
        alert("상품명을 입력하세요.");
        return false;
    }

    if (!reProductName.test(proname)) {
        alert("상품명을 입력해주세요");
        return false;
    }

    if (category === "") {
        alert("종류를 선택해 주세요.");
        return false;
    }

    if (price === "" || !rePrice.test(price)) {
        alert("가격을 입력해 주세요.");
        return false;
    }

    if (stock === "" || !reStock.test(stock)) {
        alert("재고를 입력해 주세요.");
        return false;
    }

    if (productImageList === 0) {
        alert("상품목록 이미지를 업로드해 주세요.");
        return false;
    }
    if (productImageInfo === 0) {
        alert("기본정보 이미지를 업로드해 주세요.");
        return false;
    }
    if (productImageDesc === 0) {
        alert("상품설명 이미지를 업로드해 주세요.");
        return false;
    }

    return true; // 폼 제출 허용
}

// 페이지 로드 시 이벤트 핸들러 추가
window.addEventListener('load', () => {
    document.getElementById('price').addEventListener('input', updatePoints);
});
