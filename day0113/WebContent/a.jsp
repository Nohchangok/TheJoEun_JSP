<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String name = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>a.jsp</title>
</head>
<body>
jsp 액션태그!
액션태그는 XML 문법 규칙을 따르는 JSP 자체 태그.
시작태그, 끝태그, 태그

<%--
	<jsp:태그명>
 --%>
 다른페이지를 포함하는 태그
 <jsp:include page="b.jsp"></jsp:include>
 
 <p>a.jsp에서 만든 코드</p>

</body>
</html>