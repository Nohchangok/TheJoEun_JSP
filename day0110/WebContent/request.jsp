<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces = "true"%> <%-- 상단한줄공백을 지워주는 아이. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request.jsp</title>
</head>
<body>
<pre>
	request객체
	웹 브라우저의 요청정보를 서버에 전달해준다.
	1. 클라이언트와 관련된 정보를 읽음.
	2. 서버와 관련된 정보를 읽음.
	3. 클라이언트의 요청 파라미터를 읽음.
	4. 요청 헤더, 쿠키
	
	클라이언트의 요청을 request객체에 담아 쓴다.
	클라이언트 IP = <%=request.getRemoteAddr() %> <%--클라이언트의 아이피 주소. --%>
	요청 인코딩 = <%=request.getCharacterEncoding() %>
	서버이름 = <%=request.getServerName() %>
	서버포트 = <%=request.getServerPort() %>
	요청파라미터 = <%=request.getParameterNames() %>
</pre>

</body>
</html>