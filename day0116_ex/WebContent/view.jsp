<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름 : ${userInfo.name }<br>
나이 : ${userInfo.age }<br>
취미 : <c:forEach var="i" items="${userArr }">
	${i+=" "}
</c:forEach>


</body>
</html>