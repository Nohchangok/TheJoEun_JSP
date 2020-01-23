<%@page import="day0122_exam.DeleteMessageService"%>
<%@page import="day0122_exam.MessageDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	MessageDto messageDto = new MessageDto();
	String pwd = request.getParameter("password");
	DeleteMessageService deleteService = new DeleteMessageService();
	
	int messageId = Integer.parseInt(request.getParameter("messageId"));
	String passwordConf = request.getParameter("passwordConf");
	System.out.print(messageId + pwd + passwordConf);
	
	if(pwd.equals(passwordConf)){
		deleteService.deleteService(messageDto, messageId);
		out.print("메세지를 삭제하였습니다.");
	}else{
		out.print("암호가 다릅니다.");
	}
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</script>
</head>
<body>
<form action ="list.jsp">
		<input type="submit" value="목록보기"><br>
</form>
</body>
</html>