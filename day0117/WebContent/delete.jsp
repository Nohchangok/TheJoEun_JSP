<%@page import="javax.websocket.SendResult"%>
<%@page import="day0117.MessageDao"%>
<%@page import="java.sql.SQLException"%>
<%@page import="day0117.MyConn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int messageId = Integer.parseInt(request.getParameter("message_id"));

	try{
		Connection conn = MyConn.getConn();
		MessageDao messageDao = MessageDao.getInstance();
		messageDao.delete(conn, messageId); 
		
	}catch(SQLException e){
		e.printStackTrace();
	}catch(Exception e){
		e.printStackTrace();
	}
	response.sendRedirect("message.jsp");
%>