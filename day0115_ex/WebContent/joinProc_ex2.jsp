<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%request.setCharacterEncoding("utf-8");%>    
<jsp:useBean id="emp" class="day0115_ex.Employee" scope="request"/>

<jsp:setProperty property="name" name="emp" value='<%=request.getParameter("name") %>'/>
<jsp:setProperty property="salary" name="emp" value='<%=Integer.parseInt(request.getParameter("salary")) %>'/>
<jsp:setProperty property="hireDate" name="emp" value='<%=LocalDateTime.parse(request.getParameter("hireDate"))%>'/>

<jsp:forward page ="empView_ex2.jsp"/>