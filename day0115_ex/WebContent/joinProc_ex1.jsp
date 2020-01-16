<%@page import="java.time.LocalDateTime"%>
<%@page import="day0115_ex.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	request.setCharacterEncoding("utf-8"); 
	Employee emp = new Employee();
	
	emp.setName(request.getParameter("name"));
	emp.setSalary(Integer.parseInt(request.getParameter("salary")));
	emp.setHireDate(LocalDateTime.parse(request.getParameter("hireDate")));
	request.setAttribute("emp", emp);

%>

<jsp:forward page="empView_ex1.jsp"/>