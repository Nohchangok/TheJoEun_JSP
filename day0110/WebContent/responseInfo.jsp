<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>responseInfo.jsp</title>
</head>
<body>
<pre>
	response 객체
	웹브라우저에 응답 정보를 담아서 보냄.
	헤더정보 입력과, 리다이렉트 기능이 있음.
	헤더에는 브라우저에게 쿠기를 저장하게 해라!라고 설정할 수 있음.
	response.setHeader("Cache-Controlor", "no-cache"); 하면 브라우저는
	캐시(다운로드받은 정보들)를 생성하지 않는다.
	
	리다이렉트도 할 수 있음(브라우저에게 해당 페이지를 요청해라!)
	response.sendRedirect("이동할 페이지");
</pre>
<a href="redirect.jsp">리다이렉트!</a>

	

</body>
</html>