package day0122_exam;

import java.sql.Connection;
import java.sql.SQLException;

public class DeleteMessageService {	
	
	MessageDao messageDao;
	
	public DeleteMessageService() {
		messageDao = MessageDao.getInstance();
	}
	public void deleteService(MessageDto messageDto, int message_id) {
		try(Connection conn = MyConn.getConn()) {
			messageDao.deleteMsg(conn, message_id);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
}
