<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="user1" type="day0115.useBean.User1" scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출력</title>
</head>
<body>
	이름 : <jsp:getProperty property="name" name="user1"/><br>
	점수 : <jsp:getProperty property="score" name="user1"/><br>
	생일 : <jsp:getProperty property="birth" name="user1"/><br>
	<%-- <%=user1.getBirth().toString()%> 이렇게도 사용가능. --%>
</body>
</html>