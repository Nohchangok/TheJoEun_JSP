<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2020/month.jsp</title>
</head>
<body>
<%
	Date month = new Date();
	out.print(month.getMonth()+1+"월");
%>

</body>
</html>