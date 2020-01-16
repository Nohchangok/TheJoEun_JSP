<%@page import="java.util.ArrayList"%>
<%@page import="day0116.Employee"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//1. 드라이버 로드
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	String mysqlUrl = "jdbc:mysql://localhost:3306/tj?serverTimezone=Asia/Seoul&characterEncoding=utf-8";
	
	String user ="root";
	String pwd ="mysql";
	
	String query = "select emp_id,name,gender,position,salary,department_id,"+
					"ifnull(hire_date, '2000-01-01 00:00:00') as hire_date, ifnull(retire_date, '2000-01-01 00:00:00') as retire_date from employee";
			
	try{
		conn=DriverManager.getConnection(mysqlUrl, user, pwd);
		pst = conn.prepareStatement(query);
		rs = pst.executeQuery();
		ArrayList<Employee> empList = new ArrayList<Employee>();
		while(rs.next()){
			Employee emp = new Employee(
					rs.getInt("emp_id"),
					rs.getString("name"),
					rs.getString("gender"),
					rs.getString("position"),
					rs.getInt("salary"),
					rs.getInt("department_id"),
					rs.getTimestamp("hire_date").toLocalDateTime(),
					rs.getTimestamp("retire_date").toLocalDateTime());
			empList.add(emp);
		}
		request.setAttribute("empList", empList);
		
		//<jsp:forward page="view.jsp"/>를 자바코드로 아래처럼 쓴다.
		request.getRequestDispatcher("view.jsp").forward(request, response);
	}catch(SQLException e){
			e.printStackTrace();
	}finally{
		if(rs !=null) try{rs.close();} catch(SQLException e){}
		if(pst !=null) try{pst.close();} catch(SQLException e){}
		if(conn !=null) try{conn.close();} catch(SQLException e){}
		
	}
%>