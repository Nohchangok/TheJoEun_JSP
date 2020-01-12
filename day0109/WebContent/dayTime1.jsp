<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dayTime1.jsp</title>
</head>
<body>

<%-- //jsp용 주석!
 자바소스를 넣을 수 있는 공간. 
 스크립트릿(Scriptlet)
 <%자바코드%>
 자바의 코드를 실행한다.

 표현식(Expression)
 <% out.print(값) %>
 <%=값%>
 
 디렉티브<%@ 내용%>
 <%@ 디렉티브이름 속성 = "값" 속성 = "값" %>
 설정정보를 지정할 때 쓴다.
 
 page 디렉티브 -> jsp 정보를 지정한다.
 문서타입, 출력버퍼, 에러페이지 등등등...
 
 선언부
 <%!자바코드%>
 자바의 함수를 정의하는 곳.
 속성도 만들 수 있다.
--%>
<%!

	 int num = 0;
	public int sum(int num1, int num2){
	return num1+num2;
}
%>

<% 
	int num1 = 10;
	int num2 = 20;
	out.print("첫번째 num1+num2 : "+ (num1+num2)+"<br>");
	out.print("첫번째 sum() : "+ (sum(num1, num2))+"<br>");
	out.print("<br>");
	out.print(num++);
	
%>

<%=num1+num2%>
 
</body>
</html>