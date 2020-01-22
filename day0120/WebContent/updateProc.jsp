<%@page import="day0120.MessageDto"%>
<%@page import="day0120.UpdateService"%>
<%@page import="day0120.MessageDao"%>
<%@page import="java.sql.SQLException"%>
<%@page import="day0120.MyConn"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>

<% 	
	MessageDto messageDto = new MessageDto();
	messageDto.setMessageId(Integer.parseInt(request.getParameter("message_id")));
	messageDto.setGuestName(request.getParameter("guestName"));
	messageDto.setMessage(request.getParameter("message"));
	//수정할 데이터를 받아서 update해주는 로직.
	UpdateService updateService = new UpdateService();
	updateService.updateMessage(messageDto);
	response.sendRedirect("list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateProc.jsp</title>
</head>
<body>

</body>
</html>