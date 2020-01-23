package day0122_exam;

import java.sql.Connection;
import java.sql.SQLException;

public class SelectMessageService {	
	
	MessageDao messageDao;
	
	public SelectMessageService() {
		messageDao = MessageDao.getInstance();
	}
	public MessageDto selectService(MessageDto messageDto, int message_id) {
		
		try(Connection conn = MyConn.getConn()) {
			messageDto = messageDao.selectMsg(conn, message_id);
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return messageDto;
	}
	
	
}
