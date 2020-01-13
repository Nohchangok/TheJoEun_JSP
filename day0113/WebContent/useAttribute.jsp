<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useAttribute.jsp</title>
</head>
<body>
<%	
	//객체가 object로 오니까 형변환이 필요하다.
	String name = (String)pageContext.getAttribute("이름");
	out.print("pageContext : "+name+"<br>"); //null
	Integer age =(Integer)request.getAttribute("나이"); //null이라는건 참조변수한테만 있기 때문에 자료형 int로는 받을 수 없다.
	out.print("request : "+age+"<br>");
	String[] hobby = (String[])session.getAttribute("취미");
	out.print("session : "+Arrays.toString(hobby)+"<br>");
	String db = (String)application.getAttribute("디비");
	out.print("application : "+db+"<br>");
	
%>

</body>
</html>