<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2020/year.jsp</title>
</head>
<body>
<%
	Calendar year = Calendar.getInstance();
	out.print(year.get(Calendar.YEAR)+"년");
%>


</body>
</html>