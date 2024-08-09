<%@page import="java.util.ArrayList"%>
<%@page import="bank.CustomerVO"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

		List<CustomerVO> customers = new ArrayList<>();
		try{
		Context initCtx = new InitialContext();
		Context ctx = (Context) initCtx.lookup("java:comp/env");
		
		DataSource ds =(DataSource) ctx.lookup("jdbc/bank");
		Connection conn= ds.getConnection();
		
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery("select * from bank_customer");

		
		while(rs.next()){
			CustomerVO vo = new CustomerVO();
			vo.setC_no(rs.getString(1));
			vo.setC_name(rs.getString(2));
			vo.setC_dist(rs.getInt(3));
			vo.setC_phone(rs.getString(4));
			vo.setC_addr(rs.getString(5));
			
			customers.add(vo);
		}
		
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
<title>customer::list</title>

</head>
<body>
	<h3>고객목록</h3>
	
	<a href="/ch06/2.DBCPTest.jsp">처음으로</a>
	<a href="/ch06/bank/customer/register.jsp">등록</a>
	
	<table border="1">
		<tr>
			<th>상품번호</th>
			<th>상품명</th>
			<th>재고</th>
			<th>가격</th>
			<th>회사</th>
			<th>관리</th>
		</tr>
		<% for(CustomerVO vo : customers){ %>
		<tr>
			<th><%= vo.getC_no() %></th>
			<th><%= vo.getC_name() %></th>
			<th><%= vo.getC_dist() %></th>
			<th><%= vo.getC_phone() %></th>
			<th><%= vo.getC_addr() %></th>
			<th>
				<a href="#">수정</a>
				<a href="#">삭제</a>
			</th>
		</tr>
		<% } %>
	</table>
</body>
</html>