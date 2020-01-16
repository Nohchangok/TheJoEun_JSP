<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view.jsp</title>
</head>
<body>
<c:forEach var="emp" items="${empList }">
	이름 : ${emp.name }<br>
	나이 : ${emp.gender }<br>
	포지션 : ${emp.position }<br>
	월급 : ${emp.salary }<br>
	입사일 : ${emp.hire_date }<br>
	퇴사일 : ${emp.retire_date }<br>
</c:forEach><br>

</body>
</html>