<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl을 이용한 객체 이용</title>
</head>
<body>
<jsp:useBean id="user" class="day0116.User" scope="page"/>
<%--
User user = new User();
pageContext.setAttribute();
--%>

<%--
${user} page객체에서 가져오는거
<%=user%> 자바코드의 참조변수를 가져오는거
--%>

<!--  pageContext.getAttribute("user"); pageContext안에 있어야함.-->
<c:set target="${user }" property="name" value="ironman"/>

<!--        User user = new User(); 클래스만 있으면 됨. -->
<c:set target="<%=user %>" property="age">10</c:set>

${user.name }<br>
${user.age }<br>

<%--
Map객체도 넣을 수 있다.
--%>
<jsp:useBean id="userMap" class="java.util.HashMap" scope="request"/>
<%
//   HashMap userMap = new HashMap();
//   request.setAttribute("userMap", userMap);
%>
<c:set target="${userMap }" property="key1" value="${10 }"/>
<%--
map의 put을 자동으로 호출해서 넣어준다.
userMap.put("key1","mapvalue")가 호출된다.
 --%>
${userMap.key1 }

<%-- 
변수 삭제
<c:remove var="변수명"/>
리무브시 scope를 정하지 않으면 변수명이 같은 것은 다 지워진다.	
 --%>
<c:set var="test" scope="request">10</c:set>
test = ${test }<br>
<c:remove var="test" scope="request"/>
test =${test }<br> 
</body>
</html>