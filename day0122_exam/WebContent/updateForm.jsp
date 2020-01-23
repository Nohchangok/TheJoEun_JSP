<%@page import="day0122_exam.SelectMessageService"%>
<%@page import="day0122_exam.MessageDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int messageId = Integer.parseInt(request.getParameter("message_id"));
	SelectMessageService selectService = new SelectMessageService();
	MessageDto messageDto = new MessageDto();
	messageDto = selectService.selectService(messageDto, messageId);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>writeMessage.jsp</title>
</head>
<body>
<form action="updateMessage.jsp" method="post">
	<fieldset>
		<legend>방명록수정</legend>
		<input type="hidden" name="password" value="<%=messageDto.getPassword()%>">
		<input type="text" name="guestName" value="<%=messageDto.getGuestName()%>">
		<input type="text" name="passwordConf">"><br>
		<textarea rows="5" cols="50" name ="message"><%=messageDto.getMessage()%></textarea><br>
		<input type="submit" value="메세지 수정">
	</fieldset>  
</form>

</body>
</html>