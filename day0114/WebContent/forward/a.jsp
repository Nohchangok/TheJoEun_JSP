<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%	

	//name이라는 파라미터를 받음.
	request.getParameter("name");
	
	//num이라는 속성을 추가.
	request.setAttribute("num", 10);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward/a.jsp</title>
</head>
<body>
a페이지
<!-- 
상대주소:현재파일기준.
b.jsp가 같은폴더이기 때문에 상대주소 

절대주소:/forward/b.jsp
//절대경로의 시작은 root가 최상위 폴더임.
이클립스에서는 WebContent가 최상위로 표현되어 있음
최상위 안쪽은 /로 표현.
시작은 /로하면 절대주소 root(WebContent)부터 시작.
-->
<jsp:forward page="/forward/b.jsp">
	<jsp:param value="gg" name="name1"/>
</jsp:forward>
</body>
</html>