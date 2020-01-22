package day0120;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

//디비에 데이터를 crud하는 메소드가 있음.

public class MessageDao {
	private static MessageDao instance = new MessageDao();
	private MessageDao() {}
	
	public static MessageDao getInstance() {
		return  instance;
	}
	//insert, update, select, delete, selectList
	
	//insert
	public void insert(Connection conn, MessageDto messageDto) throws SQLException {
		String sql = "insert into guestbook(guest_name, message, wdate)"
				+ "value(?,?,?)";
		
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			//쿼리 셋팅.
			pst.setString(1, messageDto.getGuestName());
			pst.setString(2, messageDto.getMessage());
			pst.setTimestamp(3, Timestamp.valueOf(messageDto.getWdate()));
			
			//쿼리 실행.
			pst.executeUpdate();
		}
	}

	//select
	
	//DB에 담는 클래스 MessageDto를 자료형으로 select메소드를 만든다.
	//MessageDto에 있는 속성을 이용하여 반환하기 때문.
	public MessageDto select(Connection conn, MessageDto messageDto) throws SQLException {
		String sql = "select message_id, guest_name, message, wdate from guestbook "
				+ "where message_id=?";
		
		
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			//쿼리문에 세팅.
			pst.setInt(1, messageDto.getMessageId());
			
			//결과를 rs에 담는다.
			try(ResultSet rs = pst.executeQuery()){
				MessageDto rsMessageDto = null;
				while(rs.next()){
					rsMessageDto = new MessageDto();
					rsMessageDto.setMessageId(rs.getInt("message_id"));
					rsMessageDto.setGuestName(rs.getString("guest_name"));
					rsMessageDto.setMessage(rs.getString("message"));
					rsMessageDto.setWdate(rs.getTimestamp("wdate").toLocalDateTime());
				}
				
				return rsMessageDto;
			}
		}
	}
	
	//update
	public void update(Connection conn, MessageDto messageDto) throws SQLException {
		String sql = "update guestbook set guest_name=?, message=?, wdate=?"
				+ "where message_id=?";
		
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setString(1, messageDto.getGuestName());
			pst.setString(2, messageDto.getMessage());
			pst.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
			pst.setInt(4, messageDto.getMessageId());
			
			pst.executeUpdate(); //()안에 sql을 넣으면 위에 pst로 세팅한 것이 초기화됨.
		}
	}

	//delete
	public void delete(Connection conn, MessageDto messageDto) throws SQLException {
		String sql ="delete from guestbook where message_id=?";
		
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setInt(1, messageDto.getMessageId());
			pst.executeUpdate();
		}
	}
	
	//총 개수를 가져오는 메소드(페이지네이션에 쓰기위해)
	public int selectCount(Connection conn) throws SQLException {
		String sql = "select count(*) from guestbook";
		try(Statement st = conn.createStatement(); 
				ResultSet rs = st.executeQuery(sql)){
			if(rs.next()) {
				return rs.getInt(1); //count(*)이랑 같음.
			}else {
				return 0;
			}
		}
	}
	
	//원하는 개수만큼 메세지리스트를 가져오는 메소드
	public List<MessageDto> selectList(Connection conn, int startRow, int cntRow) throws SQLException{
		String sql = "select message_id, guest_name, message, wdate from guestbook limit ?, ?";
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setInt(1, startRow);
			pst.setInt(2, cntRow);
			List<MessageDto> list = new ArrayList<MessageDto>();
			try(ResultSet rs = pst.executeQuery()){
				while(rs.next()) {
					list.add(new MessageDto(
							rs.getInt("message_id"),
							rs.getString("guest_name"),
							rs.getString("message"),
							rs.getTimestamp("wdate").toLocalDateTime()
							));
					
				}
				return list;
			}
			
			
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
