<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id ="emp" class="day0115_ex.Employee" scope="request"/>
<jsp:setProperty property="*" name="emp"/>
<jsp:setProperty property="hireDate" name="emp" value='<%=LocalDateTime.parse(request.getParameter("hireDate1"))%>'/>

<jsp:forward page="empView_ex3.jsp"/>