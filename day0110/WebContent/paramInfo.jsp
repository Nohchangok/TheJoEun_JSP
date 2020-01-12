<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	//request.getParameter("이름")
	//name ="name"
	String name = request.getParameter("name");
	
	//name ="age"
	String age = request.getParameter("age");
	int ageNum = (age.equals("")? 0: Integer.parseInt(age))+10;
	
	//name ="address"
	String address = request.getParameter("address");
	
	//name ="sex"
	String sex = request.getParameter("sex");
		
	//name ="lang"
	String[] lang = request.getParameterValues("lang");
	String langStr = ""; //toString으로 작성했을때 대괄호가 있으므로. 이런방법도 있다.
	for(String s:lang){
		langStr += s+" ";
	}
	
	//name ="birth"
	String birth = request.getParameter("birth");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paramInfo.jsp</title>
</head>
<body>
여기가 파람인포다!!<br>
이름 : <%=name%><br>
나이 : <%=ageNum%><br>
주소 : <%=address%><br>
성별 : <%=sex%><br>
언어 : <%=langStr%><br>
생일 : <%=birth%><br>
</body>
</html>