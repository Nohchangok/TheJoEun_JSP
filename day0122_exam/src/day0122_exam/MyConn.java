package day0122_exam;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConn {
	
	public static Connection getConn() throws ClassNotFoundException, SQLException {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url ="jdbc:mysql://localhost:3306/tj?serverTimezone=Asia/Seoul&characterEncoding=utf-8";
		String user ="root";
		String password ="mysql";
		Connection conn = DriverManager.getConnection(url, user, password);
		String a = " a  b ";
		a = a.replaceAll(" ","");
		System.out.println("a :"+a);
		return conn;
	}
	
}
