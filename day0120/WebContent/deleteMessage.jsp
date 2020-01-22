<%@page import="day0120.MessageDto"%>
<%@page import="day0120.DeleteService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int messageId = Integer.parseInt(request.getParameter("message_id"));
	MessageDto messageDto = new MessageDto();
	messageDto.setMessageId(messageId);
	
	DeleteService deleteService = new DeleteService();
	deleteService.delectMessage(messageDto);
	
	response.sendRedirect("list.jsp");

%>