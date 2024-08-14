<%@page import="com.google.gson.JsonObject"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="user2.user2VO"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.io.BufferedReader"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
	BufferedReader reader = request.getReader();
	StringBuilder requestBody = new StringBuilder();
	
	String line;
	while((line = reader.readLine()) != null){
		requestBody.append(line);
	}
	reader.close();
	
	Gson gson = new Gson();
	user2VO user2 = gson.fromJson(requestBody.toString(), user2VO.class);
	System.out.println(user2);
	
	int rowCount = 0;
	
	try{
		
		Context ctx = (Context) new InitialContext().lookup("java:comp/env");
		
		DataSource ds = (DataSource) ctx.lookup("jdbc/studydb");
		Connection conn = ds.getConnection();
		
		String sql = "insert into `user2` values (?,?,?,?)";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, user2.getUid());
		psmt.setString(2, user2.getName());
		psmt.setString(3, user2.getBirth());
		psmt.setString(4, user2.getAddr());
		
		rowCount = psmt.executeUpdate();
		
		psmt.close();
		conn.close();
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	JsonObject json = new JsonObject();
	json.addProperty("result", rowCount);
	
	out.print(json.toString());
%>