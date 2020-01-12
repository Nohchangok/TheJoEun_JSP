<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dayTime2.jsp</title>
</head>
<body>
<%-- 
	localdatetime 객체로
	연 : 2020
	월 : 01
	일 : 09
	시분초: 00:00:00
	으로 나오게 해보세요. 	
--%>

<%
LocalDateTime date = LocalDateTime.now();
%>

<%=date.getYear()%>
<br>
<%=date.getMonthValue()%>
<br>
<%=date.format(DateTimeFormatter.ofPattern("dd")) %>
<br>
<%=date.format(DateTimeFormatter.ofPattern("dd")) %>
<br>
<%=date.toLocalTime().format(DateTimeFormatter.ofPattern("hh:mm:ss")) %>

</body>
</html>