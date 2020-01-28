<%@page import="day0122_exam.WriteMessageService"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="day0122_exam.MessageDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	MessageDto messageDto = new MessageDto();
	messageDto.setGuestName(request.getParameter("guestName"));
	System.out.println("gestName :"+request.getParameter("guestName"));
	messageDto.setPassword(request.getParameter("password"));
	messageDto.setMessage(request.getParameter("message"));
	messageDto.setWdate(LocalDateTime.now());
	messageDto.setUdate(LocalDateTime.now());
	
	WriteMessageService writeService = new WriteMessageService();
	writeService.writeService(messageDto);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>writeMessage.jsp</title>
<script type="text/javascript">
function goList(){  
	location.href ="list.jsp";
}
</script>
</head>
<body>
저장이 완료되었습니다.<br>
<button onclick="goList()">목록보기</button>
</body>
</html>