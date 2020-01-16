<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
태그 라이브러리를 사용하기 위해서는 디렉티브에 taglib을 선언해줘야함.
core는 jstl의 기본 기능들 반복, 변수생성 등등의 기능이 있는 아이! 
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 사용!</title>
</head>
<body>
<%--변수 선언 --%>
<c:set var="name1" value="ironman" scope="request"/>
<%--request.setAttribute("name1","ironman");과 같다! --%>
${name1 }

<%=request.getAttribute("name1") %>

<c:set var="name2" scope="page"><%=new int[5] %></c:set>
<%-- 
	객체도 가능 
	대상(객체)은 자바빈 또는 Map <%=객체 %> , ${객체} 둘다 사용가능
	<c:set target="대상" property="프로퍼티이름" value="값"/>
	--%>
</body>
</html>