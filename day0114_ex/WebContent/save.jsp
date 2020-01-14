<%@page import="java.io.FileWriter"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileOutputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	int num3 = Integer.parseInt(request.getParameter("num3"));
	int num4 = Integer.parseInt(request.getParameter("num4"));
	int num5 = Integer.parseInt(request.getParameter("num5"));
	
	//출력문은 나오는데..
	//number.txt 파일에 write가 안됨..
	try(FileWriter fout = new FileWriter
			("C:/Users/oo756/Documents/TheJoEun_JSP/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/day0114_ex/number.txt")){
		fout.write(num1);
		fout.write(num2);
		fout.write(num3);
		fout.write(num4);
		fout.write(num5);
		out.print("성공");
 %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>save.jsp</title>
</head>
<body>
저장완료!
</body>
</html>
	
	<%}catch(IOException e){
		e.printStackTrace();
	}
%>