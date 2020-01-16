<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점수입력</title>
<form action="process.jsp" method="post">
	<input type="text" name="name" placeholder="이름"><br>
	<input type="date" name="birth"placeholder="생일"><br>
	<input type="number" name="kor" min="0" max="100" value="50">국어<br>
	<input type="number" name="math" min="0" max="100" value="50">수학<br>
	<input type="number" name="eng" min="0" max="100" value="50">영어<br>
	<input type="submit">
</form>
</head>
<body>

</body>
</html>