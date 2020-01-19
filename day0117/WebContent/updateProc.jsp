<%@page import="java.sql.SQLException"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="day0117.MessageDto"%>
<%@page import="day0117.MessageDao"%>
<%@page import="day0117.MyConn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="messageDto" class="day0117.MessageDto"></jsp:useBean>
<jsp:setProperty property="*" name="messageDto"/>

<%
	//수정할 데이터를 받아서 update를 해주는 로직.
	String udate = request.getParameter("udate");
	LocalDateTime wdate = LocalDateTime.parse(udate);
	messageDto.setWdate(wdate);
	
	try{
		Connection conn = MyConn.getConn();
		MessageDao messageDao = MessageDao.getInstance();
		messageDao.update(conn, messageDto);
		
	}catch(SQLException e){
		e.printStackTrace();
	}catch(Exception e){
		e.printStackTrace();
	}
	response.sendRedirect("message.jsp");
%>