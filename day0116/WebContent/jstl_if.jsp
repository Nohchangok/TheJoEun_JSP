<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_if.jsp</title>
</head>
<body>
<%-- c:if test="${조건절}" --%>
<c:if test="true">
	<%--조건이 참이되면 실행 내용 --%>
	무조건 실행 함<br>
</c:if>
<c:if test="false">
	무조건 안실행 함<br>
</c:if>
<c:if test ="${20 < param.age }">
	성인이다<br>
</c:if>
<c:if test ="${20 < param.age }" value ="result" scope="request">
	성인이다<br>
</c:if>

<%--
	if-else, switch와 비슷한 choose절
	첫번째가 참이면 첫번째만 실행한다!
--%>
<%-- 
	파라미터 score에 숫자를 입력받아 그 숫자가 100~90이면 a학점입니다.
	89~80 b학점
	79~70 c학점
	나머진 d학점
 --%>
 
 <c:choose>
 	<c:when test=""></c:when>
 	<c:when test=""></c:when>
 	<c:otherwise></c:otherwise>
 </c:choose>
 	
 
</body>
</html>