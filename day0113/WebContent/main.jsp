<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%	
	//로그인이 안됬을 경우.
	if(session.getAttribute("id") == null){
		
		response.sendRedirect("input.jsp");
	}else{%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main.jsp</title>
</head>
<body>
<%=(String)session.getAttribute("id") %>님 환영합니다.
</body>
</html>
<%
}
%>