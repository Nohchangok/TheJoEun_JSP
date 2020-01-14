<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String select = request.getParameter("menu");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	if(select.equals("changok")){%>
		<img src="창옥이.jpg" width="400px" height="300px">
	<%}else if(select.equals("seungjun")){%>
		<img src="집게사장.jpg" width="400px" height="300px">
	<%}else{%>
		<img src="레오.jpg" width="400px" height="300px">
	<%}%>

<jsp:include page="inputTest.jsp"></jsp:include>

</body>
</html>