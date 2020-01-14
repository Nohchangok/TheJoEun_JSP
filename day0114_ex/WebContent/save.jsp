<%@page import="java.io.FileWriter"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileOutputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String num3 = request.getParameter("num3");
	String num4 = request.getParameter("num4");
	String num5 = request.getParameter("num5");
	
	//출력문은 나오는데..
	//number.txt 파일에 write는 되는데 글씨가 깨짐..
	//int형은 write시 깨짐
	//String은 안꺠짐.
	//왜그런건지??
	//
	try(FileWriter fout = new FileWriter
			("C:/Users/oo756/Documents/TheJoEun_JSP/day0114_ex/WebContent/number.txt")){
		fout.write(num1);
		fout.write("\n");
		fout.write(num2);
		fout.write("\n");
		fout.write(num3);
		fout.write("\n");
		fout.write(num4);
		fout.write("\n");
		fout.write(num5);
		
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