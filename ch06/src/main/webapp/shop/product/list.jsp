<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="shop.ProductVO"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
		List<ProductVO> products = new ArrayList<>();
		try{
		Context initCtx = new InitialContext();
		Context ctx = (Context) initCtx.lookup("java:comp/env");

		//2단계 - 커넥션 풀에서 커넥션 객체 가져오기
		DataSource ds =(DataSource) ctx.lookup("jdbc/shop");
		Connection conn= ds.getConnection();

		//3단계 - SQL 실행 객체 생성
		Statement stmt = conn.createStatement();

		//4단계 - SQL 실행
		ResultSet rs = stmt.executeQuery("select * from product");

		//5단계 - 결과 처리 변경
		while(rs.next()){
		ProductVO vo = new ProductVO();
		vo.setProdNo(rs.getInt(1));
		vo.setProdName(rs.getString(2));
		vo.setStock(rs.getInt(3));
		vo.setPrice(rs.getInt(4));
		vo.setCompany(rs.getString(5));
	
		products.add(vo);
}

	//6단계 - 커넥션 반납
	rs.close();
	stmt.close();
	conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product::list</title>
</head>
<body>
	<h3>상품목록</h3>
	
	<a href="/ch06/2.DBCPTest.jsp">처음으로</a>
	<a href="/ch06/shop/product/register.jsp">등록</a>
	
	<table border="1">
		<tr>
			<th>상품번호</th>
			<th>상품명</th>
			<th>재고</th>
			<th>가격</th>
			<th>회사</th>
			<th>관리</th>
		</tr>
		<% for(ProductVO vo : products){ %>
		<tr>
			<th><%= vo.getProdNo() %></th>
			<th><%= vo.getProdName() %></th>
			<th><%= vo.getStock() %></th>
			<th><%= vo.getPrice() %></th>
			<th><%= vo.getCompany() %></th>
			<th>
				<a href="#">수정</a>
				<a href="#">삭제</a>
			</th>
		</tr>
		<% } %>
	</table>
</body>
</html>