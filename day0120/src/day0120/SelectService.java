package day0120;

import java.sql.Connection;
import java.sql.SQLException;

public class SelectService {	
	
	//역할구분을 해주려고 writeService 클래스를 다시만들어줌.
	//방명록에 글을 쓰는 기능이 구현되어야 하는 아이.
	MessageDao messageDao;
	
	public SelectService() {
		messageDao = MessageDao.getInstance();
	}
	public MessageDto selectMessage(MessageDto messageDto) {
		try(Connection conn = MyConn.getConn()) {
			return messageDao.select(conn, messageDto);
			
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
