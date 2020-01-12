<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form.jsp</title>
</head>
<body>
<h1>폼생성</h1>
<form action ="paramInfo.jsp">
	<input type= "text" name="name" placeholder="이름을 입력하세요"><br>
	<input type= "number" name="age" placeholder="나이를 입력하세요"><br>
	<input type= "text" name="address" placeholder="주소를 입력하세요"><br>
	<fieldset>
		<legend>성별</legend>
		<lable>남 :<input type="radio" name="sex" value="m"></lable>
		<lable>여 :<input type="radio" name="sex" value="w"></lable>
	</fieldset>
	<fieldset>
	<legend>사용 가능 언어</legend>
	<label>java:<input type="checkbox" name="lang" value="java"></label>
	<label>javascript:<input type="checkbox" name="lang" value="javascript"></label>
	<label>html:<input type="checkbox" name="lang" value="html"></label>
	<label>python:<input type="checkbox" name="lang" value="python"></label>
	</fieldset>
	생년월일:<input type="date" name="birth"><br>
	<input type="submit" value="전송">
</form>
</body>
</html>