<%@page import="day0122_exam.UpdateMessageService"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="day0122_exam.MessageDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	MessageDto messageDto = new MessageDto();
	UpdateMessageService updateService = new UpdateMessageService();
	
	int messageId = Integer.parseInt(request.getParameter("message_id"));
	String passwordConf = request.getParameter("passwordConf");
	String pwd = request.getParameter("password");
	if(pwd.equals(passwordConf)){
		messageDto.setMessage(request.getParameter("message"));
		messageDto.setUdate(LocalDateTime.now());
		updateService.updateService(messageDto, messageId);		
		out.print("수정 하였습니다.");
	}else{
		out.print("암호가 다릅니다.");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action ="list.jsp">
		<input type="submit" value="목록보기"><br>
</form>

</body>
</html>