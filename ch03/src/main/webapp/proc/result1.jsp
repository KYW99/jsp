<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//전공 데이터 수신
	//http://localhost:8080(URL 도메인)/ch03/proc/result1.jsp(URI )?uid=abc&name=%ED%99%8D%EA%B8%B8%EB%8F%99&age=21(쿼리 스트링)
	String param = request.getQueryString();
	String uid = request.getParameter("uid");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
%>





<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>result1</title>
</head>
<body>
	<h3>GET 요청 데이터 수신</h3>
	
	<p>
		파라미터 : <%= param %><br>
		아이디 : <%= uid %><br>
		이름 : <%= name %><br>
		나이 : <%= age %><br>
	</p>
	
	<a href="../1.request.jsp">뒤로가기</a>
	
</body>
</html>