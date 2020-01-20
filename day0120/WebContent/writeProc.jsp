<%@page import="java.time.LocalDateTime"%>
<%@page import="day0120.MessageDto"%>
<%@page import="day0120.WriteService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
	MessageDto messageDto = new MessageDto();	//MessageDto의 자료형의 객체 messageDto 생성.
	messageDto.setGuestName(request.getParameter("guestName")); 
	messageDto.setMessage(request.getParameter("message"));
	messageDto.setWdate(LocalDateTime.now());
	
	WriteService service = new WriteService();
	service.writeMessage(messageDto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>writeProc.jsp</title>

<script type="text/javascript">
function goList(){  
	location.href ="list.jsp";
}
</script>

</head>
<body>
입력 완료
<button onclick="goList()">리스트로가기.</button>
</body>
</html>