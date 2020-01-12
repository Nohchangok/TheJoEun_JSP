<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form_ex.jps</title>
</head>
<body>
<form action ="paramInfo_ex.jsp">
	<h1>Infomation</h1>
	이름: <input type="text" name ="name"><br>
	나이: <input type="number" name ="age"><br>
	주소: <input type="text" name ="address"><br>
	이메일: <input type="text" name ="email"><br>
	생년월일: <input type="date" name ="birth"><br>
	<fieldset>
		<legend>취미</legend>
		<lable>독서<input type="checkbox" name="hobby" value="독서"></lable>
		<lable>등산<input type="checkbox" name="hobby" value="등산"></lable>
		<lable>당구<input type="checkbox" name="hobby" value="당구"></lable>
		<lable>음악감상<input type="checkbox" name="hobby" value="음악감상"></lable>
		<lable>영화보기<input type="checkbox" name="hobby" value="영화보기"></lable>
	</fieldset>
	<fieldset>
	<legend>성별</legend>
	<lable>남 :<input type="radio" name="sex" value="남자"></lable>
	<lable>여 :<input type="radio" name="sex" value="여자"></lable>
	</fieldset>
	
	점심메뉴 : 
	<select name="lunch">
  	    <option>닭갈비</option>
   		<option>곱창전골</option>
  	    <option>초밥</option>
  	    <option>굴보쌈</option>
  	    <option>뚝배기</option>
  	    <option>순두부</option> 	    
	</select> 
	<br>
	<input type="submit" value="전송">


	
</form>

</body>
</html>