<%@page import="day0115.useBean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	User user = new User(); //유저객체를 request에 넣어줘야 userView.jsp에서 사용가능하다.
	
	user.setUserId(request.getParameter("userId	"));
	user.setUserPwd(request.getParameter("userPwd"));
	user.setUserName(request.getParameter("userName"));
	user.setUserAge(Integer.parseInt(request.getParameter("userAge")));
	request.setAttribute("user", user); //request에 객체를 담아줌.
	
%>
<jsp:forward page="userView.jsp"/>
