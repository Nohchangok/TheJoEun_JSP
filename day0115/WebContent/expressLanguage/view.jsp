<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- math,kor,eng는 속성을 불러오는게 아니라 메소드를 불러오는 것이다. getmath()를 불러오는거와 같음. -->
이름 : ${requestScope.student.name}<br>
수학점수 : ${student.score.math}<br> 
국어점수 : ${student.score.kor}<br>
영어점수 : ${student.score.eng}<br>

<%-- 
${request.student}  -> request.getAttribute("student") 
${request.student.name}  -> request.getAttribute("student").name 
${test} --> page영역에 test 속성을 확인 후 -> request속성 -> session의 속성 -> application의 속성.

--%>

10+9의 값 : ${10+9 }<br>
10>9의 값 : ${10>9 }<br>
\${empty ""}는 : ${empty ""}<br>
\${empty null}은 : ${empty null }<br>
\${empty student}는 : ${empty student}<br>

</body>
</html>