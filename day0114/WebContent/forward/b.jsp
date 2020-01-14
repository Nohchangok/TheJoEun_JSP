<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>b.jsp</title>
</head>
<!-- b화면만 보여줌. -->
<body>
b.jsp 페이지
<%=request.getAttribute("num") %>
<%=request.getParameter("name") %>
<%=request.getParameter("name1") %>
</body>
</html>