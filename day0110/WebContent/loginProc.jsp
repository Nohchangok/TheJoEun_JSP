<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("id");	
	String pwd = request.getParameter("pwd");
	
	if(id.equals("groot") && pwd.equals("mysql")){
		System.out.println("로그인 되었습니다.");
		response.sendRedirect("main.jsp");
		
		
	}else{
		System.out.println("아이디 또는 비밀번호를 확인하세요.");
		response.sendRedirect("login.jsp");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginProc.jsp</title>
</head>
<body>

</body>
</html>