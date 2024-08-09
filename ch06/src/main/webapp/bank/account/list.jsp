<%@page import="java.util.ArrayList"%>
<%@page import="bank.AccountVO"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	List<AccountVO> Accounts = new ArrayList<>();
	try{
		
		Context initCtx = new InitialContext();
		Context ctx = (Context) initCtx.lookup("java:comp/env");
		
		DataSource ds =(DataSource) ctx.lookup("jdbc/bank");
		Connection conn = ds.getConnection();
		
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery("select * from bank_account");
		
		while(rs.next()){
			AccountVO vo = new AccountVO();
			vo.setA_no(rs.getString(1));
			vo.setA_item_dist(rs.getString(2));
			vo.setA_item_name(rs.getString(3));
			vo.setA_c_no(rs.getString(4));
			vo.setA_balance(rs.getInt(5));
			vo.setA_open_date(rs.getString(6));
			
			Accounts.add(vo);
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
<title>account::list</title>
</head>
<body>
<h3>고객목록</h3>
	
	<a href="/ch06/2.DBCPTest.jsp">처음으로</a>
	<a href="/ch06/bank/account/register.jsp">등록</a>
	
	<table border="1">
		<tr>
			<th>상품번호</th>
			<th>상품명</th>
			<th>재고</th>
			<th>가격</th>
			<th>회사</th>
			<th>관리</th>
		</tr>
		<% for(AccountVO vo : Accounts){ %>
		<tr>
			<th><%= vo.getA_no()%></th>
			<th><%= vo.getA_item_dist() %></th>
			<th><%= vo.getA_item_name() %></th>
			<th><%= vo.getA_c_no() %></th>
			<th><%= vo.getA_balance() %></th>
			<th><%= vo.getA_open_date() %></th>
			<th>
				<a href="#">수정</a>
				<a href="#">삭제</a>
			</th>
		</tr>
		<% } %>
	</table>
</body>
</html>