<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	pageContext.setAttribute("이름","루피");
	request.setAttribute("나이",19);
	session.setAttribute("취미", new String[]{"축구","농구","야구"});
	application.setAttribute("디비","mysql");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setAttribute.jsp</title>
</head>
<body>
pageContext : <%=(String)pageContext.getAttribute("이름") %><br>
request : <%=(Integer)request.getAttribute("나이") %><br>
session : <%=Arrays.toString((String[])session.getAttribute("취미")) %><br>
application : <%=(String)application.getAttribute("디비") %>
<a href = "useAttribute.jsp">useAttribute.jsp로 이동</a>

</body>
</html>