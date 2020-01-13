<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
웹 프로젝트의 시작화면
<%
   //web.xml에서 설정한 context파람은 application객체에서 받아볼 수 있다.
   //웹에서 필요한 중요정보를 셋팅하는데 쓴다.
   //String t = application.getInitParameter("showFlag");
   //out.print(t);
   
   //파일받아서 if로 true면 hello출력 false면 bye출력
   String str = application.getInitParameter("newFlag");
   if(str.equals("true")){
	   out.print("hello");
   }else{
	   out.print("bye");
   }
%>
</body>
</html>