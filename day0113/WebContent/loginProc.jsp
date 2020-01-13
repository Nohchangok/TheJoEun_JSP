<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	//로그인을 정보 체크
	String id = (request.getParameter("id") != null)?request.getParameter("id"):"";
	String pwd = (request.getParameter("pwd") != null)?request.getParameter("pwd"):"";
	
	//로그인정보를 코드에 삽입한걸로 비교.
	String serverId = "jsp";
	String serverPwd = "server";	
	
	//입력된값이 맞는지 비교.
	if(id.equals(serverId) && pwd.equals(serverPwd)){
		session.setAttribute("id", id);
		session.setAttribute("pwd", pwd);
		response.sendRedirect("main.jsp");
	}else{
		response.sendRedirect("input.jsp");
	}
	
%>