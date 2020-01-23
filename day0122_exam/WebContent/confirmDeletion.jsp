<%@page import="javax.print.attribute.AttributeSet"%>
<%@page import="org.apache.tomcat.util.descriptor.tld.TldRuleSet.Attribute"%>
<%@page import="day0122_exam.SelectMessageService"%>
<%@page import="day0122_exam.MyConn"%>
<%@page import="java.sql.Connection"%>
<%@page import="day0122_exam.MessageDao"%>
<%@page import="day0122_exam.MessageDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	MessageDto messageDto = new MessageDto();
	
	int messageId = Integer.parseInt(request.getParameter("message_id"));
	SelectMessageService selectService = new SelectMessageService();
	messageDto = selectService.selectService(messageDto, messageId);
%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</script>
</head>
<body>
<form action ="deleteMessage.jsp">
	<fieldset>
		<input type="hidden" name="messageId" value="<%=messageDto.getMessageId()%>">
		<input type="hidden" name="password" value="<%=messageDto.getPassword()%>">
		<input type="text" name="passwordConf" placeholder="비밀번호를 입력하세요.">
		<input type="submit" value="삭제하기"><br>
	</fieldset>  
</form>
</body>
</html>