<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>customer::list</title>
</head>
<body>
	<h3>고객목록</h3>
	
	<a href="/ch11/">처음으로</a>
	<a href="/ch11/product/register.do">등록</a>
	
	<table border="1">
		<tr>
			<th>제품번호</th>
			<th>제품이름</th>
			<th>재고</th>
			<th>가격</th>
			<th>회사</th>
			<th>관리</th>
		</tr>
		<c:forEach var="customer" items = "${customers}">
		<tr>
			<td>${customer.prodNo}</td>
			<td>${customer.prodName}</td>
			<td>${customer.stock}</td>
			<td>${customer.price}</td>
			<td>${customer.company}</td>
			<td>
				<a href="/ch11/product/modify.do?prodNo=${product.prodNo}">수정</a>
				<a href="/ch11/product/delete.do?prodNo=${product.prodNo}">삭제</a>
			</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>