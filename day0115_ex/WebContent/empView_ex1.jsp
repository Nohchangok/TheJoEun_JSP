<%@page import="day0115_ex.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% Employee emp = (Employee)request.getAttribute("emp"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출력</title>
</head>
<body>
이름 : <%=emp.getName()%>
급여 : <%=emp.getSalary() %>
고용일 : <%=emp.getHireDate().toLocalDate()%>
</body>
</html>