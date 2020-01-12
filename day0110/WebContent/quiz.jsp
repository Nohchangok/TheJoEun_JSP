<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 	
	//파라미터 전송시에는 반드시 인코딩 변경을 해줘야한다.
	//폼에 method를 method="post" 했을 경우 한글이 깨지기 때문에 인코딩 변경을 해줘야한다.
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	
	String str1 = request.getParameter("ans1");
	int ans1 = 0;
	if(str1 != null && !str1.equals("")){
		ans1 = Integer.parseInt(str1.trim());
	}
	
	int ans2 = 0;
	String str2 = request.getParameter("ans2");
	if(str2 != null && !str2.equals("")){
		ans2 = Integer.parseInt(str2.trim());
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz.jsp</title>
</head>
<body>
<form action ="quiz.jsp" method="post">
	당신의 이름은? <input type="text" name="name"><br>
	<input type="text" name="ans1"> X <input type="text" name="ans2"><br>은? 300이다.
	
	<input type="submit" value="전송">
	
	<%
	if(name != null && !name.equals("")){
		if(ans1*ans2 == 300){
			out.print(name+"님!!");
			out.print("정답!");			
		}else{
			out.print(name+"님!!");
			out.print("오답!");
		}
	}
	%>
</form>
</body>
</html>