<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String name = request.getParameter("name");
	String age = request.getParameter("age");
	String address = request.getParameter("address");
	String email = request.getParameter("email");
	String birth = request.getParameter("birth");
	String[] hobby = request.getParameterValues("hobby");
	String hobbylist ="";
	for(String str : hobby){
		hobbylist += str+" ";
	}
	String sex = request.getParameter("sex");
	String lunch = request.getParameter("lunch");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paramInfo_ex.jsp</title>
</head>
<body>
이름 :<%=name%><br>
나이 :<%=age%><br>
주소 :<%=address%><br>
이메일 :<%=email%><br>
생일 :<%=birth%><br>
취미 :<%=hobbylist%><br>
성별 :<%=sex%><br>
점심메뉴 :<%=lunch%><br>

</body>
</html>