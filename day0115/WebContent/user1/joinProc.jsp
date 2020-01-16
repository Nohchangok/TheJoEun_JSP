<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id ="user1" class="day0115.useBean.User1" scope="request"/>
<jsp:setProperty property="*" name="user1"/>
<jsp:setProperty property="birth" name="user1" value='<%=LocalDate.parse(request.getParameter("birth1"))%>'/>


<jsp:forward page="user1View.jsp"/>
