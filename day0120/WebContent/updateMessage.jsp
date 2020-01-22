<%@page import="day0120.SelectService"%>
<%@page import="java.sql.SQLException"%>
<%@page import="day0120.MessageDao"%>
<%@page import="day0120.MyConn"%>
<%@page import="java.sql.Connection"%>
<%@page import="day0120.MessageDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int messageId = Integer.parseInt(request.getParameter("message_id"));
	//id를 통해서 수정할 내용을 받아온다.
	
	MessageDto messageDto = new MessageDto();
	messageDto.setMessageId(messageId);
	SelectService selectService = new SelectService();
	messageDto = selectService.selectMessage(messageDto);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateMessage.jsp</title>
</head>

<body>
<form action="updateProc.jsp" method="post">
	<fieldset>
		<legend>방명록쓰기</legend>
		<input type="text" name="message_id" value="<%=messageId %>" readonly="readonly">
		<input type="text" name="guestName" value="<%=messageDto.getGuestName()%>" readonly="readonly">
		<input type="submit" value="메세지 수정"><br>
		<textarea rows="5" cols="50" name ="message"><%=messageDto.getMessage()%></textarea>
	</fieldset>
</form>

</body>
</html>