<%@page import="day0115.useBean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	User user = (User)request.getAttribute("user"); //자료형이 object이기때문에 형변환이 필요하다.

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
</head>
<body>
	아이디 : <%=user.getUserId() %><br>
	비밀번호 : <%=user.getUserPwd() %><br>
	이름 : <%=user.getUserName() %><br>
	나이 : <%=user.getUserAge() %><br>
</body>
</html>