<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="day0122_exam.MessageDto"%>
<%@page import="day0122_exam.GetMessageListService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    

<% 
	request.setCharacterEncoding("utf-8");
	MessageDto messageDto = new MessageDto();

	GetMessageListService getMessageList = new GetMessageListService();
	ArrayList<MessageDto> list = getMessageList.getListMessage(messageDto);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
	div{border:1px solid black; margin-top:5px; padding:5px;background:lightgray;}
</style>
</head>
<body>
<jsp:include page="writeMessage.jsp"></jsp:include>
<c:set var="list" value="<%=list %>"/>
<c:if test="${list.size() == 0 }" >
	등록된 메세지가 없습니다.
</c:if>
<c:forEach var="message" items ="${list}">
	<div>
		메세지ID : ${message.messageId }<br>
		작성일 : ${message.wdate }<br>
		수정일 : ${message.udate }<br>
		작성자 : ${message.guestName }<br>
		내용 : <br>
		${message.message }<br>
		
		<a href="confirmDeletion.jsp?message_id=${message.messageId }">삭제</a>
		<a href="updateForm.jsp?message_id=${message.messageId }">수정</a>
	</div>
</c:forEach>
<hr>
</body>
</html>