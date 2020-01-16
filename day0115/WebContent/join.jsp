<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<form action="joinProc.jsp" method="post">
	<input type="text" name="userId" placeholder="유저아이디"><br>
	<input type="password" name="userPwd" placeholder="비밀번호"><br>
	<input type="text" name="userName" placeholder="이름"><br>
	<input type="number" name="userAge" placeholder="나이"><br>
	<input type="submit" value="회원가입"><br>
	
</form>

</body>
</html>