package day0121;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class MessageListService {
	
	private MessageDao messageDao;
	
	static final int MESSAGE_COUNT_PER_PAGE = 3; //한 페이지당 보여줄 메세지 개수
	
	public MessageListService() {
		messageDao = MessageDao.getInstance();
	}
	
	//한 화면에 보여줄 MessageListView를 만들어 반환하는 메소드.
	public MessageListView getMessageListView(int pageNumber) {
		//dao, connection
		MessageListView messageListView =null;
		
		int currentPageNumber = pageNumber;
		try(Connection conn = MyConn.getConn()){
			//한페이지를 만들기 위한 데이터를 여기서 다 만들자.
			
			//전체 메세지 개수.
			int messageTotalCount = messageDao.selectCount(conn);
 			
			//메세지 리스트.
			List<MessageDto> messageList = null;
			int firstRow =0;
			int endRow =0;
			
			if(messageTotalCount > 0) {
				//현재번째 로우찾기.
				firstRow = (currentPageNumber -1)*MESSAGE_COUNT_PER_PAGE;
				
				//원하는 개수만큼 메세지리스트를 가져옴.
				messageList = messageDao.selectList(conn, firstRow, MESSAGE_COUNT_PER_PAGE);
			}else {
				currentPageNumber = 0; //현재 페이지 번호.
				
			}
			
			//MessageListView 생성자에 넣음.
			messageListView = new MessageListView(messageTotalCount, currentPageNumber, messageList, MESSAGE_COUNT_PER_PAGE, firstRow, endRow);
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return messageListView;
	}

}
