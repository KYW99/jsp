<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4.application</title>
<!--
		날짜 : 2024-08-06
		이름 : 원기연
		내용 : Application 내장객체 실습하기 
 	-->

</head>
<body>
	<h3>4.application 내장객체</h3>
	
	<h4>서버 정보</h4>
	<%= application.getServerInfo()
	//getRealPath() 기억
	
	%>
	<h4>파라미터 정보</h4>
	<%
	 String param1 = application.getInitParameter("param1");
	 String param2 = application.getInitParameter("param2");
	%>
	<p>
		param1 = <%= param1 %>
		param2 = <%= param2 %>
	</p>
	<h4>자원 경로</h4>
	<%= application.getRealPath("./4.application.jsp") %>
	
</body>
</html>