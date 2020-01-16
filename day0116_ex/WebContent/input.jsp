<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="process.jsp" method="post">
   이름 : <input type="text" name="name"><br>
   나이 : <input type="number" name="age"><br>
   <fieldset>
   <legend>취미</legend>
   코딩<label><input type="checkbox" name="hobby" value="코딩"></label>
   독서<label><input type="checkbox" name="hobby" value="독서"></label>
   노래<label><input type="checkbox" name="hobby" value="노래"></label>
  당구<label><input type="checkbox" name="hobby" value="당구"></label>
   운동<label><input type="checkbox" name="hobby" value="운동"></label>
   </fieldset>
   <input type="submit">
</form>
</body>
</html>