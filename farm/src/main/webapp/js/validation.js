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
    // 상품명 유효성 검사
    var proname = document.getElementById("proname").value;
    if (proname.trim() === "") {
        alert("상품명을 입력해주세요.");
        document.getElementById("proname").focus();
        return false;
    }

    // 종류 유효성 검사
    var category = document.getElementById("category").value;
    if (category === "") {
        alert("상품 종류를 선택해주세요.");
        document.getElementById("category").focus();
        return false;
    }

    // 가격 유효성 검사
    var price = document.getElementById("price").value;
    if (price.trim() === "" || isNaN(price) || Number(price) <= 0) {
        alert("유효한 가격을 입력해주세요.");
        document.getElementById("price").focus();
        return false;
    }

    // 재고 유효성 검사
    var stock = document.getElementById("stock").value;
    if (stock.trim() === "" || isNaN(stock) || Number(stock) < 0) {
        alert("유효한 재고 수량을 입력해주세요.");
        document.getElementById("stock").focus();
        return false;
    }

    // 배송비 유효성 검사
    var deliveryCostChecked = document.querySelector('input[name="delivery_cost"]:checked');
    if (!deliveryCostChecked) {
        alert("배송비를 선택해주세요.");
        return false;
    }

    // 상품 이미지 유효성 검사
    var productImageList = document.querySelector('input[name="product_image_list"]').value;
    if (productImageList === "") {
        alert("상품 목록 이미지를 선택해주세요.");
        return false;
    }

    var productImageInfo = document.querySelector('input[name="product_image_info"]').value;
    if (productImageInfo === "") {
        alert("기본 정보 이미지를 선택해주세요.");
        return false;
    }

    var productImageDesc = document.querySelector('input[name="product_image_desc"]').value;
    if (productImageDesc === "") {
        alert("상품 설명 이미지를 선택해주세요.");
        return false;
    }

    // 기타 유효성 검사 추가 가능

    // 모든 검사를 통과한 경우 폼 제출
    return true;
}

// 페이지 로드 시 이벤트 핸들러 추가
window.addEventListener('load', () => {
    document.getElementById('price').addEventListener('input', updatePoints);
});
