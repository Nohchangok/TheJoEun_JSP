package day0117;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.protocol.Resultset;

//DB에서 데이터를 가져오는 역할.(CRUD)
public class MessageDao {
	
	//싱글톤
	private static MessageDao instance = new MessageDao();
	private MessageDao() {}
	public static MessageDao getInstance() {
		return instance;
	}
	
	public void insert(Connection conn, MessageDto messageDto) {
		String sql = "insert into guestbook(guest_name, message) value(?,?)";
		
		try(PreparedStatement pst =conn.prepareStatement(sql)){
			pst.setString(1, messageDto.getGuestName());
			pst.setString(2, messageDto.getMessage());
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public List<MessageDto> selectList(Connection conn) throws SQLException{
		List<MessageDto> messageList = new ArrayList<MessageDto>();
		//디비에서 select해서 list에 담고 그것을 반환하는 로직.
		
		String sql = "select message_id, guest_name, message, wdate from guestbook";
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			try(ResultSet rs = pst.executeQuery()){
				while(rs.next()) {
					MessageDto messageDto = new MessageDto(
							rs.getInt("message_id"),
							rs.getString("guest_name"),
							rs.getString("message"),
							rs.getTimestamp("wdate").toLocalDateTime()
							);
					messageList.add(messageDto);
				}
					
			}
		}
		
		return messageList;
	}
	
	//글하나 가져오는 메소드
	public MessageDto select(Connection conn, int messageId) throws SQLException {
		MessageDto messageDto = null;
		String sql ="select message_id, guest_name, message, wdate from guestbook where message_id=?";
		
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setInt(1, messageId);
			try(ResultSet rs = pst.executeQuery()){
				while(rs.next()) {
					messageDto= new MessageDto(							
							rs.getInt("message_id"),
							rs.getString("guest_name"),
							rs.getString("message"),
							rs.getTimestamp("wdate").toLocalDateTime()
							);
				}
			}
		}
		return messageDto;
		
	}

	//글 수정
	public void update(Connection conn, MessageDto messageDto) throws SQLException {
		
		String sql = "update guestbook set guest_name=?, message=?, wdate=? where message_id=?";
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setString(1, messageDto.getGuestName());
			pst.setString(2, messageDto.getMessage());
			pst.setTimestamp(3,Timestamp.valueOf(messageDto.getWdate()));
			pst.setInt(4, messageDto.getMessageId());
			pst.executeUpdate();
		}
		
	}

	public void delete(Connection conn, int messageId) throws SQLException {
		String sql = "delete from guestbook where message_id =?";
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setInt(1, messageId);
			pst.executeUpdate();
			System.out.println("삭제 완료");
		}
	}
}
