<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="emp" type="day0115_ex.Employee" scope="request"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름 : <jsp:getProperty property="name" name="emp"/><br>
월급 : <jsp:getProperty property="salary" name="emp"/><br>
고용일 : <jsp:getProperty property="hireDate" name="emp"/>
</body>
</html>