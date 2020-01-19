<%@page import="java.sql.SQLException"%>
<%@page import="java.util.List"%>
<%@page import="day0117.MessageDto"%>
<%@page import="day0117.MessageDao"%>
<%@page import="day0117.MyConn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	List<MessageDto> messageList =null;
	try{
		Connection conn = MyConn.getConn();
		MessageDao messageDao = MessageDao.getInstance();
		messageList = messageDao.selectList(conn);
		
	}catch(SQLException e){
		e.printStackTrace();
	}catch(Exception e){
		e.printStackTrace();
	}
	//디비에 있는 내용을 가져오는 코드가 여기서 실행되어야한다.
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>message.jsp</title>
<script>
	function check(){
	return window.confirm("삭제할거야?");
	}
</script>
</head>
<body>
<form action="write.jsp" method="post">
	<fieldset>
		<legend>방명록쓰기</legend>
		<input type="text" name="guestName" placeholder="이름">
		<input type="submit" value="메세지 남기기"><br>
		<textarea rows="5" cols="50" name ="message" placeholder="내용"></textarea>
	</fieldset>
</form>
<hr>
<c:forEach var="msg" items="<%=messageList %>">
	<div>
		아이디 : ${msg.messageId }, 작성일:${msg.wdate }<br>
		작성자 : ${msg.guestName }<br>
		<textarea rows="5" cols="50" disabled="disabled">${msg.message }</textarea>
		<%-- disabled로 메세지 입력을 막는다.	 --%>
		<a href="update.jsp?message_id=${msg.messageId }">수정</a>
		<a href="delete.jsp?message_id=${msg.messageId }" onclick="return check()">삭제</a>
	</div>
</c:forEach>



</body>
</html>