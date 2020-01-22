package day0122_exam;

import java.sql.Connection;
import java.sql.SQLException;

public class WriteMessageService {	
	
	MessageDao messageDao;
	
	public WriteMessageService() {
		messageDao = MessageDao.getInstance();
	}
	public void writeService(MessageDto messageDto) {
		try(Connection conn = MyConn.getConn()) {
			messageDao.insertMsg(conn, messageDto);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
}
