package day0122_exam;

import java.sql.Connection;
import java.sql.SQLException;

public class UpdateMessageService {	
	
	MessageDao messageDao;
	
	public UpdateMessageService() {
		messageDao = MessageDao.getInstance();
	}
	public void updateService(MessageDto messageDto, int message_id) {
		try(Connection conn = MyConn.getConn()) {
			messageDao.updateMsg(conn, messageDto, message_id);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
}
