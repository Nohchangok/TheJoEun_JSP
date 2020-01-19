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
	String id = "root";
	String pwd = "mysql";
	String url = "jdbc:mysql://192.168.0.107:3306/book_db?charactorEncoding=UTF-8&serverTimezone=Asia/Seoul";
	
	Connection conn = null;
	PreparedStatement pst = null;
	
	//?로 표시되는 건 테이블명이나, 컬럼명은 안됨.
	//오로지 값만 됨.
	String query = "insert into books(title,publisher,price,year) values(?,?,?,?)";
	
	try {
		conn =DriverManager.getConnection(url, id, pwd);
		pst = conn.prepareStatement(query);
		pst.executeUpdate();
		System.out.println("삽입 성공");
	
	
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		try {
			if(pst != null)	pst.close();
			if(conn != null) conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



%>