<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문목록</title>
    <link rel="stylesheet" href="/farm/css/admin/order/order.css">
</head>
<body>
    <div id = "wrapper">
       	<%@ include file="/WEB-INF/admin/_header.jsp" %>
        <main>
            <aside>
                <h3 class="main_function"><p>주요기능</p></h3>
                <ul class="aside-list">
                    <li>
                        <p class="tit">상품관리</p>
                        <a href="/farm/admin/product/list.do" class="contents1">┗ 상품목록</a><br>
                        <a href="/farm/admin/product/register.do" class="contents2">┗ 상품등록</a>
                    </li>
                    <li>
                        <p class="tit">주문관리</p>
                        <a href="/farm/admin/order/order.do" class="contents">┗ 주문목록</a>
                    </li>
                    <li>
                        <p class="tit">회원관리</p>
                        <a href="/farm/admin/user/user.do" class="contents">┗ 회원목록</a>
                    </li>
                </ul>
            </aside>
            <section>
                <nav>
                    <h3 class="order_list">주문목록</h3>
                </nav>
                <article>
                    <form action="#">
                        <table border = "0">
                            <tbody>
                                <tr id ="thead">
                                    <th id ="target"></th>
                                    <th>주문번호</th>
                                    <th>상품명</th>
                                    <th>판매가격</th>
                                    <th>수량</th>
                                    <th>배송비</th>
                                    <th>합계</th>
                                    <th>주문자</th>
                                    <th>주문일</th>
                                    <th>확인</th>
                                </tr>

								<c:forEach var="order" items="${orders}">
	                                <tr id ="tbody">
	                                    <td><input type="checkbox"></td>
	                                    <td>${order.orderNo}</td>
	                                    <td>${order.prodId}</td>
	                                    <td>${order.prodPrice}</td>
	                                    <td>${order.quantity}</td>
	                                    <td>${order.deliveryCost}</td>
	                                    <td>${order.totalAmount}</td>
	                                    <td>${order.uid}</td>
	                                    <td>${order.orderDate}</td>
	                                    <td><a href="#">[상세확인]</a></td>
	                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    <container id ="seldel">
                        <a href =#>선택삭제</a>
                    </container>

                    <div class="page_box">
                        <a href="#">
                            <span class="underline">[1]</span>
                            <span>[2]</span>
                            <span>[3]</span>
                            <span>[4]</span>
                            <span>[5]</span>
                        </a>
                    </div>
                    </form>
                </article>
            </section>
        </main>
  		<%@ include file="/WEB-INF/admin/_footer.jsp" %>
    </div>
</body>
</html>
