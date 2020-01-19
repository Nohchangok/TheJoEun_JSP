<%@page import="java.sql.SQLException"%>
<%@page import="day0117.MyConn"%>
<%@page import="java.sql.Connection"%>
<%@page import="day0117.MessageDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>	
<jsp:useBean id="messageDto" class="day0117.MessageDto" scope="request"/>
<jsp:setProperty property="*" name="messageDto"/>
<%
	//전달받은 데이터를 이용해서 디비에 넣어주고 다시 쓰는 화면으로 전화시키면 끝.
	
 	try{
		Connection conn = MyConn.getConn(); //mysql이랑 java와 연결
		MessageDao messageDao = MessageDao.getInstance();
		messageDao.insert(conn, messageDto);
		
 	}catch(SQLException e){
 		e.printStackTrace();
 	}catch(Exception e){
 		e.printStackTrace();
 	}
	
 	response.sendRedirect("message.jsp");

%>