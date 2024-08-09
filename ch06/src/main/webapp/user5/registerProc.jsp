<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	// 데이터 수신
	String seq   = request.getParameter("seq");
	String name  = request.getParameter("name");
	String addr = request.getParameter("addr");
	String age   = request.getParameter("age");
	String gender = request.getParameter("gender");
	
	// 데이터베이스 처리
	String host = "jdbc:mysql://127.0.0.1:3306/studydb";
	String user = "root";
	String pass = "1234";
	try{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		// 1 단계 - 데이터베이스 접속
		Connection conn =  DriverManager.getConnection(host, user, pass);
		
		// 2 단계 - SQL실행 객체 생성
		String sql = "insert into `user5` values (?,?,?,?,?)";
		PreparedStatement psmt =  conn.prepareStatement(sql);
		psmt.setString(1, seq);
		psmt.setString(2, name);
		psmt.setString(3, gender);
		psmt.setString(4, age);
		psmt.setString(5, addr);
		
		
		// 3 단계 - sQL실행
		psmt.executeUpdate();
				
		// 4 단계 - 결과처리(SELECT일 경우)
		// 5 단계 - 데이터베이스 종료	
		psmt.close();
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	// 목록 이동
	response.sendRedirect("/ch06/user5/list.jsp");


%>