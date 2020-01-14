<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2020/01/14/date.jsp</title>
</head>
<body>
<%
	Date date = new Date();
	out.print(date.getDate()+"일");
%>

</body>
</html>