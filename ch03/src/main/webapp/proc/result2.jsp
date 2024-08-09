<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//전공 데이터 수신
	//파라미터는 쿼리스트링을 가져오기 떄문에 POST는 NULL값 
	String param = request.getQueryString();
	String uid = request.getParameter("uid");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	
%>





<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>result2</title>
</head>
<body>
	<h3>POST 요청 데이터 수신</h3>
		<p>
		파라미터 : <%= param %><br>
		아이디 : <%= uid %><br>
		이름 : <%= name %><br>
		나이 : <%= age %><br>
		</p>
	<a href="../1.request.jsp">뒤로가기</a>
	
</body>
</html>