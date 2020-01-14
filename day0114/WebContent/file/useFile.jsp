<%@page import="java.io.IOException"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//원하는 파일을 접근하는 방법!
	//절대경로 기준.
	//어플리케이션 폴더 기준으로!
	String resourcePath = "number.txt";
	//자원의 실제 주소를 가져와야 한다.
	System.out.println(application.getRealPath(resourcePath));
	//파일을 읽어올 수 있다.
	
	//IO객체는 익셉션을 해줘야함.
	try(BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream((application.getRealPath(resourcePath))),"utf-8"))){
		String msg = br.readLine(); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useFile.jsp</title>
</head>
<body>
<%=msg %>
</body>
</html>
	
	<%}catch(IOException e){
		e.printStackTrace();
	}
%>
