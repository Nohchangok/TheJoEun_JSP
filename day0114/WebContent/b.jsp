<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	//전달받은 파라미터를 사용하기 편하게 변수에 담기.
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>b.jsp</title>
</head>
<body>
<%@ include file="c.jsp"%>

</body>
</html>