package day0117;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConn {
	//디비 로드하는 곳.
	public static Connection getConn() throws ClassNotFoundException, SQLException {
		
		//com.mysql.cj.jdbc.Driver 패키지주소.
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url ="jdbc:mysql://localhost:3306/tj?serverTimezone=Asia/Seoul&characterEncoding=utf-8";
		String user ="root";
		String password ="mysql";
		Connection conn = DriverManager.getConnection(url, user, password);
		return conn;
	}
}
