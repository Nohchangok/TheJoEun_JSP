<%@page import="day0117.MessageDto"%>
<%@page import="day0117.MessageDao"%>
<%@page import="day0117.MyConn"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int messageId = Integer.parseInt(request.getParameter("message_id"));
	//id를 통해서 수정할 내용을 받아온다.
	MessageDto messageDto = null;
	try{
		Connection conn = MyConn.getConn();
		MessageDao messageDao = MessageDao.getInstance();
		messageDto = messageDao.select(conn, messageId);
		
	}catch(SQLException e){
		e.printStackTrace();
	}catch(Exception e){
		
	}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
</head>
<body>

<form action="updateProc.jsp" method="post">
	<fieldset>
		<legend>방명록쓰기</legend>
		<input type="hidden" name="messageId" value="<%=messageDto.getMessageId()%>">
		<input type="text" name="udate" value="<%=messageDto.getWdate()%>" readonly="readonly">
		<input type="text" name="guestName" value="<%=messageDto.getGuestName() %>" readonly="readonly">
		<input type="submit" value="메세지 수정"><br>
		<textarea rows="5" cols="50" name ="message"><%=messageDto.getMessage()%></textarea>
			
	</fieldset>
</form>

</body>
</html>