<%@page import="com.farm.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<% 
    UserDto sessUser = (UserDto) session.getAttribute("sessUser"); 
    if (sessUser == null) {
        response.sendRedirect("/farm/user/login.do");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>index.html</title>
    <link rel="stylesheet" href="/farm/css/market/view.css">
<script>



	function calculateTotal() {
	    const price = ${product.price}; // 서버에서 렌더링된 상품 가격
	    const quantity = document.getElementById('quantity').value;
	    const total = price * quantity;
	    document.getElementById('total').innerText = total + ' 원';
	}
	
	window.onload = function() {
	    calculateTotal();  
	    
		const cart = document.getElementsByClassName('cart')[0];
	
		cart.onclick = function(e){
	    	
	    	
	    	const prodId = ${product.prodid};
	    	const uid = "${sessionScope.sessUser.uid}"; 
	    	const quantity = document.getElementById('quantity').value;
	    	const price = ${product.price};
	    	
	    	console.log("uid "+uid);
	    	
	    	
	    	const formData = new FormData();
	        formData.append("prodId", prodId); 
	        formData.append("uid", uid);
	        formData.append("quantity", quantity);
	        formData.append("price", price);
	      
	
	        fetch('/farm/market/cart.do', {
	            method: 'post',
	            body: formData
	        })
	        .then(resp => resp.json())
	        .then(data => {
	            console.log(data);
	            
	        })
	        .catch(err => {
	            console.log(err);
	        });
		}
	   
	}//onload

</script>
</head>
<body>
    <div id = "wrapper">
       	<%@ include file="/WEB-INF/_header.jsp" %>
        <main>
            <section class="banner">
                <img src="/farm/img/sub_top_tit4.png" alt="">
            </section>
            <section class="content">
                <aside>
                    <img src="/farm/img/sub_aside_cate2_tit.png" alt="">
                    <div>
                        <img src="/farm/img/sub_aside_bg_lnb.png" alt="">
                        <img src="/farm/img/sub_cate2_lnb1_ov.png" alt="">
                    </div>
                </aside>
                <article class="veiw">
                    <nav>
                        <div>
                            <img src="/farm/img/sub_nav_tit_cate2_tit1.png" alt="">
                            <div class="home_box">
                                <p>
                                    <img src="/farm/img/sub_page_nav_ico.gif" alt="">
                                    HOME > 장보기 >
                                    <strong>장보기</strong>
                                </p>
                            </div>
                        </div>
                    </nav>
                    <div>
                        <h3>기본정보</h3>
                        <div class="table default">
                           <td><data value="">
            							<img src="/farm/upload/${product.pro_img_inf}" alt="${product.proname}">
       								 </data>
                                </td>
                            <form class="prod_box" name="prod">
                                <table class="prod_info_box">
                                    <tbody></tbody>
                                        <tr>
                                            <th>상품명</th>
                                            <td>${product.proname}</td>
                                        </tr>
                                        <tr>
                                            <th>상품코드</th>
                                            <td class="prodId">${product.prodid}</td>
                                        </tr>
                                        <tr>
                                            <th>배송비</th>
                                            <td>${product.delivery_cost} 원
                                                <span>3만원 이상 무료배송</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>판매가격</th>
                                            <td class="price">${product.price} 원</td>
                                        </tr>
                                        <tr>
                                            <th>구매수량</th>
                                            <td>
                                                <input type="number" value="1" min="1" id="quantity" oninput="calculateTotal()">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>합계</th>
                                            <td class="sum_color" id="total">${product.price} 원</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="prod_btn_box">
                                    <a href="/farm/market/cart.do?uid=${sessUser.uid}" class="prod_btn cart"><p>장바구니</p></a>
                                    <a href="#" class="prod_btn buy"><p>바로 구매</p></a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <h3>상품설명</h3>
                    <img src="/farm/img/market_detail_sample.jpg" alt="" class="detail">
                    <div>
                        <h3>배송정보</h3>
                        <p>입금하신 이후 택배송장번호는 SMS(문자서비스)를 통해 고객님께 안내해드립니다.</p>
                    </div>
                    <div>
                        <h3>교환/반품</h3>
                        <table class="exchange_table" >
                            <tr>
                                <th>교환 반품이 가능한 경우</th>
                                <td>
                                    <p>팜스토리 상품에 하자가 있거나 불량인 경우</p>
                                    <p>채소, 과일, 양곡등의 식품은 만1일 이내</p>
                                    <p>기타 상품은 수령일로부터 영업일 기준 일주일 이내</p>
                                    <p>받으신 상품이 표시사항과 다른 경우에는 받으신 날로부터 일주일 이내</p>
                                </td>
                            </tr>
                            <tr>
                                <th>교환 반품이 불가능한 경우</th>
                                <td>
                                    <p>신선 식품의 경우 단순히 마음에 들지 않는 경우</p>
                                    <p>단순 변심으로 상품이 가치가 훼손돼서 판매가 어려운 경우</p>
                                </td>
                            </tr>
                        </table>
                    </div>
                </article>
           </section>
        </main>
   <%@ include file="/WEB-INF/_footer.jsp" %>
    </div>
</body>
</html>