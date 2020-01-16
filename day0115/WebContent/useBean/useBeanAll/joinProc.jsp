
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%	//useBean을 이용한 방식
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="user" class="day0115.useBean.User" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="user"/> 
<%-- 
	useBean을 쓰는 이유는
	화면 전환이나 데이터 전달은 거의 기본객체를 통해서함
	page,request,session,application을 통해서 전달받고 사용한다.
	
	property="*" <-- 전체 파라미터를 속성으로 넣어줌.
	input태그의 name값과 클래스의 속성name이 같으면 넣어줌.
	
	
 --%>
 
 <!-- user객체를 userId변수에 request파라미터값을 셋팅한다. -->
<jsp:forward page="userView.jsp"/>
