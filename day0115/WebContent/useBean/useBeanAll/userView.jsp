<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- <jsp:useBean id="user" class="day0115.useBean.User" scope="request"/> 이거대신 type으로 사용가능. --%>
<jsp:useBean id="user" type="day0115.useBean.User" scope="request"/>

<!-- 
	useBean에서 class는 없으면 새 객체를 생성하고 이미 있다면 기존 객체를 사용한다.
	class 속성대신 type으로 바꿀수 있다.
	type 속성은 가져오는 것만 가능.
 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
</head>
<body>
	<!-- user객체안에 있는 userId값을 get한다. -->
	아이디 :<jsp:getProperty property="userId" name="user"/><br>
	비밀번호 :<jsp:getProperty property="userPwd" name="user"/><br>
	이름 : <jsp:getProperty property="userName" name="user"/><br>
	나이 : <jsp:getProperty property="userAge" name="user"/><br>
</body>
</html>