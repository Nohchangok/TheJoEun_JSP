<%@page import="day0120.MessageDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="day0120.MessageListView"%>
<%@page import="day0120.MessageListService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%	
	//현재 page정보
	
	String pageNumberStr = request.getParameter("page"); 
	int pageNumber = 1;
	if(pageNumberStr !=null){
		pageNumber = Integer.parseInt(pageNumberStr);
	}
	
	//서비스 객체 생성
	MessageListService service = new MessageListService();
	
	//서비스 객체를 이용하여 현재페이지 관련 데이터를 받아옴.
	MessageListView viewData = service.getMessageListView(pageNumber);

%>

<c:set var="viewData" value="<%=viewData %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
<style>
	div{border:1px solid black; margin-top:5px; padding:5px;background:lightgray;}
</style>
</head>
<body>
<a href="writeMessage.jsp">메세지 쓰기</a>
<c:if test="${viewData.messageTotalCount == 0 }" >
	등록된 메세지가 없습니다.
</c:if>
<c:if test ="${viewData.messageTotalCount != 0 }" >
	<c:forEach var="message" items ="${viewData.messageList}">
		<div>
			메세지ID : ${message.messageId }<br>
			작성자 : ${message.guestName }<br>
			작성일 : ${message.wdate }<br>
			내용 : <br>
			${message.message }
			<a href="updateMessage.jsp?message_id=${message.messageId }">수정</a>
			<a href="deleteMessage.jsp?message_id=${message.messageId }">삭제</a>
		</div>
	</c:forEach>
	<hr>
	<%-- 페이지네이션 --%>
	<c:forEach var = "pageNum" begin="1" end="${viewData.pageTotalCount }">
		<a href="list.jsp?page=${pageNum }">[${pageNum}]</a>
	</c:forEach>
	
</c:if>
</body>
</html>