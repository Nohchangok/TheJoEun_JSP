<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext.jsp</title>
</head>
<body>
    
<%
	//out과 같다.
	//페이지를 관리하는 객체.
	JspWriter jspout = pageContext.getOut();
	jspout.print("페이지콘텍스트"); 
	
	//request
	HttpServletRequest httpRequest = (HttpServletRequest)pageContext.getRequest();
	
	//response
	HttpServletResponse httpResponse = (HttpServletResponse)pageContext.getResponse();
%>

</body>
</html>