package day0122_exam;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

public class GetMessageListService {
	
	MessageDao messageDao;
	
	public GetMessageListService() {
		messageDao = MessageDao.getInstance();
	}
	public ArrayList<MessageDto> getListMessage(MessageDto messageDto) {
		try(Connection conn = MyConn.getConn()) {
			return messageDao.selectMegList(conn);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	
}
