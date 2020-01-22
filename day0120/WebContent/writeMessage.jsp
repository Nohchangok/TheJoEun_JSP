<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>writeMessage.jsp</title>
</head>
<body>
<a href="list.jsp">리스트 보기</a>
<form action="writeProc.jsp" method="post">
	<fieldset>
		<legend>방명록쓰기</legend>
		<input type="text" name="guestName" placeholder="이름">
		<input type="submit" value="메세지 남기기"><br>
		<textarea rows="5" cols="50" name ="message" placeholder="내용"></textarea>
	</fieldset>  
</form>

</body>
</html>