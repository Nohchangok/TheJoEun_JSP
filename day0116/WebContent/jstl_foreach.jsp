<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_foreach.jsp</title>
</head>
<body>
<%--
1~5까지 수를 출력하는 코드를 작성해보세요.
결과 : 1 2 3 4 5
--%>
<%
for(int i=1; i<=5; i++){
	out.print(i+" ");
}
%><br>
<c:forEach var="i" begin="1" end="5" >
	${i+="  "} 
</c:forEach><br>


<%-- 
0~10까지의 수 중에서 2의 배수 출력!
 --%>
 
<c:forEach var="i" begin="0" end="10" step="2">
	${i+="  "}
</c:forEach><br>

<%-- 
	배열 또는 어레이리스트 또는 컬렉션으로 받아 올 수 있기에 
	그걸 반복하기 위해 더 많이 쓴다.
 --%>
 
<%
	Set<Integer> lotto = new HashSet<Integer>();
	while(lotto.size()<6){
		lotto.add((int)(Math.random()*45)+1);
	}
	for(int i : lotto){
		out.print(i+" ");
	}
%>

<%-- 
	List, Iterator, Enumeration, Map 등등 사용 가능.
 --%>
<c:forEach var="i" items="<%=lotto %>">
	${i+=" "}
</c:forEach>

<%--
	varStatus 반복 상태체크를 도와주는 속성.
	index : 루프 실행의 현재 인덱스.
	count : 실행 횟수.
	first : 첫번째인 경우 true로 반환.
	Last : 마지막인 경우 true로 반환.
 --%>
 
 <c:forEach var="i" items="<%=lotto %>" varStatus="status">
 	<c:if test ="${status.first }">
 		첫번째놈 : ${i }
 	</c:if>
 	로또번호 : ${i }<br>
	index : ${status.index }<br>
	count : ${status.count }<br>
	<c:if test ="${status.last }">
 		마지막놈 : ${i }
 	</c:if>
	
 </c:forEach>

</body>
</html>