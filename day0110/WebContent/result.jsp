<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	//전달된 데이터를 int형태로 받는다.
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	String op = request.getParameter("Calc");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%! //메소드 선언.
	public int getSum(int num1, int num2){
		return num1+num2;
	}

	public int getSub(int num1, int num2){
		return num1-num2;
	}
	
	public int getMul(int num1, int num2){
		return num1*num2;
	}
	
	public int getDiv(int num1, int num2){
		return num1/num2;
	}
	
	public int getRem(int num1, int num2){
		return num1%num2;
	}
%>

<%
	if(op.equals("1")){//+
		//out.print(num1+num2);
		out.print(getSum(num1,num2));
	}else if(op.equals("2")){//-
		out.print(getSub(num1,num2));
	}else if(op.equals("3")){//*
		out.print(getMul(num1,num2));
	}else if(op.equals("4")){///
		out.print(getDiv(num1,num2));
	}else if(op.equals("5")){//%
		out.print(getRem(num1,num2));
	}
%>

</body>
</html>