<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	ArrayList<String> color = new ArrayList<String>();
	color.add("red");
	color.add("blue");
	color.add("black");
	request.setAttribute("color", color); //반드시 Atrribute에 넣어줘야 El사용가능.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useEl.jsp</title>
</head>
<body>
	${color[0] };
	${color[1] };
	${color[2] };
</body>
</html>