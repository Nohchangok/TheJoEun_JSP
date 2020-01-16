
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%	//useBean을 이용한 방식
	request.setCharacterEncoding("utf-8");
%>
<!--
	request속성의 User클래스의 user 객체를 만든다. 
	User user = new User();
-->
<jsp:useBean id="user" class="day0115.useBean.User" scope="request"></jsp:useBean>

<%-- 

객체 생성후 request객체의 속성에 담는것과 같다.
id : 사용할 객체 이름
class : 해당 클래스가 있는 위치(패키지명+클래스명)
scope : 기본객체의 종류(객체의 속성으로 들어갈 위치)
 --%>
 
 <!-- user객체의 userId변수에 request파라미터값을 셋팅한다. -->
<jsp:setProperty property="userId" name="user" value='<%=request.getParameter("userId") %>'/>
<jsp:setProperty property="userPwd" name="user" value='<%=request.getParameter("userPwd") %>'/>
<jsp:setProperty property="userName" name="user" value='<%=request.getParameter("userName") %>'/>
<jsp:setProperty property="userAge" name="user" value='<%=Integer.parseInt(request.getParameter("userAge"))%>'/>
<jsp:forward page="userView.jsp"/>
