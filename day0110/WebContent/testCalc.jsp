<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testCalc.jsp</title>
</head>
<body>
<form action="result.jsp">
	<input type="number" name="num1" placeholder="숫자1"><br>
	<input type="number" name="num2" placeholder="숫자2"><br>
	<input type="radio" name="Calc" value="1">+
	<input type="radio" name="Calc" value="2">-
	<input type="radio" name="Calc" value="3">*
	<input type="radio" name="Calc" value="4">/
	<input type="radio" name="Calc" value="5">%
	
	<!--<select name="operator">
		<option value="1">+</option>
		<option value="2">-</option>
		<option value="3">*</option>
		<option value="4">/</option>
		<option value="5">%</option>
	</select>-->
	<input type ="submit">
</form>

사용자에게 두개의 숫자를 입력받고
라디오 버튼으로 연산자를 선택하여
두수와 해당되는 연산자를 서버로 전송한다.
서버는 두수와 연산자를 이용해서 계산을하고
결과와 testCalc.jsp로 돌아가는 버튼을 보여주는 페이지(result.jsp)를 만드세요.


</body>
</html>