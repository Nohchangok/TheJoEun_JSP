<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% request.setCharacterEncoding("utf-8"); %>
    
<jsp:useBean id="userInfo" class="day0116_ex.UserInfo" scope="request"></jsp:useBean>

<c:set target="${userInfo }" property="name" value="${param.name }"></c:set>
<c:set target="${userInfo }" property="age" value="${param.age }"></c:set>

<%
String[] hobby = request.getParameterValues("hobby");
ArrayList userArr = new ArrayList();

for( int i = 0; i < hobby.length; i++ ){
	userArr.add(hobby[i]);
}
	request.setAttribute("userArr",userArr);

%>

<jsp:forward page="view.jsp"/>


<%-- <jsp:useBean id="userArr" class="java.util.ArrayList" scope="request"/> --%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>