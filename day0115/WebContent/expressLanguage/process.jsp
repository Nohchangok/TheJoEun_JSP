<%@page import="java.time.LocalDate"%>
<%@page import="day0115.useBean.Score"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="student" class="day0115.useBean.Student" scope="request"/>
<jsp:setProperty property="name" name="student" param="name"/>
<%	
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));

	Score score = new Score(kor,eng,math);
	
	student.setScore(score);
	String birthStr = request.getParameter("birth");
	student.setBirth(LocalDate.parse(birthStr));

%>
<jsp:forward page="view.jsp"></jsp:forward>