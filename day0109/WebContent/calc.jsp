<%@page import="java.util.Arrays"%>
<%@page import="com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calc.jsp</title>
<style type="text/css">
	.fc_r{color:red}
</style>
</head>
<body>

<%! //메소드
	public int sum(int ranNum, int ranNum2){
	return ranNum+ranNum2;
	}
	
	public int sub(int ranNum, int ranNum2){
	return ranNum-ranNum2;
	}
	
	public int mul(int ranNum, int ranNum2){
	return ranNum*ranNum2;
	}
	
	public int div(int ranNum, int ranNum2){
	return ranNum/ranNum2;
	}
	
	public int rem(int ranNum, int ranNum2){
	return ranNum%ranNum2;
	}
	
	//1-10까지 sum;
	public int from(){
		int sum = 0;
		for(int i =1; i<11; i++){
			sum += i;
		}
	return sum;
	}	
	
	public Set lotto(){
		Set<Integer> set = new HashSet<Integer>();
			
		while(set.size()<6){
			int random =(int)(Math.random()*45)+1;
			set.add(random);
		}

		return set;
	}

		
%>

<table border ="1">
	<tr>
	<%	Set<Integer> lottoNums = lotto();
		for(int num : lottoNums){%>
			<td><%=num%></td>		
		<%}%>
	</tr>

</table>


<table>

	<%for(int i= 0; i <= 8; i++){%>
		<tr>
		<%for(int j =1; j <=5; j++){%>
			<td <%=(lottoNums.contains(j+i*5)? "class='fc_r'":"") %>><%=j+i*5%></td>			
		<%}%>
		</tr>
	<%}%>
	
</table>	


</body>
</html>